package com.homeninja.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

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
    public ModelAndView allBlog() {
        ModelAndView mv = new ModelAndView();
        mv.addObject("blogs", blogPostService.findAllBlogs());
                
        return mv;
    }    

    @RequestMapping(value = "/blogDetails", method = RequestMethod.POST)
    public ModelAndView blogDetails(@RequestParam(value="id", required=true) Long id) {
        ModelAndView mv = new ModelAndView("blogDetails");
        mv.addObject("blog", blogPostService.findBlogById(id));
        return mv;
    }

    @RequestMapping(value = "/blogPost", method = RequestMethod.GET)
    public ModelAndView blogPost(@RequestParam(value="status", required=false) Boolean status) {
        ModelAndView mv = new ModelAndView("blogPost");
        if(status!=null){
            mv.addObject("status", status.booleanValue());
        }
        return mv;
    }

    @RequestMapping(value = "/postBlog", method = RequestMethod.POST,
            consumes = MediaType.APPLICATION_JSON_VALUE)
    public String postBlog(@RequestBody String myObject, Model model) {
        Map modelMap = model.asMap();
        UserInfo userInfo = null;
        if (!modelMap.containsKey("userInfo")) {
            return "redirect:login";
        }else{
            userInfo = (UserInfo) modelMap.get("userInfo");
            if (userInfo.getLoggedIn() == null || !userInfo.getLoggedIn().equalsIgnoreCase("true")) {
                return "redirect:login";
            }
            Gson gson = new Gson();
            com.homeninja.gson.bean.BlogPost bean = gson.fromJson(myObject,
                    com.homeninja.gson.bean.BlogPost.class);
            boolean added = blogPostService.addBlog(BlogPost.create(bean, userInfo));
            return "redirect:blogPost?status="+added;
        }

    }

    @RequestMapping(value = "/tags", method = RequestMethod.GET)
    public @ResponseBody List<BlogTags> findAllTags() {
        return blogTagsService.findAllTags();
    }

}
