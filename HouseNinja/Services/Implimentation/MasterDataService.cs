﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HouseNinja.DAO;

namespace HouseNinja.Services.Implimentation
{
    public class MasterDataService
    {
        public List<masterdatavalue> GetMasterValueByMenmonic(string menmonic)
        {
            return masterdatavalue.getDropDownValues(menmonic).ToList();
        }
    }
}