using System;
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

        public List<masterdatavalue> GetCitiesByStateId(int stateId)
        {
            return masterdatavalue.getCitiesDropDown(stateId).ToList();
        }
    }
}