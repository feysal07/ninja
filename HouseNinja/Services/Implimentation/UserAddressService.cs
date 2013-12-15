using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HouseNinja.DAO;

namespace HouseNinja.Services.Implimentation
{
    public class UserAddressService
    {
        addressdetail add = new addressdetail();
        public long saveAddress(addressdetail address) {
            return add.saveAddress(address);
        }
    }
}