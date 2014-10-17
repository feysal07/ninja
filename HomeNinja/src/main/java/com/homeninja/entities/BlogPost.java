package com.homeninja.entities;

import com.homeninja.vo.UserInfo;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "blogs")
public class BlogPost {

	private Long id;
	private String title;
	private Long author;
	private String content;
	private Integer commentCount;
	private Date createdDate;
	private Date modifiedDate;
//	private BlogTags tags;
	private Long tagId;

	@Column(name = "title")
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "author")
	public Long getAuthor() {
		return author;
	}

	public void setAuthor(Long author) {
		this.author = author;
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

//	@OneToOne(fetch = FetchType.LAZY)
//	@PrimaryKeyJoinColumn
//	public BlogTags getTags() {
//		return tags;
//	}
//
//	public void setTags(BlogTags tags) {
//		this.tags = tags;
//	}

	@Override
	public boolean equals(Object obj) {
		return this.id.equals(((BlogPost) obj).id);
	}

	@Override
	public int hashCode() {
		return id.hashCode();
	}
//
//	@GenericGenerator(name = "generator", strategy = "foreign", parameters = @Parameter(name = "property", value = "tags"))
//	@Id
//	@GeneratedValue(generator = "generator")
	@Column(name = "tagId")
	public Long getTagId() {
		return tagId;
	}

	public void setTagId(Long tagId) {
		this.tagId = tagId;
	}
	
	public static BlogPost create(com.homeninja.gson.bean.BlogPost bean, UserInfo info){
	    BlogPost post = new BlogPost();
        post.setAuthor(info.getUserId());
        post.setCommentCount(0);
        Date currentDate = new Date();
        post.setCreatedDate(currentDate);
        post.setModifiedDate(currentDate);
        post.setTitle(bean.title);
        post.setContent(bean.content);
        post.setTagId(!bean.tags.isEmpty() ? Long.valueOf(bean.tags) : null);
        return post;
	}

    public static BlogPost createNewBlog(String title, long author,
                                         String content, String tags){
        BlogPost post = new BlogPost();
        post.setAuthor(author);
        post.setCommentCount(0);
        Date currentDate = new Date();
        post.setCreatedDate(currentDate);
        post.setModifiedDate(currentDate);
        post.setTitle(title);
        post.setContent(content);
        post.setTagId(!tags.isEmpty() ? Long.valueOf(tags) : null);
        return post;

    }
}
