package com.homeninja.service;

import java.util.List;

import com.homeninja.entities.BlogPost;


public interface BlogPostService{
	boolean addBlog(BlogPost blogPost);
	void updateBlog(BlogPost blogPost);
	void removeBlog(BlogPost blogPost);
	List<BlogPost> findAllBlogs();
	BlogPost findBlogById(Long id);
}
