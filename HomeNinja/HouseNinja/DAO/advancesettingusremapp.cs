using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HouseNinja.DAO
{
    public partial class advancesettingusremapp
    {
        public static void saveUserAdvSettingOpts(advancesettingusremapp advSetValues){

             advSetValues.Save();
        }
    }

}