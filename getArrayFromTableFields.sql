delimiter //
drop procedure getArrayFromTableFields;

CREATE PROCEDURE getArrayFromTableFields(IN TABLE_NAM VARCHAR(128), IN DB VARCHAR(128))
 SELECT 
 concat("$aArray = ['",REPLACE(group_concat(`COLUMN_NAME`), ',', "','"),"'];") as aFields
 FROM information_schema.`COLUMNS`
 WHERE `TABLE_NAME` = TABLE_NAM
 and table_schema = DB;
END //
delimiter ;


call getArrayFromTableFields('your_table_name', 'your_database_name');

