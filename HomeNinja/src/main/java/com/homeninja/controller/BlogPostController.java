package com.homeninja.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("userInfo")
public class BlogPostController {
	
	@RequestMapping(value = "/allBlogs", method = RequestMethod.GET)
	public String allBlog(){
		return "allBlogs";
	}
	
	@RequestMapping(value = "/blogDetails", method = RequestMethod.GET)
	public String blogDetails(){
		return "blogDetails";
	}
	
	

}
