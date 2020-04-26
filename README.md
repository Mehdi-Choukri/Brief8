le script permettant de creé un user :

-->CREATE USER 'nomUser'@'localhost' IDENTIFIED BY 'password';

voici le script permettant de donner au user tous les privilèges 

-->GRANT ALL PRIVILEGES ON * . * TO 'nomUser'@'localhost';

si on veut donner des droits spécifiques à un user il est preferable de faire ceci 

-->GRANT type_of_permission ON database_name.table_name TO ‘nomUser’@'localhost’;

voici les types de permission qui existent ; 

ALL PRIVILEGES pour tous les previleges .

CREATE pour la creation des tables

DROP pour la suppression des tables 

DELETE pour la suppression d'un rang ou d'un enregistrement.

INSERT pour l'insertion 

SELECT pour la lecture des données d'une table ou de plusieurs 

UPDATE pour la modification 

alors que revoke fait l'inverse au lieu de donner des previleges elle les retire 

REVOKE type_of_permission ON database_name.table_name FROM ‘nomUser’@‘localhost’;
---------------------------------------------------------------------------

exemple de manipulation de la base de donnée :

l'insertion dans la table informaticien 

insert into Informaticien values ('admin@mail.com','123456')

la modification de cet enregistrement :

update Informaticien set Password='voiciLeNouveauPassword' 

si on ne met pas une clause ou condition la modification sera faite sur 

tous les champs qui sont nommés Password .

pour mettre une clause il suffit d'ajouter le mot WHERE et on précise la condition

pour cet exemple :

update Informaticien set Password='voiciLeNouveauPassword' WHERE Login='admin@mail.com'

Delete   : 

voici delete comment fonctionne 

delete from Informaticien where Login='Admin1'

ce script va permettre d'aller à la table Informaticien et chercher 

l'informaticien qui a comme login Admin1 et va le supprimer 


