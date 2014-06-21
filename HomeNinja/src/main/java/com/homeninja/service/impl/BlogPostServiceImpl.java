package com.homeninja.service.impl;
/*
 * Copyright (c) 2008 - 2013 10gen, Inc. <http://10gen.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 

package com.homeninja.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.homeninja.dao.BlogPostDAO;
import com.homeninja.entites.BlogPost;
import com.homeninja.service.BlogPostService;
import com.mongodb.DBObject;

public class BlogPostServiceImpl implements BlogPostService {
	
	@Autowired
	public BlogPostDAO blogPostDAO;

	@Override
	public DBObject findByPermalink(String permalink) {
		// TODO Auto-generated method stub
		return blogPostDAO.findByPermalink(permalink);
	}

	@Override
	public List<DBObject> findByDateDescending(int limit) {
		// TODO Auto-generated method stub
		return blogPostDAO.findByDateDescending(limit);
	}

	@Override
	public List<DBObject> findByTagDateDescending(String tag) {
		// TODO Auto-generated method stub
		return blogPostDAO.findByTagDateDescending(tag);
	}

	@Override
	public void addBlog(BlogPost blogPost) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addPostComment(String name, String email, String body,
			String permalink) {
		// TODO Auto-generated method stub
		blogPostDAO.addPostComment(name, email, body, permalink);
	}
  
 
}
*/