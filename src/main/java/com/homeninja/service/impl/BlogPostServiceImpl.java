package com.homeninja.service.impl;

import com.homeninja.dao.BlogPostDAO;
import com.homeninja.entities.BlogPost;
import com.homeninja.service.BlogPostService;
import com.homeninja.utils.PropertyFileReader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;
import java.util.Properties;

@Service
public class BlogPostServiceImpl implements BlogPostService {

    private static final Logger logger = LoggerFactory
            .getLogger(BlogPostServiceImpl.class);

	@Autowired
	public BlogPostDAO dao;

	@Override
	public boolean addBlog(BlogPost blogPost) {
		return dao.save(blogPost);
	}

	@Override
	public void updateBlog(BlogPost blogPost) {
		dao.update(blogPost);
	}

	@Override
	public void removeBlog(BlogPost blogPost) {
		dao.remove(blogPost);
	}

	@Override
	public List<BlogPost> findAllBlogs(int pageNumber) {
		return dao.getAllBlogs(pageNumber, getDefaultPageSize());
	}

    private int getDefaultPageSize(){
        int blogsPerPage = 5;
        PropertyFileReader pfr = new PropertyFileReader();
        Properties properties = null;
        try {
            properties = pfr.getPropValues("blogs.properties");
        } catch (IOException e) {
            logger.error("The properties file path is invalid", e);
        }
        if(properties!=null){
            blogsPerPage = Integer.valueOf(properties.getProperty
                    ("blogsPerPage"));

        }

        return blogsPerPage;
    }

    @Override
    public long getPageCount() {
        return dao.getBlogsNumber()/getDefaultPageSize();
    }

    @Override
	public BlogPost findBlogById(Long id) {
		return dao.getBlogById(id);
	}

}
