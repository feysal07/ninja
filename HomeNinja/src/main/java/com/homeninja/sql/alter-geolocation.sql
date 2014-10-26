alter table `homeninj_prod`.`jobs` 
add column `longitude` double NULL after `jobSubCategories`, 
add column `latitude` double NULL after `longitude`;
   
UPDATE jobs SET latitude=12.9151013;
UPDATE jobs SET longitude=77.6127996; 

alter table `homeninj_prod`.`address_details` 
add column `longitude` double NULL after `userId`, 
add column `latitude` double NULL after `longitude`;

alter table `homeninj_prod`.`address_details` 
   add column `createdDate` datetime NULL after `latitude`, 
   add column `modifiedDate` datetime NULL after `createdDate`;
   

UPDATE address_details SET latitude=12.9151013;
UPDATE address_details SET longitude=77.6127996;


alter table `homeninj_prod`.`users_search` 
   add column `latitude` double NULL after `profilePic`, 
   add column `longitude` double NULL after `latitude`;
   
UPDATE users_search SET latitude=12.9151013;
UPDATE users_search SET longitude=77.6127996; 