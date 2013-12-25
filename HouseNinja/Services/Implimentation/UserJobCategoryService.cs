using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HouseNinja.DAO;

namespace HouseNinja.Services.Implimentation
{
    public class UserJobCategoryService
    {

        public static void saveJobSubCatForUser(usersjobcatagory userjobcat)
        {
            usersjobcatagory.saveJobSubCatForUser(userjobcat);
           
        }
    }
}