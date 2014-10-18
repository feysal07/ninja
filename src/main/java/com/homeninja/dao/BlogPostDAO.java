package com.homeninja.dao;

import com.homeninja.entities.BlogPost;

import java.util.List;

public interface BlogPostDAO {
	
	boolean save(BlogPost blogPost);
	void update(BlogPost blogPost);
	void remove(BlogPost blogPost);
	List<BlogPost> getAllBlogs(int from, int till);
	BlogPost getBlogById(Long id);
    long getBlogsNumber();
}
