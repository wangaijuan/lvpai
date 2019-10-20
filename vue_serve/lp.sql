/*设置客户端连接服务器端编码*/
SET NAMES UTF8;
/*丢弃数据库，如果存在*/
DROP DATABASE IF EXISTS lp;
/*创建数据库，设置编码*/
CREATE DATABASE lp CHARSET=UTF8;
/*进入创建的数据库*/
USE lp;

/*用户信息*/
CREATE TABLE user(
  uid SMALLINT PRIMARY KEY,
  uname VARCHAR(50) ,
  upwd VARCHAR(32) ,
  phone VARCHAR(20)
);
/*插入登录数据*/
INSERT INTO user VALUES(1,'doudou','111111','13052321201');
INSERT INTO user VALUES(2,'yaya','222222','16523201456');
INSERT INTO user VALUES(3,'haha','333333','18032015210');
INSERT INTO user VALUES(4,'lala','444444','17632018956');

/*商品详情*/
CREATE TABLE lp_index_product(
  did INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  details VARCHAR(128),
  price DECIMAL(10,2),
  href VARCHAR(128),
  seq_recommended TINYINT,
  seq_new_arrival TINYINT,
  seq_top_sale TINYINT
);
/*购物车条目*/
CREATE TABLE lp_shoppingcart_item(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,      #用户编号
  product_id INT,   #商品编号
  count INT,        #购买数量
  product_price INT,  #商品价格
  is_checked BOOLEAN #是否已勾选，确定购买
);
/*商家用户订单*/
CREATE TABLE lp_order(
  oid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  address_id INT,
  status INT,             #订单状态  1-等待付款  2-等待发货  3-运输中  4-已签收  5-已取消
  order_time BIGINT,      #下单时间
  pay_time BIGINT,        #付款时间
  deliver_time BIGINT,    #发货时间
  received_time BIGINT    #签收时间
)AUTO_INCREMENT=10000000;

/*用户订单*/
CREATE TABLE lp_order_detail(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,           #订单编号
  product_id INT,         #产品编号
  count INT               #购买数量
);
/*首页轮播图*/
CREATE TABLE lp_index_carousel(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);
/*婚纱*/
CREATE TABLE xz_laptop(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(128),         #主标题
  price DECIMAL(10,2),        #价格
  promise VARCHAR(64),        #服务承诺
  lname VARCHAR(32),          #商品名称
  details VARCHAR(1024),      #产品详细说明
  sold_count INT,             #已售出的数量
  is_onsale BOOLEAN           #是否促销中
);


