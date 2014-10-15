package com.homeninja.service;

import java.util.List;

import com.homeninja.entities.BlogTags;

/**
 * @author Eugene Ustimenko
 * @date Oct 15, 2014
 */
public interface BlogTagsService {
	
	void addBlogTags(BlogTags blogTags);
	void updateBlogTags(BlogTags blogTags);
	void removeBlogTags(BlogTags blogTags);
	List<BlogTags> findAllBlogs();
	BlogTags findBlogById(Long id);

}
