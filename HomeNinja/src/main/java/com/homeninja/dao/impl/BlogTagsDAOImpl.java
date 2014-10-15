package com.homeninja.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.homeninja.dao.BlogTagsDAO;
import com.homeninja.entities.BlogTags;

/**
 * @author Eugene Ustimenko
 * @date Oct 15, 2014
 */
@Service
@Transactional
public class BlogTagsDAOImpl implements BlogTagsDAO {

	@Resource
	private SessionFactory sessionFactory;

	@Override
	public void save(BlogTags blogTags) {
		sessionFactory.getCurrentSession().save(blogTags);
	}

	@Override
	public void update(BlogTags blogTags) {
		sessionFactory.getCurrentSession().update(blogTags);
	}

	@Override
	public void remove(BlogTags blogTags) {
		sessionFactory.getCurrentSession().delete(blogTags);
	}

	@Override
	public List<BlogTags> getAllBlogs() {
		Query query = this.sessionFactory.getCurrentSession().createQuery(
				"select id, tags from BlogTags");
		List<BlogTags> posts = query.list();
		return posts;
	}

	@Override
	public BlogTags getBlogById(Long id) {
		Query query = this.sessionFactory.getCurrentSession().createQuery(
				"from BlogTags where id=:id");
		query.setParameter("id", id);
		List<BlogTags> list = query.list();
		return !list.isEmpty() ? list.get(0) : null;
	}

}
