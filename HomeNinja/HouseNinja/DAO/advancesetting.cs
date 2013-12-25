using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HouseNinja.DAO
{
    public partial class advancesetting
    {
        public static List<advancesetting> getAllAdvOptions() {

            return Global.Context.advancesettings.ToList();
        }
    }
}