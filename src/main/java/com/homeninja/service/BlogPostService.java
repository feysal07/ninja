package com.homeninja.service;

import com.homeninja.entities.BlogPost;

import java.util.List;


public interface BlogPostService{
	boolean addBlog(BlogPost blogPost);
	void updateBlog(BlogPost blogPost);
	void removeBlog(BlogPost blogPost);
	List<BlogPost> findAllBlogs(int pageNumber);
    long getPageCount();
	BlogPost findBlogById(Long id);
}
