package com.homeninja.entities;

import javax.persistence.*;
import java.util.Date;

/**
 * @author Eugene Ustimenko
 * @date Oct 23, 2014
 */
@Entity
@Table(name = "blog_comments")
public class Comment {

    private long id;
    private String text;
    private SiteUsers user;
    private Date created;
    private Date modified;
    private BlogPost blog;

    private Comment(){}

    private Comment(String text, SiteUsers user, BlogPost blog) {
        this.text = text;
        this.user = user;
        this.blog = blog;
        this.created = new Date();
        this.modified = this.created;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Column(name = "comment")
    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "createdBy")
    public SiteUsers getUser() {
        return user;
    }

    public void setUser(SiteUsers user) {
        this.user = user;
    }

    @Column(name = "createdDate")
    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    @Column(name = "modifiedDate")
    public Date getModified() {
        return modified;
    }

    public void setModified(Date modified) {
        this.modified = modified;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "blogId")
    public BlogPost getBlog() {
        return blog;
    }

    public void setBlog(BlogPost blog) {
        this.blog = blog;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Comment comment = (Comment) o;

        if (id != comment.id) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return (int) (id ^ (id >>> 32));
    }

    public static Comment create(String text, SiteUsers user, BlogPost blog) {
        return new Comment(text, user, blog);
    }
}
