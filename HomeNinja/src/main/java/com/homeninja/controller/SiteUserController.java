package com.homeninja.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.homeninja.entities.SiteUsers;
import com.homeninja.entities.UserJobCategoryMap;
import com.homeninja.entities.UserJobSubCategoryMap;
import com.homeninja.service.GeoLocationService;
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
	
	@Resource
	private GeoLocationService geoLocationService;
	
	@RequestMapping(value = "/my-profile", method = RequestMethod.GET)
	public String getMyProfile(Model model) throws IOException {
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
		long userId=userInfo.getUserId();
		
		model.addAttribute("userDetails", getUserProfileByUserId(userId));
		return "myProfile";
	}
	
	@RequestMapping(value = "/profile", method = RequestMethod.POST)
	public String getProfile(@RequestParam(value = "userId",
            required = true) long userId,Model model) throws IOException {
		model.addAttribute("userDetails", getUserProfileByUserId(userId));
		return "user-public-profile";
	}
	
	
	private UserProfile getUserProfileByUserId(long userId){
		SiteUsers	userDetails= siteUserService.getSiteUsersById(userId);
		UserProfile userProfile=new UserProfile();
		// fill the view object
		userProfile.setUserId(userId);
		userProfile.setFirstName(userDetails.getFirstName());
		userProfile.setLastName(userDetails.getLastName());
		userProfile.setProfilPic(userDetails.getProfilPic());
		
		String userJobCat="";
		String userJobSubCat="";
		
		List<UserJobCategoryMap> userJobCatList=siteUserService.getUserJobCategories(userId);
		List<UserJobSubCategoryMap> userJobSubCatMap=siteUserService.getUserJobSubCategories(userId);
		for (UserJobCategoryMap userJobCategoryMap : userJobCatList) {
			userJobCat =userJobCat+","+userJobCategoryMap.getJobCategory().getJobCat()+",";
		}
		for(UserJobSubCategoryMap userJobSubCategoryMap:userJobSubCatMap){
			userJobSubCat=userJobSubCat+","+ userJobSubCategoryMap.getJobSubCategory().getJobSubCat()+",";
		}
		userJobCat=userJobCat.substring(0, userJobCat.lastIndexOf(","));
		userJobSubCat=userJobSubCat.substring(0, userJobSubCat.lastIndexOf(","));
		
		userProfile.setJobCategory(userJobCat);
		userProfile.setJobSubCategory(userJobSubCat);
		userProfile.setUserType(userDetails.getUserType());
		userProfile.setAboutMe(userDetails.getAboutMe());
		if(userDetails.getAddress() !=null){
		userProfile.setAddress(userDetails.getAddress().get(0).getAddress());
	    userProfile.setCity(geoLocationService.getCityById(userDetails.getAddress().get(0).getState()));
		userProfile.setState(geoLocationService.getStateById(userDetails.getAddress().get(0).getState()));
		}else{
			userProfile.setCity("NA");
			userProfile.setState("NA");
		}
		userProfile.setPincode(userDetails.getAddress().get(0).getPincode());

		return userProfile;
	}
	
	@RequestMapping(value = "/change-password", method = RequestMethod.GET)
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
	
	
	
	@RequestMapping(value = "/change-password", method = RequestMethod.POST,consumes = "application/json")
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
