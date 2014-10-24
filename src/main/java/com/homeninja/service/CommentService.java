package com.homeninja.service;

import com.homeninja.entities.BlogPost;
import com.homeninja.entities.Comment;

import java.util.List;

/**
 * @author Eugene Ustimenko
 * @date Oct 23, 2014
 */
public interface CommentService {

    boolean save(Comment comment, BlogPost post);
    void update(Comment comment);
    void remove(Comment comment);
    List<Comment> getAllComments(Long blogId);
    Comment getCommentById(Long id);
    Long getCommentsNumber(int blogId);
}
