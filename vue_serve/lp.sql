/*设置客户端连接服务器端编码*/
SET NAMES UTF8;
/*丢弃数据库，如果存在*/
DROP DATABASE IF EXISTS lp;
/*创建数据库，设置编码*/
CREATE DATABASE lp CHARSET=UTF8;
/*进入创建的数据库*/
USE lp;



/*1.用户信息*/
CREATE TABLE lp_user(
  id  int primary key auto_increment,
  uname VARCHAR(50) ,
  upwd VARCHAR(32) ,
  phone VARCHAR(20)
);
/*插入登录数据*/
INSERT INTO lp_user VALUES(1,'doudou','123456','18052321201');
INSERT INTO lp_user VALUES(2,'yaya','222222','16523201456');


/*2.购物车条目*/
CREATE TABLE lp_shoppingcart_item(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,      #用户编号
  product_id INT,   #商品编号
  count INT,        #购买数量
  product_price INT,  #商品价格
  is_checked BOOLEAN #是否已勾选，确定购买
);

/*3.商家用户订单*/
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

/*4.用户订单*/
CREATE TABLE lp_order_detail(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,           #订单编号
  product_id INT,         #产品编号
  count INT               #购买数量
);
/*5.首页轮播图*/
CREATE TABLE lp_index_carousel(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);

/*6.婚纱details*/
CREATE TABLE lp_laptop(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(128),         #标题名
  price DECIMAL(10,2),        #价格
  promise VARCHAR(64)       #服务承诺

);
/*插入details数据*/
INSERT INTO lp_laptop VALUES(null,'真爱殿堂 高领罩衫吊带拖尾婚纱','15500','有运费');
INSERT INTO lp_laptop VALUES(null,'真爱殿堂 深v透视钉珠拖尾婚纱','15800','有运费');
INSERT INTO lp_laptop VALUES(null,'真爱殿堂 蕾丝无袖拖尾婚纱','18000','有运费');
INSERT INTO lp_laptop VALUES(null,'真爱殿堂 抹胸蕾丝拖尾婚纱','12500','有运费');
INSERT INTO lp_laptop VALUES(null,'真爱殿堂 一字肩五分袖婚纱','10600','有运费');
INSERT INTO lp_laptop VALUES(null,'真爱殿堂 兰玉 蓝精灵Angelina','11860','有运费');
INSERT INTO lp_laptop VALUES(null,'真爱殿堂 花朵蕾丝抹胸大拖尾蓬蓬纱','12060','有运费');
