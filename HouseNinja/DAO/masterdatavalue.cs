using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HouseNinja.DAO
{
    public partial class masterdatavalue
    {
        public static IQueryable<masterdatavalue> getDropDownValues(string mnemonic)
        {
            return Global.Context.masterdatavalues.Where(u => u.mnemonic == mnemonic);
        }
    }
}