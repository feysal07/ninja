DROP TABLE IF EXISTS `comments`;
DROP TABLE IF EXISTS `posts`;
DROP TABLE IF EXISTS `post_tags`;

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(50) DEFAULT NULL,
  `author` BIGINT(50) DEFAULT NULL,
  `content` LONGTEXT,
  `commentCount` INT(11) DEFAULT '0',
  `tagId` INT(11) DEFAULT NULL,
  `createdDate` DATETIME DEFAULT NULL,
  `modifiedDate` DATETIME DEFAULT NULL,
   PRIMARY KEY (`id`)
);


DROP TABLE IF EXISTS `blog_comments`;
CREATE TABLE `blog_comments` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `comment` LONGTEXT,
  `blogId` BIGINT(20) DEFAULT NULL,
  `createdBy` BIGINT(20) DEFAULT NULL,
  `createdDate` DATETIME DEFAULT NULL,
  `modifiedDate` DATETIME DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_BLOG_TRANSACTION_BLOG_ID` FOREIGN KEY (`blogId`) 
  REFERENCES `blogs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
); 

DROP TABLE IF EXISTS `blog_tags`;
CREATE TABLE `blog_tags` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `tags` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT  INTO `blog_tags`(`id`,`tags`) VALUES (1,'Design Dilemma'),(2,'BEFORE & AFTER'),(3,'Using HomeNinja'),(4,'Other');