using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HouseNinja.DAO;

namespace HouseNinja.Services.Implimentation
{
    public class PostDataService
    {
        post objPost = new post();
        posttype objPostType = new posttype();
        public void CreateNewPost(post newpost)
        {
            newpost.Save();
        }

        public  List<post> getAllPosts()
        {
           return objPost.getAllPosts();

        }

        public List<posttype> getAllPostTypes() {

            return objPostType.getAllPostTypes();

        }
    }
}