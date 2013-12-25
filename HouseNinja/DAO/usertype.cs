using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HouseNinja.DAO
{
    public  partial class usertype
    {
        public static List<usertype> populateUserType() {

            return Global.Context.usertypes.ToList();
        }
    }
}