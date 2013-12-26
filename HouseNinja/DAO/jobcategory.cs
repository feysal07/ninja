using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HouseNinja.DAO
{
    public partial class jobcategory
    {

        public static List<jobcategory> getCategories()
        {
            return Global.Context.jobcategories.ToList();
        }
        public static List<jobcategory> getCategoriesByUserType(int userTypeId)
        {
            return Global.Context.jobcategories.Where(u => u.userTypeId == userTypeId).ToList();
        }
    }
}