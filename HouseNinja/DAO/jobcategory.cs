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
    }
}