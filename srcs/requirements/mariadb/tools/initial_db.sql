CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'btekinli'@'%' IDENTIFIED BY '123';
GRANT ALL PRIVILEGES ON wordpress.* TO 'btekinli'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'root123';
