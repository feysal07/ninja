using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HouseNinja.DAO;
using HouseNinja.HelpingEntities;
using HouseNinja.Services.Implimentation;

namespace HouseNinja.Webpages.MasterPage
{
    public partial class Site : System.Web.UI.MasterPage
    {
        //Event in MasterPage
       // public event EventHandler Search_Submit;

        UserSearchService usearch = new UserSearchService();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void txtSearch_Click(object sender, EventArgs e)
        //{

        //    //string searchText = txtSearch.Text.Trim();
        //    //hdnSearchText.Value = searchText;

        //    //UserSearch userPram = new UserSearch();
        //    //List<usersearch> users = null;
        //    //userPram.searchType = "basic";

        //    //users = usearch.getFilteredUsers(userPram);

        //    //rptUsers.DataSource = users;
        //    //rptUsers.DataBind();

        //}
    }
}