package com.homeninja.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.homeninja.dao.BlogTagsDAO;
import com.homeninja.entities.BlogTags;
import com.homeninja.service.BlogTagsService;

/**
 * @author Eugene Ustimenko
 * @date Oct 15, 2014
 */
@Service
public class BlogTagsServiceImpl implements BlogTagsService {

	@Autowired
	private BlogTagsDAO dao;

	@Override
	public void addBlogTags(BlogTags blogTags) {
		dao.save(blogTags);
	}

	@Override
	public void updateBlogTags(BlogTags blogTags) {
		dao.update(blogTags);
	}

	@Override
	public void removeBlogTags(BlogTags blogTags) {
		dao.remove(blogTags);
	}

	@Override
	public List<BlogTags> findAllTags() {
		return dao.getAllBlogs();
	}

	@Override
	public BlogTags findBlogById(Long id) {
		return dao.getBlogById(id);
	}

}
