DROP DATABASE IF EXISTS schema;
CREATE DATABASE schema;
USE schema;

DROP TABLE IF EXISTS "Users";
CREATE TABLE "Users" (
  "id" int(11) NOT NULL auto_increment,
  "firstname" char(35) NOT NULL default '',
  "lastname" char(35) NOT NULL default '',
  "password" char(35) NOT NULL default '',
  "email" char(35) NOT NULL default '',
  "date_joined" DATE NOT NULL default '',
  PRIMARY KEY  ("id")
) ENGINE=MyISAM AUTO_INCREMENT=4080 DEFAULT CHARSET=utf8mb4;

INSERT INTO "Users" VALUES (000,'Admin','Gai','password123','admin@bugme.com',2019-11-24);


DROP TABLE IF EXISTS "Issues";
CREATE TABLE "Issues" (
  "id" int(11) NOT NULL auto_increment,
  "title" char(35) NOT NULL default '',
  "description" LONGTEXT NOT NULL default '',
  "type" char(35) NOT NULL default '',
  "priority" char(35) NOT NULL default '',
  "status" char(35) NOT NULL default '',
  "assigned_to" int(11) NOT NULL default '',
  "created_by" int(11) NOT NULL default '',
  "created" DATE NOT NULL default '',
  "updated" DATE NOT NULL default '',
  PRIMARY KEY  ("id")
) ENGINE=MyISAM AUTO_INCREMENT=4080 DEFAULT CHARSET=utf8mb4;