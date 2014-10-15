package com.homeninja.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.homeninja.entities.BlogTags;
import com.homeninja.service.BlogPostService;
import com.homeninja.service.BlogTagsService;

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
	public String postBlog(){
		return "blogPost";
	}
	
	@RequestMapping(value="/tags", method = RequestMethod.GET)
	public @ResponseBody List<BlogTags> findAllTags(){
		List<BlogTags> tags = new ArrayList<BlogTags>();
		tags = blogTagsService.findAllTags();
		return tags;
	}

}
