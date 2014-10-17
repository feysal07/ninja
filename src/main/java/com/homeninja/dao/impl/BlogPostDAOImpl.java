package com.homeninja.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.homeninja.dao.BlogPostDAO;
import com.homeninja.entities.BlogPost;

@Service
@Transactional
public class BlogPostDAOImpl implements BlogPostDAO {

	@Resource
	private SessionFactory sessionFactory;

	@Override
	public boolean save(BlogPost blogPost) {
		return null!=this.sessionFactory.getCurrentSession().save(blogPost);
	}

	@Override
	public void update(BlogPost blogPost) {
		this.sessionFactory.getCurrentSession().update(blogPost);
	}

	@Override
	public void remove(BlogPost blogPost) {
		this.sessionFactory.getCurrentSession().delete(blogPost);
	}

	@Override
	public List<BlogPost> getAllBlogs() {
		Query query = this.sessionFactory.getCurrentSession().createQuery(
				"from BlogPost");
		List<BlogPost> posts = query.list();
		return posts;
	}

	@Override
	public BlogPost getBlogById(Long id) {
		Query query = this.sessionFactory.getCurrentSession().createQuery(
				"from BlogPost where id=:id");
		query.setParameter("id", id);
		List<BlogPost> list = query.list();
		return !list.isEmpty() ? list.get(0) : null;
	}

}
