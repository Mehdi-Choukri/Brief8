/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  24/04/2020 11:31:57                      */
/*==============================================================*/


drop table if exists Departement;

drop table if exists Informaticien;

drop table if exists Question;

drop table if exists Reponse;

drop table if exists User;

/*==============================================================*/
/* Table : Departement                                          */
/*==============================================================*/
create table Departement
(
   ID_Departement       int not null,
   Login                varchar(254),
   Nom_Departement      varchar(254),
   Description          varchar(254),
   Effectif             int,
   primary key (ID_Departement)
);

/*==============================================================*/
/* Table : Informaticien                                        */
/*==============================================================*/
create table Informaticien
(
   Login                varchar(254) not null,
   Password             varchar(254),
   primary key (Login)
);

/*==============================================================*/
/* Table : Question                                             */
/*==============================================================*/
create table Question
(
   ID_QUESTION          int not null,
   CIN                  varchar(254),
   DATE_QUESTION        datetime,
   Contenu              varchar(254),
   primary key (ID_QUESTION)
);

/*==============================================================*/
/* Table : Reponse                                              */
/*==============================================================*/
create table Reponse
(
   ID_Departement       int,
   ID                   int not null,
   ID_QUESTION          int,
   DATE                 datetime,
   Contenu              varchar(254),
   primary key (ID)
);

/*==============================================================*/
/* Table : User                                                 */
/*==============================================================*/
create table User
(
   CIN                  varchar(254) not null,
   NOM                  varchar(254),
   PRENOM               varchar(254),
   PROFESSION           varchar(254),
   TEL                  varchar(254),
   primary key (CIN)
);

alter table Departement add constraint FK_Association_1 foreign key (Login)
      references Informaticien (Login) on delete restrict on update restrict;

alter table Question add constraint FK_Association_3 foreign key (CIN)
      references User (CIN) on delete restrict on update restrict;

alter table Reponse add constraint FK_Association_2 foreign key (ID_Departement)
      references Departement (ID_Departement) on delete restrict on update restrict;

alter table Reponse add constraint FK_Association_4 foreign key (ID_QUESTION)
      references Question (ID_QUESTION) on delete restrict on update restrict;

