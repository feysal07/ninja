package com.homeninja.dao.impl;

import com.homeninja.dao.CommentDAO;
import com.homeninja.entities.Comment;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import java.util.List;

/**
 * @author Eugene Ustimenko
 * @date Oct 23, 2014
 */
@Service
@Transactional
public class CommentDAOImpl implements CommentDAO {

    @PersistenceContext(unitName = "entityManager")
    private EntityManager entityManager;

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public boolean save(Comment comment) {
        try {
            return null!=sessionFactory.getCurrentSession().save(comment);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public void update(Comment comment) {
        entityManager.merge(comment);

    }

    @Override
    public void remove(Comment comment) {
        entityManager.remove(comment);
    }

    @Override
    public List<Comment> getAllComments(Long blogId) {
        TypedQuery<Comment> query = entityManager.createQuery("from " +
                "Comment c where c.id=:id", Comment.class);
        query.setParameter("id", blogId);
        return query.getResultList();
    }

    @Override
    public Comment getCommentById(Long id) {

        Query query = entityManager.createQuery(
                "from Comment where id=:id");
        query.setParameter("id", id);
        List<Comment> list = query.getResultList();
        return !list.isEmpty() ? list.get(0) : null;

    }

    @Override
    public Long getCommentsNumber(int blogId) {
        TypedQuery<Long> query = entityManager.createQuery("select count" +
                "(*) from Comment c where c.blog.id= :id", Long.class);
        query.setParameter("id", blogId);
        return query.getSingleResult();
    }
}
