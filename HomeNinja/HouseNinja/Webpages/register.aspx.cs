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
    public partial class register : System.Web.UI.Page
    {
        MasterDataService ms = new MasterDataService();
        UserService us = new UserService();
        UserAddressService usaddress = new UserAddressService();
        int userID = 0;
        private string strDDLDefaultValue = "---Select---";
        //private byte[] userImg;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session["userId"] != null)
                {
                    userID = Convert.ToInt32(Session["userId"]);

                    var user = us.getUserById(userID);
                    loadPersonlDetails(user);
                }

                loadDDlData();
            }
            else {
                if (Session["ImageBytes"] != null)
                {
                    //userImg = Convert.ToBase64CharArray( Session["ImageBytes"]);
                
                }
            
            }
        
        }

        private void loadDDlData()
        {
            ms.GetMasterValueByMenmonic("STATES_NAME");


        }

        private void loadPersonlDetails(siteuser user)
        {
            txtEmail.Value = user.loginEmail;
            txtfirstName.Value = user.userName;
            txtlastName.Value = user.userName;
            txtUserName.Value = user.userName;
            rdGender.SelectedValue = user.gender;
           


        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            var cities = ms.GetMasterValueByMenmonic("CITIES_NAME");

            if (cities != null)
            {
                ddlCities.DataSource = cities;
                ddlCities.DataTextField = "value";
                ddlCities.DataValueField = "masterDataId";
                ddlCities.DataBind();
                ddlCities.Items.Insert(0, strDDLDefaultValue);
            }

        }

        protected void updateBtn_Click(object sender, EventArgs e)
        {
            String email= txtEmail.Value.Trim();
            String fname =txtfirstName.Value.Trim();
            String lname=txtlastName.Value.Trim();
            String userName = txtUserName.Value.Trim();
            String qualification = txtQualification.Value.Trim();
            String nextProj = txtaboutNewProj.Value.Trim();
            String aboutMe = txtaboutMe.Value.Trim();
            String city = ddlCities.SelectedItem.Value;
            String state = ddlState.SelectedItem.Value;
            String contact=txtcontactNo.Value.Trim();
            String pin=txtPinCode.Value.Trim();
            siteuser objUser = new siteuser
            {

                //userType = Convert.ToInt32(rdUserType.SelectedValue),
                loginEmail = email,
                firstName =  fname,
                lastName =   lname,
                userName = userName,
                gender = rdGender.SelectedValue,
                qualification = qualification,
                aboutMe = aboutMe,
                modifiedDate=System.DateTime.Now,
                nextProject = nextProj,
                userId = userID,
               // profilPic = userImg,

            };

           addressdetail address = new addressdetail
           {
               city = city,
               modifiedDate=System.DateTime.Now,
               state=state,
               userId = userID,
               contactNo = contact,
               pincode=txtPinCode.Value.Trim()
              

           };

           // save data in search table 

           usersearch usrSearch = new usersearch
           {
               userId = userID,
               city = city,
               state = state,
               userName = fname +" " +lname,
               description = aboutMe,
               contactNo=contact,
               pincode = pin
           
           };

            //save user data in user search table
           usrSearch.saveUserInSearchTable(usrSearch);
           
            //add address object for current user
           objUser.addressdetails.Add(address);
           
           //save user data in user search table
           us.saveUser(objUser);
           
        }
        protected void btnPreview_Click(object sender, EventArgs e)
        {
            Session["ImageBytes"] = PhotoUpload.FileBytes;
            mainUserProfilePic.ImageUrl = "~/ImageHandler.ashx";
        }

    }
}