using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HouseNinja.DAO
{
    public sealed class Global
    {
       
            public static HomeNinja Context
            {
                get
                {
                    string ocKey = "key_" + HttpContext.Current.GetHashCode().ToString("x");
                    if (!HttpContext.Current.Items.Contains(ocKey))
                        HttpContext.Current.Items.Add(ocKey, new HomeNinja());
                    return HttpContext.Current.Items[ocKey] as HomeNinja;
                }
            }
    }
}