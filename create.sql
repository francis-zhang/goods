/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/6/6 15:31:53                            */
/*==============================================================*/
create database goods;
use goods;
SET NAMES utf8;

drop table if exists goods;

drop table if exists goodstype;

/*==============================================================*/
/* Table: tb_goods                                              */
/*==============================================================*/
create table goods
(
   id                   int not null auto_increment,
   name                 varchar(32),
   typeid               int,
   price                double,
   count                int,
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: tb_goodstype                                          */
/*==============================================================*/
create table goodstype
(
   id                   int not null auto_increment,
   name                 varchar(64),
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table goods add constraint FK_Reference_1 foreign key (typeid)
      references goodstype (id) on delete restrict on update restrict;

