using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HouseNinja.HelpingEntities;

namespace HouseNinja.DAO
{
    public partial class usersearch
    {


        public void saveUserInSearchTable(usersearch usrSearch)
        {
            //throw new NotImplementedException();
            usrSearch.Save();
        }

        public List<usersearch> getAlluser() {

          return  Global.Context.usersearches.ToList();
        
        }

       

        public List<usersearch> getFilteredUsers(UserSearch userPram)
        {
            string query = "SELECT   USERID, USERNAME, DESCRIPTION, STATE,  CITY,  CONTACTNO,  PINCODE FROM USERSEARCH WHERE 1=1";

            if (userPram.searchType.Equals("adv"))
            {
               
                   
                   if(userPram.name !=null && userPram.name.Equals("")){

                        query = query + "AND USERNAME=" + userPram.name;
                    
                    }else if(userPram.city !=null && userPram.city.Equals("")){

                        query =query +"AND CITY=" +userPram.city;

                    }
                    else if (userPram.pincode != null && userPram.pincode.Equals(""))
                    {
                        query = query + "AND PINCODE=" + userPram.pincode;
                    }
                    else if (userPram.pincode != null && userPram.pincode.Equals(""))
                    {
                        query = query + "AND PINCODE=" + userPram.pincode;
                    }
                    else if (userPram.state != null && userPram.state.Equals(""))
                    {
                        query = query + "AND STATE=" + userPram.state;
                    }

            }
            else {

                if (userPram.name != null && userPram.name.Equals(""))
                {

                    query = query + "OR USERNAME=" + userPram.name;

                }
                else if (userPram.city != null && userPram.city.Equals(""))
                {

                    query = query + "OR CITY=" + userPram.city;

                }
                else if (userPram.pincode != null && userPram.pincode.Equals(""))
                {
                    query = query + "OR PINCODE=" + userPram.pincode;
                }
                else if (userPram.pincode != null && userPram.pincode.Equals(""))
                {
                    query = query + "OR PINCODE=" + userPram.pincode;
                }
                else if (userPram.state != null && userPram.state.Equals(""))
                {
                    query = query + "OR STATE=" + userPram.state;
                }


            
            }

            using (HomeNinja db = new HomeNinja())
            {

                var users = db.ExecuteStoreCommand(query);
            }

            //using (var context = new EFRecipesEntities())
            //{
            //    string sql = "select * from Chapter3.Student where Degree = @Major";
            //    var args = new DbParameter[] { new SqlParameter { ParameterName = "Major", Value = "Masters" } };
            //    var students = context.ExecuteStoreQuery<Student>(sql, args);
            //}

        }
    }
}