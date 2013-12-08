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
        int userId = 0;
        private string strDDLDefaultValue = "---Select---";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] != null)
            {
                userId = Convert.ToInt32(Session["userId"]);

                var user = us.getUserById(userId);
                loadPersonlDetails(user);
            }

            loadDDlData();
        }

        private void loadDDlData()
        {
            ms.GetMasterValueByMenmonic("STATES_NAME");


        }

        private void loadPersonlDetails(siteuser user)
        {
            txtemail.Value = user.loginEmail;
            txtfirstName.Value = user.userName;
            txtlastName.Value = user.userName;

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
            siteuser suser = new siteuser();


        }
        protected void btnPreview_Click(object sender, EventArgs e)
        {
            Session["ImageBytes"] = PhotoUpload.FileBytes;
            mainUserProfilePic.ImageUrl = "~/ImageHandler.ashx";
        }

    }
}