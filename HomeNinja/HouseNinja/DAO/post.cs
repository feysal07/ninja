using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HouseNinja.DAO
{
    public partial class post
    {
        public List<post> getAllPosts() {

            return Global.Context.posts.ToList();
        }

       
    }
}