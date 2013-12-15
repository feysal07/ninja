using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HouseNinja.DAO
{
    public partial class addressdetail
    {
        public long saveAddress(addressdetail address)
        {

            long id = 0;
            using(HomeNinja db=new HomeNinja()){

                db.addressdetails.AddObject(address);
                db.SaveChanges();
                id = address.id;
            }

            return id;
        }

        
    }
}