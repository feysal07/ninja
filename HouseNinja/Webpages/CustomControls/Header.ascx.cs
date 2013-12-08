using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPSnippets.FaceBookAPI;
using HouseNinja.DAO;
using HouseNinja.HelpingEntities;
using HouseNinja.Services.Implimentation;

namespace HouseNinja.Webpages.CustomControls
{
    public partial class Header : System.Web.UI.UserControl
    {
       UserService userService = new UserService();
        protected void Page_Load(object sender, EventArgs e)
        {

            FaceBookConnect.API_Key = "266386026803426";
            FaceBookConnect.API_Secret = "d1b241e2b9f0854ba2bdcfc64ce93f69";
            if (!IsPostBack)
            {
                if (Request.QueryString["error"] == "access_denied")
                {
                    //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('User has denied access.')", true);
                    return;
                }

                string code = Request.QueryString["code"];
                if (!string.IsNullOrEmpty(code))
                {
                    string data = FaceBookConnect.Fetch(code, "me");
                    FaceBookUser faceBookUser = new JavaScriptSerializer().Deserialize<FaceBookUser>(data);
                    faceBookUser.PictureUrl = string.Format("https://graph.facebook.com/{0}/picture", faceBookUser.Id);
                    //pnlFaceBookUser.Visible = true;
                    //lblId.Text = faceBookUser.Id;
                    //lblUserName.Text = faceBookUser.UserName;
                    //lblName.Text = faceBookUser.Name;
                    //lblEmail.Text = faceBookUser.Email;
                    //ProfileImage.ImageUrl = faceBookUser.PictureUrl;
                    btnLogin.Enabled = false;
                }
            }
        }

        protected void Login(object sender, EventArgs e)
        {
            FaceBookConnect.Authorize("user_photos,email", Request.Url.AbsoluteUri.Split('?')[0]);
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

    //public class FaceBookUser
    //{
    //    public string Id { get; set; }
    //    public string Name { get; set; }
    //    public string UserName { get; set; }
    //    public string PictureUrl { get; set; }
    //    public string Email { get; set; }
    //}

 }
