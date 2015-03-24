package com.homeninja.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.homeninja.entities.JobCategory;
import com.homeninja.entities.JobSubCategory;
import com.homeninja.entities.Jobs;
import com.homeninja.entities.JobsSubCategoryMap;
import com.homeninja.entities.MessageLimits;
import com.homeninja.helping.entities.GeoLocation;
import com.homeninja.helping.entities.JobSearchCriteria;
import com.homeninja.helping.entities.MyJobs;
import com.homeninja.service.EmailService;
import com.homeninja.service.GeoLocationService;
import com.homeninja.service.JobCategoryService;
import com.homeninja.service.JobPostService;
import com.homeninja.service.SiteUserService;
import com.homeninja.service.TwilioSmsService;
import com.homeninja.vo.UserInfo;
import com.twilio.sdk.TwilioRestException;

@Controller
@SessionAttributes("userInfo")
public class JobPostController {
    @Resource
    public JobPostService jobPostService;

    @Resource
    public JobCategoryService jobCategoryService;

    @Resource
    public GeoLocationService geoLocationService;

    @Resource
    public TwilioSmsService twilioSmsService;

    @Resource
    public EmailService emailService;

    @Resource
    public SiteUserService siteUserService;

    private static final Logger logger = LoggerFactory.getLogger(JobPostController.class);

    // private JobPostDAO jobPostDao;
    @RequestMapping(value = "/jobs", method = RequestMethod.GET)
    public String jobPost(Model model) throws IOException {
        logger.debug("inside Register Method");
        String isLogin = "true";
        Map modelMap = model.asMap();
        UserInfo userInfo = null;
        if (!modelMap.containsKey("userInfo")) {
            isLogin = "false";
        }

        if (modelMap.containsKey("userInfo")) {
            userInfo = (UserInfo) modelMap.get("userInfo");
            if (userInfo.getLoggedIn() == null) {
                isLogin = "false";
            } else if (!userInfo.getLoggedIn().equalsIgnoreCase("true")) {
                isLogin = "false";
            }
        }

        model.addAttribute("isLogin", isLogin);
        return "jobPost";
    }

    @RequestMapping(value = "/post-job", method = RequestMethod.POST, consumes = "application/json")
    public @ResponseBody
    String doJobPost(HttpServletRequest req, @RequestBody String myObject, Model model) throws IOException {
        logger.debug("inside doRegister Method");
        Map modelMap = model.asMap();
        UserInfo userInfo = null;
        if (!modelMap.containsKey("userInfo")) {
            return "login";
        }

        if (modelMap.containsKey("userInfo")) {
            userInfo = (UserInfo) modelMap.get("userInfo");
            if (userInfo.getLoggedIn() == null) {
                return "login";
            } else if (!userInfo.getLoggedIn().equalsIgnoreCase("true")) {
                return "login";
            }
        }

        Gson gson = new Gson();
        Date currentDate = new Date();
        Jobs jobPost = gson.fromJson(myObject, Jobs.class);
        jobPost.setPostBy(userInfo.getUserId());
        jobPost.setPostDate(currentDate);
        jobPost.setMaxRequestReached(false);

        // get geolocation by address
        GeoLocation geoLocation = geoLocationService.getGeoLocation(jobPost.getLocation());
        if (null != geoLocation) {
            jobPost.setLatitude(geoLocation.getLat());
            jobPost.setLongitude(geoLocation.getLng());
        }
        List<JobsSubCategoryMap> objList = new ArrayList<JobsSubCategoryMap>();
        for (int jobSubCatId : jobPost.getJobSubCatIds()) {
            JobsSubCategoryMap obj = new JobsSubCategoryMap(jobSubCatId);
            objList.add(obj);

        }
        jobPost.setJobsSubCategoryMap(objList);

        boolean flag = jobPostService.saveOrUpdatePostedJob(jobPost);

        model.addAttribute("status", flag);
        return "jobPost";
    }

    @RequestMapping(value = "/getJobSubCatByJobCatId", method = RequestMethod.GET)
    public @ResponseBody
    Set<JobSubCategory> getCitiesForState(@RequestParam(value = "jobCatId", required = true) long jobCatId) {
        logger.debug("finding all job sub categories for job category id");
        Set<JobSubCategory> jobSubCategory = new HashSet<JobSubCategory>();

        jobSubCategory = jobCategoryService.getJobSubCategoryByJobCatId(jobCatId);
        return jobSubCategory;
    }

    @RequestMapping(value = "/my-job", method = RequestMethod.GET)
    public String getAllPostedJobs(Model model) throws IOException {
        Map modelMap = model.asMap();
        UserInfo userInfo = null;
        if (!modelMap.containsKey("userInfo")) {
            return "login";
        }

        if (modelMap.containsKey("userInfo")) {
            userInfo = (UserInfo) modelMap.get("userInfo");
            if (userInfo.getLoggedIn() == null) {
                return "login";
            } else if (!userInfo.getLoggedIn().equalsIgnoreCase("true")) {
                return "login";
            }
        }
        List<Jobs> jobPosts = jobPostService.getAllPostedJobsByMe(userInfo.getUserId());
        List<MyJobs> myJobs = new ArrayList<MyJobs>();
        int count = 1;
        for (Jobs jobs : jobPosts) {
            MyJobs mjob = new MyJobs();

            mjob.setsNo(count);
            mjob.setJobId(Double.toString(jobs.getId()));
            mjob.setJobTitle(jobs.getTitle());
            mjob.setJobDetails(jobs.getJobDetails());
            JobCategory jobCat = jobPostService.getJobCategoryById(jobs.getJobCategoryId());
            if (null != jobCat) {
                mjob.setJobCategory(jobCat.getJobCat());
            }
            String maxLimitReach = "No";
            String jobSubCategories = jobs.getJobSubCategories();
            jobSubCategories = jobSubCategories.substring(1, jobSubCategories.length());
            jobSubCategories = jobSubCategories.replace("-", ",");
            if (jobs.isMaxRequestReached()) {
                maxLimitReach = "Yes";
            }
            mjob.setJobSubCategory(jobSubCategories);
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String dateString = dateFormat.format(jobs.getPostDate());
            mjob.setMaxLimitReached(maxLimitReach);
            mjob.setPostDate(dateString);
            myJobs.add(mjob);
            count++;
        }

        model.addAttribute("jobPosts", myJobs);
        return "myJobs";
    }

    @RequestMapping(value = "/searchJob", method = RequestMethod.GET)
    @ResponseBody
    public List<Jobs> searchJob(HttpServletRequest req, @RequestBody String myObject) throws IOException {
        Gson gson = new Gson();
        JobSearchCriteria jobSearchCriteria = gson.fromJson(myObject, JobSearchCriteria.class);
        return jobPostService.getJobPostByCriteria(jobSearchCriteria);
    }

    @RequestMapping(value = "/messageMaxLimit", method = RequestMethod.GET)
    @ResponseBody
    public List<MessageLimits> getMessageLimits(Model model) {
        return jobPostService.getMessageLimits();
    }

    @RequestMapping(value = "/sendMessage", method = RequestMethod.POST)
    @ResponseBody
    public String sendMessage(Model model, @RequestBody String myObject) {
        long jobId = Long.parseLong(myObject);

        Map modelMap = model.asMap();
        UserInfo userInfo = null;
        if (!modelMap.containsKey("userInfo")) {
            model.addAttribute("logged", false);
            return "login";
        }

        if (modelMap.containsKey("userInfo")) {
            userInfo = (UserInfo) modelMap.get("userInfo");
            if (userInfo.getLoggedIn() == null) {
                model.addAttribute("logged", false);
                return "login";
            } else if (!userInfo.getLoggedIn().equalsIgnoreCase("true")) {
                model.addAttribute("logged", false);
                return "login";
            }
        }

        model.addAttribute("logged", true);

        if (jobPostService.availableToSendMessage(jobId)) {
            if (userInfo.getUserType() == 2) {

                Long jobUserId = jobPostService.whoPostTheJob(jobId);
                String userPhoneNo = siteUserService.getUserPhoneNo(jobUserId);
                String contractorPhoneNo = siteUserService.getUserPhoneNo(userInfo.getUserId());
                String textMessage =
                    "Hello,I'm " + userInfo.getUserName() + " interested in your requirnment,"
                            + "Please find my contact no:- " + contractorPhoneNo;
                try {
                    twilioSmsService.sentSms(userPhoneNo, textMessage);
                } catch (TwilioRestException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }

                String contractorEmailAddres = siteUserService.getUserLoginEmailAddress(userInfo.getUserId());
                try {
                    emailService.sendInterestEmail(contractorEmailAddres, textMessage);
                    return "email-sent";
                } catch (IOException e) {
                    e.printStackTrace();
                }

            } else {
                return "not-contractor";
            }
        } else {
            return "not-available";
        }

        return "not-sent";
    }

    @RequestMapping(value = "/job-details", method = RequestMethod.POST)
    public String getJobDetailsById(HttpServletRequest req,
            @RequestParam(value = "jobId", required = true) long jobId, Model model) {
        // long jobId=Long.parseLong(myObject);
        Jobs job = jobPostService.getJobPostById(jobId);
        job.setStrJobCategory(jobCategoryService.getJobCategoryById(job.getJobCategoryId()).getJobCat());
        job.setStrCity(geoLocationService.getCityById(job.getCity()));
        job.setStrState(geoLocationService.getStateById(job.getState()));
        model.addAttribute("jobDetails", job);
        return "jobDetails";
    }
}
