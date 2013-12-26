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
       UserSearchService userSearch = new UserSearchService();
       private string strDDLDefaultValue = "---Select---";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //dropDownLoad();
            }
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
                    

                    siteuser objUser = new siteuser
                    {

                        //userType = Convert.ToInt32(ddlUserType.SelectedItem.Value),
                        loginEmail = faceBookUser.Email,
                        password = faceBookUser.Id,
                        firstName=faceBookUser.firstName,
                        lastName=faceBookUser.lastName,
                        userName=faceBookUser.UserName,
                        gender=faceBookUser.gender,
                        loginViaFB=true,
                        createdDate = System.DateTime.Now,
                        isActive = true,
                        userId = 0

                    };

                  
                    long userId = userService.createUser(objUser);


                    


                    //newUser=userService.CreateUser(newUser);
                    // get new created user in session
                    Session["userId"] = userId;
                    Response.Redirect("~/Webpages/register.aspx");


                }
            }
        }

        //private void dropDownLoad()
        //{

        //    var userTypes = userService.populateUserType();

        //    if (null != userTypes) {

               

        //        ddlUserType.DataSource = userTypes;
        //        ddlUserType.DataTextField = "userType1";
        //        ddlUserType.DataValueField = "id";
        //        ddlUserType.DataBind();
        //        ddlUserType.Items.Insert(0, strDDLDefaultValue);

        //    }
            
        //}

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
              
                //userType=Convert.ToInt32(ddlUserType.SelectedItem.Value),
                loginEmail=email,
                password = pass,
                createdDate=System.DateTime.Now,
                isActive = true,
                loginViaFB = false,
                userId=0
              
            };

          
            long userId= userService.createUser(objUser);
          
            //newUser=userService.CreateUser(newUser);
            // get new created user in session
            Session["userId"] = userId;
            Response.Redirect("~/Webpages/register.aspx");

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
