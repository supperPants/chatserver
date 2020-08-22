drop database if exists chat;
create database chat;

use chat;

create table user
(
 id int primary key auto_increment,
 name varchar(50) not null unique,
 password varchar(50) not null unique,
 state enum('online', 'offline') default 'offline'
 );


create table friend
(
 userid int not null,  
 friendid int not null,
 primary key (userid, friendid)
);

create table allgroup
(
 id int primary key auto_increment,
 groupname varchar(50) not null unique,
 groupdesc varchar(200) default ''
);


create table groupuser
(
 groupid int not null,
 userid int not null,
 grouprole enum('creator', 'normal') default 'normal',
 primary key(groupid, userid)
);


create table offlinemessage
(
 userid int not null ,
 message varchar(500) not null
);
