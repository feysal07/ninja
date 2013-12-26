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
        private string strJobCategories = "";
        private string strJobSubCategories = "";
       
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
                loadCheckBoxData();
            }
            else {
                if (Session["ImageBytes"] != null)
                {
                    //userImg = Convert.ToBase64CharArray( Session["ImageBytes"]);
                
                }
            
            }
        
        }

        private void loadCheckBoxData()
        {
            var jobcategories = JobCategoryService.getCategories();
            var advSettingOpts = AdvanceSetingService.getAllAdvOptions();

            if (jobcategories != null)
            {
                chkJobCat.DataSource = jobcategories;
                chkJobCat.DataTextField = "jobCat";
                chkJobCat.DataValueField = "id";
                chkJobCat.DataBind();
                
            }

            if (advSettingOpts != null)
            { 
            
                
                chkAdvSettings.DataSource =advSettingOpts;
                chkAdvSettings.DataTextField = "fieldName";
                chkAdvSettings.DataValueField = "id";
                chkAdvSettings.DataBind();
            
            }



        }

        private void loadDDlData()
        {
         var states=    ms.GetMasterValueByMenmonic("STATES_NAME");
         if (states != null)
         {
             ddlState.DataSource = states;
             ddlState.DataTextField = "value";
             ddlState.DataValueField = "masterDataId";
             ddlState.DataBind();
             ddlState.Items.Insert(0, strDDLDefaultValue);
         }

        }

        private void loadPersonlDetails(siteuser user)
        {
            txtEmail.Value = user.loginEmail;
            txtfirstName.Value = user.userName;
            txtlastName.Value = user.userName;
            txtUserName.Value = user.userName;
            rdGender.SelectedValue = user.gender;
            hdnUserType.Value = user.userType.ToString();


        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {

            int stateId = Convert.ToInt32(ddlState.SelectedItem.Value);
            var cities = ms.GetCitiesByStateId(stateId);
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
            String nextProj = txtaboutNewProj.Value.Trim();
            String aboutMe = txtaboutMe.Value.Trim();
            int city = Convert.ToInt32(ddlCities.SelectedItem.Value);
            int state =  Convert.ToInt32(ddlState.SelectedItem.Value);
            String strCity = ddlCities.SelectedItem.Text;
            String strState = ddlState.SelectedItem.Text;
            String contact=txtcontactNo.Value.Trim();
            String pin=txtPinCode.Value.Trim();
            int userTypeId=Convert.ToInt32(hdnUserType.Value.Trim());

            siteuser objUser = new siteuser
            {

                //userType = Convert.ToInt32(rdUserType.SelectedValue),
                loginEmail = email,
                firstName =  fname,
                lastName =   lname,
                userName = userName,
                gender = rdGender.SelectedValue,
                aboutMe = aboutMe,
                modifiedDate=System.DateTime.Now,
                nextProject = nextProj,
                userId = userID,
                userType = userTypeId
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

          
            //add address object for current user
           objUser.addressdetails.Add(address);
           
           //save user data in user search table
           us.saveUser(objUser);

            //save data in user job categories detail table
           saveUserJobCategories();

           int [] advOpts=saveAdvSettingsDetails();
           if (advOpts.Sum() > 0)
           {

               advancesettingusremapp advUsrSetting = new advancesettingusremapp
               {
                   userId = userID,
                   newsLetters = advOpts[0]== 1 ? true:false,
                   publishAddress = advOpts[1] == 1 ? true : false,
                   publishContactNo = advOpts[2] == 1 ? true : false,

               };

               //save advance setting options
               us.saveAdvanceOptsSetting(advUsrSetting);
           }
            
           // save data in search table 
           usersearch usrSearch = new usersearch
           {
               userId = userID,
               city = strCity,
               state = strState,
               userName = fname + " " + lname,
               description = aboutMe,
               contactNo = contact,
               pincode = pin,
               jobCategories = Session["strJobCategories"].ToString(),
               jobSubCategories = Session["strJobSubCategories"].ToString(),
               userTypeId = userTypeId

            };

           //save user data in user search table
           usrSearch.saveUserInSearchTable(usrSearch);
           
           
        }
        protected void btnPreview_Click(object sender, EventArgs e)
        {
            Session["ImageBytes"] = PhotoUpload.FileBytes;
            mainUserProfilePic.ImageUrl = "~/ImageHandler.ashx";
        }

        protected void chkJobCat_SelectedIndexChanged(object sender, EventArgs e)
        {
            int lastSelectedIndex = 0;
            List<int> lastSelectedValue =new List<int>();
            foreach (ListItem listitem in chkJobCat.Items)
            {
                if (listitem.Selected)
                {
                    int thisIndex = chkJobCat.Items.IndexOf(listitem);

                    if (lastSelectedIndex <= thisIndex)
                    {
                        lastSelectedValue.Add(Convert.ToInt32(listitem.Value));
                        strJobCategories = strJobCategories + "-" + listitem.Text;                       
                    }
                }
            }

            Session["strJobCategories"] = strJobCategories;
            bindSubJobCategories(lastSelectedValue);
        }

        private void bindSubJobCategories( List<int> jobCatIds)
        {
            var jobSubcategories = JobCategoryService.getSubCategories(jobCatIds);

            if (jobSubcategories != null)
            {
                chkJobSubCat.DataSource = jobSubcategories;
                chkJobSubCat.DataTextField = "jobSubCat";
                chkJobSubCat.DataValueField = "id";
                chkJobSubCat.DataBind();
                // chkJobCat.Items.Insert(0, strDDLDefaultValue);
            }

            //throw new NotImplementedException();
        }

        protected void saveUserJobCategories()
        {
            int lastSelectedIndex = 0;
            List<int> lastSelectedValue = new List<int>();
            foreach (ListItem listitem in chkJobSubCat.Items)
            {
                if (listitem.Selected)
                {
                    int thisIndex = chkJobSubCat.Items.IndexOf(listitem);

                    if (lastSelectedIndex <= thisIndex)
                    {
                        //lastSelectedValue.Add(Convert.ToInt32(listitem.Value));

                        strJobSubCategories=strJobSubCategories+"-"+listitem.Text;
                        usersjobcatagory usrJobCat = new usersjobcatagory
                        {
                            jobSubCatId = Convert.ToInt32(listitem.Value),
                            userId=userID

                        };


                        UserJobCategoryService.saveJobSubCatForUser(usrJobCat);

                    }
                }
            }

            Session["strJobSubCategories"] = strJobSubCategories;
        }


        protected int[] saveAdvSettingsDetails()
        {
            int lastSelectedIndex = 0;
            int[] arrayAdvOpts=new int[3];


            List<int> lastSelectedValue = new List<int>();
            foreach (ListItem listitem in chkAdvSettings.Items)
            {
                if (listitem.Selected)
                {
                    int thisIndex = chkJobSubCat.Items.IndexOf(listitem);

                    if (lastSelectedIndex <= thisIndex)
                    {
                        arrayAdvOpts[lastSelectedIndex] = 1;
                    }
                }
            }

            return arrayAdvOpts;
        }









    }
}