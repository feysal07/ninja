using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HouseNinja.DAO;

namespace HouseNinja.Services.Implimentation
{
    public class UserService
    {
        public long CreateUser(siteuser siteUser)
        {
            siteUser.Save();
            string email = siteUser.loginEmail;
            string pass = siteUser.password;

            return siteuser.getUserId(email, pass);
        }

        public siteuser getUserById(long id)
        {

            return siteuser.getUserById(id);
        }

        public long UserExist(string email, string pass)
        {
            return siteuser.getUserId(email, pass);
        }
    }
}