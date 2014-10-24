package com.homeninja.dao.impl;

import com.homeninja.dao.BlogPostDAO;
import com.homeninja.entities.BlogPost;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.List;

@Service
@Transactional
public class BlogPostDAOImpl implements BlogPostDAO {

	@Resource
	private SessionFactory sessionFactory;

    @PersistenceContext(unitName = "entityManager")
    private EntityManager entityManager;

	@Override
	public boolean save(BlogPost blogPost) {
        try {
            return null!=this.sessionFactory.getCurrentSession().save(blogPost);
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
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
	public List<BlogPost> getAllBlogs(int from, int till) {
        TypedQuery<BlogPost> query = entityManager.createQuery("from " +
                "BlogPost", BlogPost.class);
        query.setMaxResults(till);
        query.setFirstResult(from>1?from*till:0);
        return query.getResultList();
	}

	@Override
	public BlogPost getBlogById(Long id) {
		Query query = this.sessionFactory.getCurrentSession().createQuery(
				"from BlogPost where id=:id");
		query.setParameter("id", id);
		List<BlogPost> list = query.list();
		return !list.isEmpty() ? list.get(0) : null;
	}

    @Override
    public long getBlogsNumber() {
        TypedQuery<Long> query = entityManager.createQuery("select count" +
                "(*) from BlogPost", Long.class);
        return query.getSingleResult();
    }

}
