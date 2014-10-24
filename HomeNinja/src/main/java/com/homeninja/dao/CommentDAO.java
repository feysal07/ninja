package com.homeninja.dao;

import com.homeninja.entities.Comment;

import java.util.List;

/**
 * @author Eugene Ustimenko
 * @date Oct 23, 2014
 */
public interface CommentDAO {

    boolean save(Comment comment);
    void update(Comment comment);
    void remove(Comment comment);
    List<Comment> getAllComments(Long blogId);
    Comment getCommentById(Long id);
    Long getCommentsNumber(int blogId);
}
