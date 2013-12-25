using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using HouseNinja.DAO;
using HouseNinja.HelpingEntities;
using HouseNinja.Services.Implimentation;


namespace HouseNinja.Webpages
{
    public partial class search : System.Web.UI.Page
    {
        UserSearchService usearch = new UserSearchService();
        MasterDataService mstData = new MasterDataService();
        private string strDDLDefaultValue = "---Select---";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {

                loadDataAbouUser();
                bindAllDropDowns();
            
            }
        }


        private void bindAllDropDowns()
        {
          List<masterdatavalue> mstStatesValues=  mstData.GetMasterValueByMenmonic("STATES_NAME");

          if (mstStatesValues != null)
          {
              ddlState.DataSource = mstStatesValues;
              ddlState.DataTextField = "value";
              ddlState.DataValueField = "masterDataId";
              ddlState.DataBind();
              ddlState.Items.Insert(0, strDDLDefaultValue);
          }



        }

        private void loadDataAbouUser()
        {
            List<usersearch> users = usearch.getAlluser();

            rptUsers.DataSource = users;
            rptUsers.DataBind();
        }

        protected void bindCities(object sender, EventArgs e)
        {
            int stateId = Convert.ToInt32(ddlState.SelectedValue.ToString());
            List<masterdatavalue> mstCitiesValues = mstData.GetCitiesByStateId(stateId);

            if (mstCitiesValues != null)
            {
                ddlCity.DataSource = mstCitiesValues;
                ddlCity.DataTextField = "value";
                ddlCity.DataValueField = "masterDataId";
                ddlCity.DataBind();
                ddlCity.Items.Insert(0, strDDLDefaultValue);
            }
          
        }

        protected void proSearchBtn_Click(object sender, EventArgs e)
        {
            UserSearch userPram = new UserSearch();
            List<usersearch> users = null;
            userPram .city= ddlCity.SelectedValue.ToString();
            userPram.state = ddlState.SelectedValue.ToString();
            userPram.name= txtUserName.Value.Trim();
            userPram.pincode = txtZipCode.Value.Trim();
            userPram.searchType = "basic";
            
            users = usearch.getFilteredUsers(userPram);

            rptUsers.DataSource = users;
            rptUsers.DataBind();

            

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //string strSearch=

                 HiddenField myObject;
                 myObject = (HiddenField)Master.FindControl("hdnSearchText");
                 string strSearch = myObject.Value;





        }

      
    }
}