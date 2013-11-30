using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HouseNinja.DAO;
using HouseNinja.Services.Implimentation;

namespace HouseNinja.Webpages.CustomControls
{
    public partial class Header : System.Web.UI.UserControl
    {
       UserService userService = new UserService();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string user = txtUserName.Value.Trim();
            string pass=txtPassword.Value.Trim();
            long usrId= userService.UserExist(user, pass);
            Session["userId"] = usrId;
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            string email=emails.Value.Trim();
            string pass = passs.Value.Trim();
            
            
            
            
            siteuser objUser = new siteuser
            {
              
                userType=Convert.ToInt32(rdUserType.SelectedValue),
                loginEmail=email,
                password = pass,
                createdDate=System.DateTime.Now,
                isActive = true,
                userId=0
              
            };

          
           long userId= userService.CreateUser(objUser);
          
            //newUser=userService.CreateUser(newUser);
            // get new created user in session
            Session["userId"] = userId;
            Response.Redirect("~/Webpages/registration.aspx");

        }
    }
    }
