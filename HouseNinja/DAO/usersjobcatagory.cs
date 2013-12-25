using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HouseNinja.DAO
{
    public partial class usersjobcatagory
    {
        public static void saveJobSubCatForUser(usersjobcatagory userjobcat)
        {

            userjobcat.Save();
        }
    }
}