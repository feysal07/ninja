package com.homeninja.service.impl;

import com.homeninja.dao.BlogPostDAO;
import com.homeninja.dao.CommentDAO;
import com.homeninja.entities.BlogPost;
import com.homeninja.entities.Comment;
import com.homeninja.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Eugene Ustimenko
 * @date Oct 23, 2014
 */
@Service
public class CommentServiceImpl implements CommentService{

    @Autowired
    private CommentDAO dao;

    @Autowired
    private BlogPostDAO blogPostDAO;

    @Override
    public boolean save(Comment comment, BlogPost post) {
        boolean saved = dao.save(comment);
        if(saved){
            post.setCommentCount(post.getCommentCount()+1);
            blogPostDAO.update(post);
        }

        return saved;
    }

    @Override
    public void update(Comment comment) {
        dao.update(comment);
    }

    @Override
    public void remove(Comment comment) {
        dao.remove(comment);
    }

    @Override
    public List<Comment> getAllComments(Long blogId) {
        return dao.getAllComments(blogId);
    }

    @Override
    public Comment getCommentById(Long id) {
        return dao.getCommentById(id);
    }

    @Override
    public Long getCommentsNumber(int blogId) {
        return dao.getCommentsNumber(blogId);
    }
}
