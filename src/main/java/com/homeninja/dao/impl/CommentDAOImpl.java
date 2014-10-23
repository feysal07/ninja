package com.homeninja.dao.impl;

import com.homeninja.dao.CommentDAO;
import com.homeninja.entities.Comment;
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

    @Override
    public boolean save(Comment comment) {
        try {
            entityManager.persist(comment);
            return true;
        } catch (Exception e) {
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
    public List<Comment> getAllComments(int from, int till) {
        TypedQuery<Comment> query = entityManager.createQuery("from " +
                "Comment", Comment.class);
        query.setMaxResults(till);
        query.setFirstResult(from * till);
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
