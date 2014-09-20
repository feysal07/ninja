package com.homeninja.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.homeninja.entities.SiteUsers;
import com.homeninja.entities.UserJobCategoryMap;
import com.homeninja.entities.UserJobSubCategoryMap;
import com.homeninja.service.SiteUserService;
import com.homeninja.utils.Utils;
import com.homeninja.vo.ChangePasswordVO;
import com.homeninja.vo.UserInfo;
import com.homeninja.vo.UserProfile;

@Controller
@SessionAttributes("userInfo")
public class SiteUserController {
	
	@Resource
	private SiteUserService siteUserService;
	
	@RequestMapping(value = "/myProfile", method = RequestMethod.GET)
	public String getAllPostedJobs(Model model) throws IOException {
		Map modelMap = model.asMap();
		UserInfo userInfo=null;
		if(!modelMap.containsKey("userInfo")){
			return "login";
		}
		
		if(modelMap.containsKey("userInfo")){
			userInfo = (UserInfo)modelMap.get("userInfo");
			if(userInfo.getLoggedIn() == null){
				return "login";
			}
			else if(!userInfo.getLoggedIn().equalsIgnoreCase("true")){
				return "login";
			}
		}
		
		SiteUsers	userDetails= siteUserService.getSiteUsersById(userInfo.getUserId());
		UserProfile userProfile=new UserProfile();
		// fill the view object
		
		userProfile.setFirstName(userDetails.getFirstName());
		userProfile.setLastName(userDetails.getLastName());
		userProfile.setProfilPic(userDetails.getProfilPic());
		
		String userJobCat="";
		String userJobSubCat="";
		
		List<UserJobCategoryMap> userJobCatList=userDetails.getUserJobCategoryMap();
		List<UserJobSubCategoryMap> userJobSubCatMap=userDetails.getUserJobSubCategoryMap();
		for (UserJobCategoryMap userJobCategoryMap : userJobCatList) {
			//userJobCat =userJobCat+","+userJobCategoryMap.getJobCategory().getJobCat()+",";
		}
		for(UserJobSubCategoryMap userJobSubCategoryMap:userJobSubCatMap){
			//userJobSubCat=userJobSubCat+","+ userJobSubCategoryMap.getJobSubCategory()+",";
		}
		userJobCat=userJobCat.substring(0, userJobCat.lastIndexOf(","));
		userJobSubCat=userJobSubCat.substring(0, userJobSubCat.lastIndexOf(","));
		
		userProfile.setJobCategory(userJobCat);
		userProfile.setJobSubCategory(userJobSubCat);
		userProfile.setUserType(userDetails.getUserType());
		userProfile.setAboutMe(userDetails.getAboutMe());
		//userProfile.setAddress(userDetails.getAddress().getAddress());
		//userProfile.setCity(userDetails.getAddress().getCity());
		//userProfile.setState(userDetails.getAddress().getState());
		//userProfile.setPincode(userDetails.getAddress().getPincode());
		model.addAttribute("userDetails", userDetails);
		return "myProfile";
	}

	
	@RequestMapping(value = "/changePassword", method = RequestMethod.GET)
	public String changePassword(Model model){
		Map modelMap = model.asMap();
		UserInfo userInfo=null;
		if(!modelMap.containsKey("userInfo")){
			return "login";
		}
		if(modelMap.containsKey("userInfo")){
			userInfo = (UserInfo)modelMap.get("userInfo");
			if(userInfo.getLoggedIn() == null){
				return "login";
			}
			else if(!userInfo.getLoggedIn().equalsIgnoreCase("true")){
				return "login";
			}
		}
		model.addAttribute("changePass", new ChangePasswordVO());
		return "changePassword";
	}
	
	
	
	@RequestMapping(value = "/changePassword", method = RequestMethod.POST,consumes = "application/json")
	@ResponseBody
	public String changePassword(@RequestBody String myObject,Model model) throws Exception{
		//ModelAndView mav = new ModelAndView();
		Map modelMap = model.asMap();
		UserInfo userInfo=null;
		if(!modelMap.containsKey("userInfo")){
			return "login";
			 //mav.setViewName("login");
		}
		
		if(modelMap.containsKey("userInfo")){
			userInfo = (UserInfo)modelMap.get("userInfo");
			if(userInfo.getLoggedIn() == null){
				return "login";
			}
			else if(!userInfo.getLoggedIn().equalsIgnoreCase("true")){
				return "login";
			}
		}
		
		
		Gson gson=new Gson();
		ChangePasswordVO newPassword=gson.fromJson(myObject,ChangePasswordVO.class);
		
		SiteUsers user= siteUserService.getSiteUsersById(userInfo.getUserId());
		
		if(user.getPassword().equalsIgnoreCase(Utils.md5Encryption(newPassword.getOldPassword()))){
			user.setPassword(Utils.md5Encryption(newPassword.getNewPassword()));
		}
		
		boolean flag=siteUserService.updateUser(user);
		
		if (flag) {
			model.addAttribute("status", "true");
			
		} else {
			model.addAttribute("status", "false");
			
		}
		
		return "changePassword";
		
	}
	
}
