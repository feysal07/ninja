package com.homeninja.dao;

import java.util.List;

import com.homeninja.entities.BlogPost;

public interface BlogPostDAO {
	
	void save(BlogPost blogPost);
	void update(BlogPost blogPost);
	void remove(BlogPost blogPost);
	List<BlogPost> getAllBlogs();
	BlogPost getBlogById(Long id);

}
