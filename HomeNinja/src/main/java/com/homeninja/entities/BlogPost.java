package com.homeninja.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name = "blogs")
public class BlogPost implements Serializable{

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String title;
    private String author;
    private String content;
    private Integer commentCount;
    private Date createdDate;
    private Date modifiedDate;
   	private BlogTags tags;
    private Long tagId;
    private List<Comment> comments = new ArrayList<Comment>();

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "blog")
    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    @Column(name = "title")
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

   
   

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Column(name = "content")
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Column(name = "commentCount")
    public Integer getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(Integer commentCount) {
        this.commentCount = commentCount;
    }

    @Column(name = "createdDate")
    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    @Column(name = "modifiedDate")
    public Date getModifiedDate() {
        return modifiedDate;
    }

    public void setModifiedDate(Date modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

	@OneToOne(fetch = FetchType.EAGER)
	@PrimaryKeyJoinColumn
	public BlogTags getTags() {
		return tags;
	}

	public void setTags(BlogTags tags) {
		this.tags = tags;
	}

    @Override
    public boolean equals(Object obj) {
        return this.id.equals(((BlogPost) obj).id);
    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }

    @GenericGenerator(name = "generator", strategy = "foreign",
            parameters = @Parameter(name = "property", value = "tags"))
    @Column(name = "tagId")
    public Long getTagId() {
        return tagId;
    }

    public void setTagId(Long tagId) {
        this.tagId = tagId;
    }



    public static BlogPost createNewBlog(String title, String author,
                                         String content, BlogTags tags) {
        BlogPost post = new BlogPost();
        post.setAuthor(author);
        post.setCommentCount(0);
        Date currentDate = new Date();
        post.setCreatedDate(currentDate);
        post.setModifiedDate(currentDate);
        post.setTitle(title);
        post.setContent(content);
        post.setTagId(tags.getId());
        return post;

    }

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}
}
