﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HouseNinja.DAO;

namespace HouseNinja.Services.Implimentation
{
    public class JobCategoryService
    {
        public static List<jobcategory> getCategories()
        {
            return jobcategory.getCategories();
        }

        public static List<jobcategory> getCategoriesByUserType(int userTypeId)
        {
            return jobcategory.getCategoriesByUserType(userTypeId);
        }

        public static List<jobsubcategory> getSubCategories(List<int> jobCatIds)
        {
            return jobsubcategory.getSubCategories(jobCatIds);

        }


    }
}
