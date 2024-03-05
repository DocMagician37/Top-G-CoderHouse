USE MYSQL 
SELECT * FROM user; 	
-- Este User solo puede mirar la informacion que esta en la tabla
CREATE USER 'ReadOnly'@'localhost' IDENTIFIED BY 'read_only_password';
-------------------------------------------------
-- Este User Puede acomodar la infomacion de insert update y acomodar tablas pero no borrar tablas s
CREATE USER 'Admin'@'localhost' IDENTIFIED BY 'admin_password';
GRANT INSERT, UPDATE, ALTER ON *.* TO 'Admin'@'localhost';

