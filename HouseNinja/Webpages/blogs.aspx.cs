using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HouseNinja.DAO;
using HouseNinja.Services.Implimentation;

namespace HouseNinja.Webpages
{
    public partial class blogs : System.Web.UI.Page
    {
         int userId = 0;
        PostDataService pds = new PostDataService();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] != null)
            {
                 userId = Convert.ToInt32(Session["userId"]);
            }

            loadAllPosts();
        }

        private void loadAllPosts()
        {
 	        //throw new NotImplementedException();


            pds.getAllPosts();
        }

        protected void editQuestionSubmitBtn_Click(object sender, EventArgs e)
        {
            post newpost = new post
            {

               postTitle  = txtEditQuestionBody.Value.Trim(),
               postAuthor= 1,
               postContent = txtEditQuestionTitle.Value.Trim(),
               postType = ddlPostType.SelectedValue,
               postDate = System.DateTime.Now,
               id=0
            };
            
            pds.CreateNewPost(newpost);   
        }

        

      }
    }
