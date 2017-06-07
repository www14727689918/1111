SET NAMES UTF8;
DROP DATABASE IF EXISTS fmf;
CREATE DATABASE fmf CHARSET=UTF8;
USE fmf;
CREATE TABLE f_msg(
    mid INT PRIMARY KEY AUTO_INCREMENT,
    mname VARCHAR(64),
    content VARCHAR(1024),
    pubtime BIGINT,
    pic VARCHAR(64)
);
INSERT INTO f_msg VALUES
(null,'hanyu711','7月拍照，9月拿东西，果然是2个月，不过效果很好，尤其是藏弥，我很喜欢','1474357502000','tou_01.jpg'),
(null,'Smile_eye','十一别人都结婚 我才刚订婚纱 因为凤铭坊的接待姐姐很热情，还有我喜欢的中式婚纱 果断就在这订了！希望接待姐姐给我推荐的文SIR和化妆师美美能带给我非常满意的效果！','1475381142000','tou_02.jpg'),
(null,'っ心甘情愿','好几个朋友都凤铭坊拍摄的，我也是经过他们推荐来的，总体拍摄过程还是很愉快的，老师也都边拍摄边给我看效果，自己感觉还不错，期待成品出来','1478175063000','tou_03.jpg'),
(null,'糊涂Louis','从去年就开始关注凤铭坊了，由于不是本地的， 所以一直在观察，一直怎么拍好看，昨天终于定下来了，一直在问客服各种问题，他都非常的耐心回答。这么的耐心真的让我很感动，非常感谢。很开心，期待五月的拍摄。','1489074918000','tou_04.jpg'),
(null,'爱吃过头的喵','一进凤铭坊的店我就被吸引了，整体装修风格都是中式的，很有感觉！前台姐姐服务态度很棒！赞一个！','1492312271000','tou_05.jpg'),
(null,'我爱丽江Style','和我5岁半的女儿照的亲子照，看到成品后我女儿的爸爸都眼馋了，哈哈……打算年初再去照个全家福','1495763805000','tou_06.jpg'),
(null,'13754645678','前几天刚在凤铭坊拍的写真，一共7套衣服，照了一天，很累的说！非常感谢摄影师贾Sir，非常细心，嘿嘿！','1495982185000','tou_07.jpg');
CREATE TABLE f_login(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),
    upwd VARCHAR(32)
);
INSERT INTO f_login VALUES
(10,'yly','111222'),
(20,'admin','123456'),
(30,'abc','456789');
CREATE TABLE f_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  ptime VARCHAR(32),
  pic VARCHAR(32)
);
INSERT INTO f_product VALUES
(null,'2016-05-20','c1.jpeg'),
(null,'2016-10-23','c2.jpg'),
(null,'2016-06-01','c3.jpg'),
(null,'2016-06-01','c4.jpg'),
(null,'2016-06-01','c5.jpg'),
(null,'2016-08-18','c6.jpg'),
(null,'2016-11-03','c7.jpg'),
(null,'2016-09-10','c8.jpg'),
(null,'2016-07-30','c9.jpg'),
(null,'2017-05-28','c10.jpg'),
(null,'2016-06-20','c11.jpg'),
(null,'2017-04-15','c12.jpg'),
(null,'2016-09-01','c13.jpg'),
(null,'2016-10-11','c14.jpg'),
(null,'2017-06-01','c15.jpg'),
(null,'2016-08-06','c16.jpg'),
(null,'2016-11-03','c17.jpg'),
(null,'2016-09-10','c18.jpg'),
(null,'2016-07-30','c19.jpg'),
(null,'2017-05-28','c20.jpg'),
(null,'2017-05-28','c21.jpg'),
(null,'2016-10-23','c22.jpg'),
(null,'2016-06-01','c23.jpg'),
(null,'2017-02-16','c24.jpg'),
(null,'2017-05-14','c25.jpg'),
(null,'2017-02-16','c26.jpg'),
(null,'2016-12-03','c27.jpg'),
(null,'2016-04-10','c28.jpg'),
(null,'2017-02-16','c29.jpg'),
(null,'2017-05-28','c30.jpg'),
(null,'2016-05-20','c31.jpg'),
(null,'2016-10-23','c32.jpg'),
(null,'2016-06-01','c33.jpg'),
(null,'2016-09-23','c34.jpg'),
(null,'2016-07-31','c35.jpg'),
(null,'2016-08-18','c36.jpeg'),
(null,'2016-11-03','c37.jpg'),
(null,'2017-03-10','c38.jpg'),
(null,'2016-07-30','c39.jpg'),
(null,'2017-05-28','c40.jpg');
CREATE TABLE f_order(
    oid INT PRIMARY KEY AUTO_INCREMENT,
    orderId INT,
    cloth INT,
    style INT,
    photo INT,
    pic INT,
    ordertime INT,
    tel VARCHAR(20)
);
INSERT INTO f_order VALUES
(null,10,2,2,4,3,1,'18905860507'),
(null,20,3,4,2,1,2,'15700062535'),
(null,30,1,3,3,4,2,'13612345678');