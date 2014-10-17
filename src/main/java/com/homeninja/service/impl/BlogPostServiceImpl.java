package com.homeninja.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.homeninja.dao.BlogPostDAO;
import com.homeninja.entities.BlogPost;
import com.homeninja.service.BlogPostService;

@Service
public class BlogPostServiceImpl implements BlogPostService {

	@Autowired
	public BlogPostDAO dao;

	@Override
	public boolean addBlog(BlogPost blogPost) {
		return dao.save(blogPost);
	}

	@Override
	public void updateBlog(BlogPost blogPost) {
		dao.update(blogPost);
	}

	@Override
	public void removeBlog(BlogPost blogPost) {
		dao.remove(blogPost);
	}

	@Override
	public List<BlogPost> findAllBlogs() {
		return dao.getAllBlogs();
	}

	@Override
	public BlogPost findBlogById(Long id) {
		return dao.getBlogById(id);
	}

}
