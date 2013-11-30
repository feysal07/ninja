using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Metadata.Edm;
using System.Data.Objects;
using System.Data.Objects.DataClasses;
using System.Linq;
using System.Web;

namespace HouseNinja.DAO
{
    public  static class Helper
    {
        public static void Save(this EntityObject objEntity)
        {
            try                                       // Update record.
            {
                Global.Context.DetachObject(objEntity);
                Global.Context.AttachTo(Global.Context.GetEntitySetName(objEntity), objEntity);
                Global.Context.ObjectStateManager.ChangeObjectState(objEntity, EntityState.Modified);
                Global.Context.SaveChanges();
 
            }
            catch (OptimisticConcurrencyException)   // Insert if found the record is already exists.
            {
                Global.Context.DetachObject(objEntity);
                Global.Context.AddObject(Global.Context.GetEntitySetName(objEntity), objEntity);
                Global.Context.SaveChanges();
            }
        }
 
        /// <summary>
        /// Delete the record from related table. The primary key value must be filled.
        /// </summary>
        /// <param name="objEntity">Entity Object</param>
        public static void Delete(this EntityObject objEntity)
        {
            if (objEntity != null)
            {
                Global.Context.DetachObject(objEntity);
                Global.Context.Attach(objEntity);
                Global.Context.ObjectStateManager.ChangeObjectState(objEntity, EntityState.Deleted);
                Global.Context.SaveChanges();
            }
        }
 
        private static string GetEntitySetName(this ObjectContext Context, EntityObject entity)
        {
            string entityTypeName = entity.GetType().Name;
            var container = Context.MetadataWorkspace.GetEntityContainer(Context.DefaultContainerName, DataSpace.CSpace);
            return container.BaseEntitySets.FirstOrDefault(meta => meta.ElementType.Name == entityTypeName).Name;
        }
 
        private static void DetachObject(this ObjectContext Context, EntityObject entity)
        {
            if (entity.EntityKey != null)
            {
                object objentity = null;
                var exist = Context.TryGetObjectByKey(entity.EntityKey, out objentity);
                if (exist) { Context.Detach(entity); }
            }
        }
    }
}