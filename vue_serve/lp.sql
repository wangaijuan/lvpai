/*设置客户端连接服务器端编码*/
SET NAMES UTF8;
/*丢弃数据库，如果存在*/
DROP DATABASE IF EXISTS lp;
/*创建数据库，设置编码*/
CREATE DATABASE lp CHARSET=UTF8;
/*进入创建的数据库*/
USE lp;

/**用户信息**/
CREATE TABLE xz_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  phone VARCHAR(16),
  user_name VARCHAR(32),      #用户名，如王小明

);
