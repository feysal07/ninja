package com.homeninja.controller;

import java.io.IOException;
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
import com.homeninja.entities.JobSubCategory;
import com.homeninja.entities.Jobs;
import com.homeninja.entities.JobsSubCategoryMap;
import com.homeninja.entities.MessageLimits;
import com.homeninja.helping.entities.JobSearchCriteria;
import com.homeninja.service.GeoLocationService;
import com.homeninja.service.JobCategoryService;
import com.homeninja.service.JobPostService;
import com.homeninja.vo.UserInfo;

@Controller
@SessionAttributes("userInfo")
public class JobPostController {
	@Resource
	public JobPostService jobPostService;

	@Resource
	public JobCategoryService jobCategoryService;

	@Resource
	public GeoLocationService geoLocationService;

	private static final Logger logger = LoggerFactory
			.getLogger(JobPostController.class);

	// private JobPostDAO jobPostDao;
	@RequestMapping(value = "/jobs", method = RequestMethod.GET)
	public String jobPost(Model model) throws IOException {
		logger.debug("inside Register Method");
		
		Map modelMap = model.asMap();
		
		if(!modelMap.containsKey("userInfo")){
			return "login";
		}
		
		if(modelMap.containsKey("userInfo")){
			UserInfo userInfo = (UserInfo)modelMap.get("userInfo");
			if(userInfo.getLoggedIn() == null){
				return "login";
			}
			else if(!userInfo.getLoggedIn().equalsIgnoreCase("true")){
				return "login";
			}
		}
		return "jobPost";
	}

	@RequestMapping(value = "/postJob", method = RequestMethod.POST, consumes = "application/json")
	public @ResponseBody
	String doJobPost(HttpServletRequest req, @RequestBody String myObject)
			throws IOException {
		logger.debug("inside doRegister Method");
		Gson gson = new Gson();
		Date currentDate = new Date();
		Jobs jobPost = gson.fromJson(myObject, Jobs.class);
		jobPost.setPostBy(1);// TODO: take id from session
		jobPost.setPostDate(currentDate);
		jobPost.setMaxRequestReached(false); 
		List<JobsSubCategoryMap> objList = new ArrayList<JobsSubCategoryMap>();
		for (int jobSubCatId : jobPost.getJobSubCatIds()) {
			JobsSubCategoryMap obj = new JobsSubCategoryMap(jobSubCatId);
			objList.add(obj);

		}
		jobPost.setJobsSubCategoryMap(objList);

		boolean flag = jobPostService.saveOrUpdatePostedJob(jobPost);

		if (flag) {
			return "allJobPost";
		} else {
			return "jobPost";
		}
	}

	@RequestMapping(value = "/getJobSubCatByJobCatId", method = RequestMethod.GET)
	public @ResponseBody
	Set<JobSubCategory> getCitiesForState(
			@RequestParam(value = "jobCatId", required = true) long jobCatId) {
		logger.debug("finding all job sub categories for job category id");
		Set<JobSubCategory> jobSubCategory = new HashSet<JobSubCategory>();

		jobSubCategory = jobCategoryService
				.getJobSubCategoryByJobCatId(jobCatId);
		return jobSubCategory;
	}

	@RequestMapping(value = "/allJob", method = RequestMethod.GET)
	public String getAllPostedJobs(Model model) throws IOException {
		// jobPostDao=new JobPostDAO();
		List<Jobs> jobPosts = jobPostService.getAllPostedJobs();
		model.addAttribute("jobPosts", jobPosts);
		return "allJobPost";
	}
	@RequestMapping(value = "/searchJob", method = RequestMethod.GET)
	@ResponseBody
	public List<Jobs>  searchJob(HttpServletRequest req, @RequestBody String myObject) throws IOException {
		Gson gson=new Gson();
		JobSearchCriteria jobSearchCriteria = gson.fromJson(myObject, JobSearchCriteria.class);
		return jobPostService.getJobPostByCriteria(jobSearchCriteria);
	}
	
	@RequestMapping(value="/messageMaxLimit",method=RequestMethod.GET)
	@ResponseBody
	public List<MessageLimits> getMessageLimits(Model model){
		return  jobPostService.getMessageLimits();
	}
	
	
	@RequestMapping(value="/sendMessage",method=RequestMethod.GET)
	@ResponseBody
	public String sendMessage(Model model,@RequestBody String myObject){
		int jobId=Integer.parseInt(myObject);
		//TODO:Need to implement Message Gateway.
		//add a message count to job
		return  jobPostService.sendMessage(jobId);
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
