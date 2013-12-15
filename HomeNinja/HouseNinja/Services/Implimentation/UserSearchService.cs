using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HouseNinja.DAO;
using HouseNinja.HelpingEntities;

namespace HouseNinja.Services.Implimentation
{
    public class UserSearchService
    {
        usersearch usearch = new usersearch();
        public void saveUserInSearchTable(usersearch usrSearch)
        {
            usearch.saveUserInSearchTable(usrSearch);
        }

        public List<usersearch> getAlluser()
        {
            return usearch.getAlluser();
        }

        public List<usersearch> getFilteredUsers(UserSearch userPram)
        {
            return usearch.getFilteredUsers(userPram);
        }
    }
}