package com.homeninja.dao;

import java.util.List;

import com.homeninja.entities.BlogTags;

/**
 * @author Eugene Ustimenko
 * @date Oct 15, 2014
 */
public interface BlogTagsDAO {
	
	void save(BlogTags blogTags);
	void update(BlogTags blogTags);
	void remove(BlogTags blogTags);
	List<BlogTags> getAllBlogs();
	BlogTags getBlogById(Long id);

}
