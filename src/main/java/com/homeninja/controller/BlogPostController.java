package com.homeninja.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.homeninja.entities.BlogPost;
import com.homeninja.entities.BlogTags;
import com.homeninja.service.BlogPostService;
import com.homeninja.service.BlogTagsService;
import com.homeninja.vo.UserInfo;

@Controller
@SessionAttributes("userInfo")
public class BlogPostController {

	private static final Logger logger = LoggerFactory
			.getLogger(BlogPostController.class);

	@Resource
	private BlogPostService blogPostService;
	
	@Resource
	private BlogTagsService blogTagsService;

	@RequestMapping(value = "/allBlogs", method = RequestMethod.GET)
	public String allBlog() {
		return "allBlogs";
	}

	@RequestMapping(value = "/blogDetails", method = RequestMethod.GET)
	public String blogDetails() {
		return "blogDetails";
	}
	
	@RequestMapping(value = "/blogPost", method = RequestMethod.GET)
	public String blogPost() {
		return "blogPost";
	}
	
	@RequestMapping(value="/postBlog", method = RequestMethod.POST, consumes = "application/json")
	public String postBlog(HttpServletRequest req, @RequestBody String myObject,Model model){
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
		
		Gson gson = new Gson();
		BlogPost post = gson.fromJson(myObject, BlogPost.class);
		post.setAuthor(userInfo.getUserId());
		post.setCommentCount(0);
		Date currentDate = new Date();
		post.setCreatedDate(currentDate);
		post.setModifiedDate(currentDate);
		return "blogPost";
	}
	
	@RequestMapping(value="/tags", method = RequestMethod.GET)
	public @ResponseBody List<BlogTags> findAllTags(){
		List<BlogTags> tags = new ArrayList<BlogTags>();
		tags = blogTagsService.findAllTags();
		return tags;
	}

}
