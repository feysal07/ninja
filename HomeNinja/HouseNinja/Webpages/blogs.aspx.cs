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

            loadAllDropDownList();
            loadAllPosts();
        }

        private void loadAllDropDownList()
        {
            List<posttype> allPostTypes = null;

            allPostTypes = pds.getAllPostTypes();

            if (allPostTypes != null)
            {

                ddlPostType.DataSource = allPostTypes;
                ddlPostType.DataTextField = "postType";
                ddlPostType.DataValueField = "id";
                ddlPostType.DataBind();
                
            }
        }

        private void loadAllPosts()
        {
 	       


          List<post> posts=  pds.getAllPosts();
          rptBlogs.DataSource = posts;
          rptBlogs.DataBind();
                
        }

        protected void editQuestionSubmitBtn_Click(object sender, EventArgs e)
        {
            post newpost = new post
            {

               postTitle  = txtEditQuestionBody.Value.Trim(),
               postAuthor= 1,
               postContent = txtEditQuestionTitle.Value.Trim(),
               postType = Convert.ToInt32(ddlPostType.SelectedItem.Value),
               postDate = System.DateTime.Now,
               id=0
            };
            
            pds.CreateNewPost(newpost);
            loadAllPosts();
        }

        

      }
    }
