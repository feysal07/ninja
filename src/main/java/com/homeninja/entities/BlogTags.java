package com.homeninja.entities;

import javax.persistence.*;

/**
 * @author Eugene Ustimenko
 * @date Oct 14, 2014
 */
@Entity
@Table(name = "blog_tags")
public class BlogTags {

	private Long id;
	private String tags;
	private BlogPost blogPost;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id")
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Column(name = "tags")
	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}

	@OneToOne(fetch = FetchType.LAZY, mappedBy = "tags", cascade = CascadeType.ALL)
	public BlogPost getBlogPost() {
		return blogPost;
	}

	public void setBlogPost(BlogPost blogPost) {
		this.blogPost = blogPost;
	}
	
	@Override
	public boolean equals(Object obj) {
		return this.id.equals(((BlogTags)obj).id);
	}
	
	@Override
	public int hashCode() {
		return id.hashCode();
	}

}
