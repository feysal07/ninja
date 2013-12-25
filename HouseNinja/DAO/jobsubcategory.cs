using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HouseNinja.DAO
{
    public partial class jobsubcategory
    {
        public static List<jobsubcategory> getSubCategories(List<int> jobCatIds)
        {
            List<jobsubcategory> subCategories = null;

            string query = "SELECT ID,JOBCATID,JOBSUBCAT FROM JOBSUBCATEGORY WHERE JOBCATID IN ({0})";
            string queryToAppend = "";
            if (jobCatIds !=null){

                foreach (int jobCatID in jobCatIds)
                {
                    queryToAppend = queryToAppend + jobCatID + ",";
                }

                queryToAppend = queryToAppend.Remove(queryToAppend.Length - 1);


            }

            query = string.Format(query,queryToAppend);


            using (HomeNinja db = new HomeNinja())
            {
                
                var users = db.ExecuteStoreQuery<jobsubcategory>(query);
                subCategories = users.ToList();
            }

            return subCategories;
        }


    }
}