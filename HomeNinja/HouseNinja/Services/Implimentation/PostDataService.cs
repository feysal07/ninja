using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HouseNinja.DAO;

namespace HouseNinja.Services.Implimentation
{
    public class PostDataService
    {
        public void CreateNewPost(post newpost)
        {
            newpost.Save();
        }
    }
}