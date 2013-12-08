using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HouseNinja.DAO
{
    public partial class posttype
    {
        public List<posttype> getAllPostTypes()
        {

            return Global.Context.posttypes.ToList();
        }
    }
}