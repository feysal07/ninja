using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HouseNinja.DAO
{
    public partial class siteuser
    {
        public static List<siteuser> getAllUsers()
        {
            return Global.Context.siteusers.ToList();
        }

        public static siteuser getUserById(long userId)
        {
            return Global.Context.siteusers.SingleOrDefault(u => u.userId == userId);
        }

        public static long getUserId(string email, string pass) {

            var userId =Convert.ToInt64( Global.Context.siteusers.Where(u => u.loginEmail == email && u.password == pass)
                .Select(u => new {u.userId }));

            return userId;
           

        }

        public static long createUser(siteuser usr)
        {
            long userId = 0;
           using(HomeNinja db =new HomeNinja()){

               db.siteusers.AddObject(usr);
               db.SaveChanges();
               userId = usr.userId;
           }
           return userId;

        }
    }
}