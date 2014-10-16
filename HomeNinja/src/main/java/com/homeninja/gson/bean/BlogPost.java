package com.homeninja.gson.bean;


/**
 * @author Eugene Ustimenko
 * @date Oct 16, 2014
 */
public class BlogPost {
	
	public final String content;
	public final String title;
	public final String tags;
	
	public BlogPost(String content, String title, String tags) {
		super();
		this.content = content;
		this.title = title;
		this.tags = tags;
	}
	
}
