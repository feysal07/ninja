package com.homeninja.controller;

import com.homeninja.entities.BlogPost;
import com.homeninja.entities.BlogTags;
import com.homeninja.entities.Comment;
import com.homeninja.entities.SiteUsers;
import com.homeninja.service.BlogPostService;
import com.homeninja.service.BlogTagsService;
import com.homeninja.service.CommentService;
import com.homeninja.service.SiteUserService;
import com.homeninja.vo.UserInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
@SessionAttributes("userInfo")
public class BlogPostController {

    private static final Logger logger = LoggerFactory
            .getLogger(BlogPostController.class);

    @Resource
    private BlogPostService blogPostService;

    @Resource
    private BlogTagsService blogTagsService;

    @Resource
    private SiteUserService siteUserService;

    @Resource
    private CommentService commentService;

    @RequestMapping(value = "/allBlogs", method = RequestMethod.GET)
    public ModelAndView allBlog(@RequestParam(value = "pageNumber",
            required = true, defaultValue = "1") String pageNumber) {
        ModelAndView mv = new ModelAndView("allBlogs");
        mv.addObject("blogs", blogPostService.findAllBlogs(Integer
                .valueOf(pageNumber)));
        mv.addObject("pageNumber", blogPostService.getPageCount());

        return mv;
    }

    @RequestMapping(value = "/pageChanged", method = RequestMethod.GET)
    public ModelAndView blogList(@RequestParam(value = "pageNumber",
            required = true, defaultValue = "1") int pageNumber) {
        ModelAndView mv = new ModelAndView("blogList");
        mv.addObject("blogs", blogPostService.findAllBlogs(pageNumber));
        mv.addObject("pageNumber", blogPostService.getPageCount());

        return mv;
    }


    @RequestMapping(value = "/blogDetails", method = RequestMethod.POST)
    public ModelAndView blogDetails(@RequestParam(value = "id",
            required = true) Long id, Model model) {
        ModelAndView mv = new ModelAndView("blogDetails");
        mv.addObject("blog", blogPostService.findBlogById(id));
        Map modelMap = model.asMap();
        if (!modelMap.containsKey("userInfo")) {
            mv.addObject("logged", false);
        } else {
            UserInfo userInfo = (UserInfo) modelMap.get("userInfo");
            if (userInfo.getLoggedIn() == null || !userInfo.getLoggedIn().equalsIgnoreCase("true")) {
                mv.addObject("logged", false);
            }
            mv.addObject("logged", true);
            mv.addObject("username", userInfo.getUserName());
            mv.addObject("email", userInfo.getUserEmailId());
        }
        return mv;
    }

    @RequestMapping(value = "/blogPost", method = RequestMethod.GET)
    public ModelAndView blogPost(@RequestParam(value = "status", required = false) Boolean status) {
        ModelAndView mv = new ModelAndView("blogPost");
        if (status != null) {
            mv.addObject("status", status.booleanValue());
        }
        return mv;
    }

    @RequestMapping(value = "/postBlog", method = RequestMethod.POST)
    public ModelAndView postBlog(@RequestParam(value = "title",
            required = true) String title, @RequestParam(value = "blogContent",
            required = true) String content, @RequestParam(value = "tags",
            required = true) String tags, Model model) {
        ModelAndView mv = new ModelAndView();
        Map modelMap = model.asMap();
        UserInfo userInfo = null;
        if (!modelMap.containsKey("userInfo")) {
            mv.setViewName("login");
        } else {
            userInfo = (UserInfo) modelMap.get("userInfo");
            if (userInfo.getLoggedIn() == null || !userInfo.getLoggedIn()
                    .equalsIgnoreCase("true") || 5!=userInfo.getUserType()) {
                mv.setViewName("login");
            }else{
                /*SiteUsers author = siteUserService.getSiteUsersById(userInfo
                        .getUserId());*/
                BlogTags blogTags = null;
                if (!tags.isEmpty()) {
                    blogTags = blogTagsService.findBlogById(Long.valueOf(tags));
                }
                boolean added = blogPostService.addBlog(BlogPost.createNewBlog
                        (title, userInfo.getUserId(), content, blogTags));
                mv.setViewName("blogPost");
                mv.addObject("status", added);
            }
        }
        return mv;

    }

    @RequestMapping(value = "/tags", method = RequestMethod.GET)
    public
    @ResponseBody
    List<BlogTags> findAllTags() {
        return blogTagsService.findAllTags();
    }

    @RequestMapping(value = "/postComment", method = RequestMethod.POST)
    public ModelAndView postComment(Model model,
                                    @RequestParam(value = "message",
                                            required = true) String
                                            message, @RequestParam(value =
            "blog", required = true) Long id) {
        ModelAndView mv = new ModelAndView();
        Map modelMap = model.asMap();
        UserInfo userInfo = null;
        if (!modelMap.containsKey("userInfo")) {
            mv.setViewName("login");
        } else {
            userInfo = (UserInfo) modelMap.get("userInfo");
            if (userInfo.getLoggedIn() == null || !userInfo.getLoggedIn().equalsIgnoreCase("true")) {
                mv.setViewName("login");
            }

            SiteUsers user = siteUserService.getSiteUsersById(userInfo
                    .getUserId());
            BlogPost blog = blogPostService.findBlogById(id);
            Comment comment = Comment.create(message, user, blog);
            boolean saved = commentService.save(comment, blog);
            model.addAttribute("saved", saved);
            model.addAttribute("blog", blogPostService.findBlogById(id));
            mv.setViewName("comments");
        }

        return mv;
    }
}
