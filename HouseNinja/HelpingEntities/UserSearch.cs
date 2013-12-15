using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HouseNinja.HelpingEntities
{
    public class UserSearch
    {
        public string city { get; set; }
        public string state {get;set;}
        public string name {get;set;}
        public string  pincode {get;set;}
        public string searchType { get; set;}
    }
}