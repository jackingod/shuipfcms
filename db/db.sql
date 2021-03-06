-- MySQL dump 10.13  Distrib 5.7.10, for Win32 (AMD64)
--
-- Host: localhost    Database: shuipfcms
-- ------------------------------------------------------
-- Server version	5.7.10-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `shuipf_access`
--

DROP TABLE IF EXISTS `shuipf_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_access` (
  `role_id` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '角色id',
  `app` varchar(20) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(20) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(20) NOT NULL DEFAULT '' COMMENT '方法',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否有效',
  KEY `role_id` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_access`
--

LOCK TABLES `shuipf_access` WRITE;
/*!40000 ALTER TABLE `shuipf_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `shuipf_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_admin_panel`
--

DROP TABLE IF EXISTS `shuipf_admin_panel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_admin_panel` (
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '菜单ID',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `name` char(32) NOT NULL DEFAULT '' COMMENT '菜单名',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '菜单地址',
  UNIQUE KEY `userid` (`mid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='常用菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_admin_panel`
--

LOCK TABLES `shuipf_admin_panel` WRITE;
/*!40000 ALTER TABLE `shuipf_admin_panel` DISABLE KEYS */;
/*!40000 ALTER TABLE `shuipf_admin_panel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_article`
--

DROP TABLE IF EXISTS `shuipf_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_article` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(160) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` char(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci,
  `url` char(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `posid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prefix` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_article`
--

LOCK TABLES `shuipf_article` WRITE;
/*!40000 ALTER TABLE `shuipf_article` DISABLE KEYS */;
INSERT INTO `shuipf_article` VALUES (1,21,'阿里封杀电商导购原因：分流淘宝 易被对手拉拢','','http://www.shuipfcms.com/demo/file/2013/06/51c51df81df14.jpg','电商,阿里巴巴,淘宝网,美丽说,马云','写在前面的话：当阿里巴巴买百度关键字，封杀美丽说、蘑菇街之时，谁还曾记得，彼时，阿里还曾将美丽说、蘑菇街当作心头好。是什么原因使阿...','/index.php?a=shows&catid=21&id=1',0,99,1,0,'admin',1371872761,1371872761,1,'','马云',0,0,0,0,0,0),(2,21,'传网店将收5%营业税 淘宝卖家一年或缴税400亿','','http://www.shuipfcms.com/demo/file/2013/06/51c51ef3aaeca.jpg','网店缴税,淘宝开店缴税,网店将收5%营业税','山雨欲来风满楼。 5月30日，业界传出电商网店将被征收5%营业税的消息，在电商界犹如扔下了一颗原子弹。 日前，《每日经济新闻》记者就此事先后向国家工商总局市场司司长刘红亮、财政部财政科学研究所所长贾康、财政部财政科学研究所副所长刘尚希等求证，但或许基于话题','/index.php?a=shows&catid=21&id=2',0,99,1,0,'admin',1371873012,1371873012,1,'','淘宝',0,0,0,0,0,0),(3,21,'马云：菜鸟让我们对社会、未来有敬畏之心','','http://www.shuipfcms.com/demo/file/2013/06/51c51f2eefb83.jpg','马云,菜鸟,电子商务','新浪科技讯 5月28日上午消息，由阿里巴巴集团牵头的物流项目中国智能骨干网（简称CSN）今日在深圳正式启动。马云在会上表示，这次出来并不是所谓的复出，而是为了实现四五年前的想法，只是今天选择了这个秀，今天的出台，是我们一代人的理想、梦想。 马云同时解释了为','/index.php?a=shows&catid=21&id=3',0,99,1,0,'admin',1371873071,1371873071,1,'','马云',0,0,0,0,0,0),(4,22,'为什么新浪微博广告屡遭骂名而豆瓣广告收获好评？','','http://www.shuipfcms.com/demo/file/2013/06/51c52009459ad.jpg','什么,新浪,微博,广告,屡遭,骂名,豆瓣,获好评,橘生,淮南,则为','橘生淮南则为橘，生于淮北则为枳，这句话在社交网络的广告上同样适用。打开新浪微博和豆瓣，你会看到两种风格完全不同的广告，下面随便拿出一些对比。 前者为新浪微博上的推广广告，后者为豆瓣上的硬广推广。二者的差别？我想不用多做解释了吧。看了二者的广告，你可能','/index.php?a=shows&catid=22&id=4',0,99,1,0,'admin',1371873289,1371873289,1,'','新浪微博',3,0,3,3,3,1457058326),(5,22,'大众点评网遭“黑”手：网页跳转至天猫','','http://www.shuipfcms.com/demo/file/2013/06/51c52313391d9.jpg','大众点评,大众点评被黑客攻击,网页跳转至天猫','昨天凌晨，很多大众点评网的用户登录网站时发现无法打开网页，取而代之的是一个写着QQ号的弹窗，随后跳转至天猫页面，导致一些在点评网团购付款成功的用户订单延误。众多用户纷纷吐槽此次网站被黑事件，而QQ号指向的黑客helen则否认是其所为。','/index.php?a=shows&catid=22&id=5',0,99,1,0,'admin',1371874073,1371874073,1,'','大众点评',0,0,0,0,0,0),(6,22,'狗狗搜索宣布关站 版权问题难解','','http://www.shuipfcms.com/demo/file/2013/06/51c5236ccba0e.jpg','狗狗搜索,宣布关站,版权问题','【搜狐IT消息】（小蕊）5月2日消息，狗狗搜索今日宣布暂停gougou.com网站服务，具体原因未知，版权问题恐怕依旧是难解之痛。 狗狗搜索是提供影视剧、电子书、软件、音乐下载的搜索引擎，2004年由李学凌创办，曾获得雷军100万人民币投资，2007年被卖给迅雷。','/index.php?a=shows&catid=22&id=6',0,99,1,0,'admin',1371874160,1371874160,1,'','狗狗搜索 迅雷',0,0,0,0,0,0),(7,22,'反击易迅 京东欲推一日四送','','http://www.shuipfcms.com/demo/file/2013/06/51c523a819ded.jpg','易迅 京东 一日四送','一日四送 极速达一日四送服务，将实现三个小时商品送达，比之前的211限时达快出两倍 一日三送 早上订单在下午2时之前送达，中午订单在晚上6时之前送达，晚间订单在晚上10时之前送达 继价格战后，一对电商 冤家对头京东和易迅又将竞争的焦点对准到了物流速度上。','/index.php?a=shows&catid=22&id=7',0,99,1,0,'admin',1371874216,1371874216,1,'','易迅 京东',0,0,0,0,0,0),(8,16,'仿数字尾巴官网进度条jquery焦点图效果','','http://www.shuipfcms.com/demo/file/2013/06/51c52a921a436.jpg','进度条焦点图,时间轴焦点图,jquery焦点图,jquery插件','仿数字尾巴官网进度条jquery焦点图效果 效果描述：jquery焦点图插件，带索引按钮，带进度条时间轴，支持自动切换，带入淡出的切换效果','/index.php?a=shows&catid=16&id=8',0,99,1,0,'admin',1371875986,1371875986,0,'','jQuery',0,0,0,0,0,0),(9,16,'jquery前后图片预览焦点图效果','','http://www.shuipfcms.com/demo/file/2013/06/51c52ad03bc3f.jpg','jquery焦点图,左右滚动幻灯片,前后图片预览焦点图,jquery插件','jquery前后图片预览焦点图效果 效果描述：jquery焦点图效果，鼠标经过左右两边半透明部分显示左右箭头，点击左右滚动切换，支持自动切换！','/index.php?a=shows&catid=16&id=9',0,99,1,0,'admin',1371876048,1371876048,0,'','jQuery',2,0,2,2,2,1457058603),(10,16,'jquery全屏左右预览焦点图代码','','http://www.shuipfcms.com/demo/file/2013/06/51c52b189fa73.jpg','全屏焦点图,jquery幻灯片,左右箭头焦点图,jquery焦点图','jquery全屏左右预览焦点图代码 效果描述：jquery全屏焦点图，带图片前后图片预览效果，鼠标经过左右两边半透明部分显示左右箭头，带索引按钮，支持自动切换！','/index.php?a=shows&catid=16&id=10',0,99,1,0,'admin',1371876121,1371876121,0,'','jQuery',0,0,0,0,0,0),(11,17,'zTree 一款基于jquery的超强树形菜单','','http://www.shuipfcms.com/demo/file/2013/06/51c52e859571e.jpg','zTree,树形菜单,树状菜单,jquery树形菜单','zTree 一款基于jquery的超强树形菜单，支持无限级别扩展，含API说明！下面是 v3.5.12 的修改记录：  * 【修改】由于 jquery 1.9 ...','/index.php?a=shows&catid=17&id=11',0,99,1,0,'admin',1371876998,1371876998,0,'','zTree',0,0,0,0,0,0),(16,10,'初学必看：html+css小总结','','','html+css小总结,html+css教程,div+css','初学必看：html+css小总结经验教程！','/index.php?a=shows&catid=10&id=16',0,99,1,0,'admin',1371881631,1371881631,0,'','',1,0,1,1,1,1403154346),(17,10,'针对IE版本的if表达式','','','针对,版本,表达式,TML,注释,格式,HTML,做了,一些','TML 的注释格式是 ， IE 对HTML注释做了一些扩展，使之可以支持条件判断表达式，如何让静态HTML代码在不同IE版本显示不同内容？和编程...','/index.php?a=shows&catid=10&id=17',0,99,1,0,'admin',1371881683,1371881683,0,'','',0,0,0,0,0,0),(18,10,'关于input标签的一些小知识和技巧','','','关于,input,标签,些小,知识,技巧,分享,一些,常用,限制,input,','分享一些常用限制input的方法，可能里面也有一些你需要用的，可能也有一些你值得学习的！1.取消按钮按下时的虚线框,在input里添加属性值 h...','/index.php?a=shows&catid=10&id=18',0,99,1,0,'admin',1371881732,1371881732,0,'','',0,0,0,0,0,0),(19,10,'5种实现页面跳转到指定的地址的方法','','','JS实现页面跳转,html实现页面跳转,实现页面跳转的方法','下面列了五个例子来详细说明，这几个例子的主要功能是：在5秒后，自动跳转到同目录下的hello.html（根据自己需要自行修改）文件。1) html...','/index.php?a=shows&catid=10&id=19',0,99,1,0,'admin',1371881773,1371881773,0,'','',0,0,0,0,0,0),(20,10,'html注释条件语句!--[if IE]...![endif]--使用详细介绍','','','html注释语句,条件注释,html教程,[if IE]','代码如下: 用上面这段代码，只有使用IE时加载97zzw...','/index.php?a=shows&catid=10&id=20',0,99,1,0,'admin',1371881819,1371881819,0,'','',0,0,0,0,0,0),(25,10,'Nofollow标签是什么意思','','http://www.shuipfcms.com/demo/file/2013/06/51c551df1213e.jpg','Nofollow,html标签,html教程,什么是Nofollow','nofollow 是一个HTML标签的属性值。这个标签的意义是告诉搜索引擎&quot;不要追踪此网页上的链接&quot;或&quot;不要追踪此特定链接。　　nofollow简介　　n...','/index.php?a=shows&catid=10&id=25',0,99,1,0,'admin',1371886048,1371886048,0,'','',0,0,0,0,0,0),(21,11,'DreamWeaver文件保存时提示＂发生共享违例＂问题分析及解决方法','','http://www.shuipfcms.com/demo/file/2013/06/51c5419d2489e.png','文件保存,共享违例,dreamweaver','问题产生描述：DreamWeaver文件保存时，提示这样的问题&quot;发生共享违例&quot;，具体如图：修改HTML文件后，就是保存不了，一保存就提示&quot;路径+时发...','/index.php?a=shows&catid=11&id=21',0,99,1,0,'admin',1371881885,1371881885,0,'','dreamweaver',0,0,0,0,0,0),(22,11,'DreamWeaver中如何批量删除超级链接','','http://www.shuipfcms.com/demo/file/2013/06/51c541d5c23ae.jpg','DreamWeaver,如何,批量,删除,超级链接,问题,提','问题提出：在线问答网友提问，请问专家DreamWeaver 8中如何批量删除超级链接?   电脑软硬件应用网回答：解决办法，依次打开DreamWeaver...','/index.php?a=shows&catid=11&id=22',0,99,1,0,'admin',1371881942,1371881942,0,'','DreamWeaver',0,0,0,0,0,0),(23,12,'分享前端开发JavaScript中常用的使用小技巧语句','','http://www.shuipfcms.com/demo/file/2013/06/51c543b70c703.jpg','JavaScript语句,js技巧,前端开发,js教程,js常用语句','前面我们分享过前端小技巧和JavaScript刷新页面及框架，里面也时不时的提到JavaScript。收集了一些JavaScript小技巧脚本代码。JavaScript是...','/index.php?a=shows&catid=12&id=23',0,99,1,0,'admin',1371882423,1371882423,0,'','',0,0,0,0,0,0),(24,14,'PS结合AI制作钢铁侠面具模型教程','','http://www.shuipfcms.com/demo/file/2013/06/51c5445ee39c5.jpg','PS教程,PS打造钢铁侠面具,PS结合AI教程,ps实例','教程虽然用到AI，不过绘制的仅是线稿及简单的色块，没有这款软件的完全可以在PS中完成。面具构造并不复杂，不过质感部分刻画比较麻烦，想省...','/index.php?a=shows&catid=14&id=24',0,99,1,0,'admin',1371882593,1371882593,0,'','',2,0,1,1,1,1435332393),(29,10,'5种实现页面跳转到指定的地址的方法','','','JS实现页面跳转,html实现页面跳转,实现页面跳转的方法','下面列了五个例子来详细说明，这几个例子的主要功能是：在5秒后，自动跳转到同目录下的hello.html（根据自己需要自行修改）文件。1) html...','/index.php?a=shows&catid=10&id=29',0,99,1,0,'admin',1371907845,1371907845,0,'','',0,0,0,0,0,0),(30,10,'alt属性和title属性的区别与介绍','','','alt,属性,title,性的,区别,介绍,alt,属性','alt属性    为不能显示图像、窗体或applets的用户代理（UA），alt属性用来指定替换文字。替换文字的语言由lang属性指定。来源：How to...','/index.php?a=shows&catid=10&id=30',0,99,1,0,'admin',1371907945,1371907945,0,'','',0,0,0,0,0,0),(34,24,'Digital Atelier创意网站开发工作室网站欣赏','','http://www.shuipfcms.com/demo/file/2013/06/51c5b06e7462d.jpg','Digital Atelier,jquery酷站,国外酷站,交互设计酷站','Digital studio focused on web, mobile and facebook development','/index.php?a=shows&catid=24&id=34',0,99,1,0,'admin',1371910261,1371910261,0,'','',1,0,1,1,1,1435332417),(35,25,'26款以云为设计元素的logo欣赏','','http://www.shuipfcms.com/demo/file/2013/06/51c5b0d807938.jpg','26款以云为设计元素的logo欣赏,云,logo,logo欣赏','26款以云为设计元素的logo欣赏 logo数量：26款 logo所属分类：生活','/index.php?a=shows&catid=25&id=35',0,99,1,0,'admin',1371910364,1371910364,0,'','',0,0,0,0,0,0),(36,10,'测试文章','','/shuipfcms/d/file/content/2016/03/56d922b08c216.jpg','keyword','测试摘要','http://172.16.7.100/shuipfcms/index.php?a=shows&catid=10&id=36',0,99,1,0,'admin',1457070807,1457070660,0,'','tag',1,0,1,1,1,1457070812),(37,11,'测试文章','','/shuipfcms/d/file/content/2016/03/56d922b08c216.jpg','keyword','测试摘要','http://172.16.7.100/shuipfcms/index.php?a=shows&catid=11&id=37',0,99,1,0,'admin',1457070807,1457070660,0,'','tag',0,0,0,0,0,0),(38,12,'测试文章','','/shuipfcms/d/file/content/2016/03/56d922b08c216.jpg','keyword','测试摘要','http://172.16.7.100/shuipfcms/index.php?a=shows&catid=12&id=38',0,99,1,0,'admin',1457070807,1457070660,0,'','tag',0,0,0,0,0,0);
/*!40000 ALTER TABLE `shuipf_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_article_data`
--

DROP TABLE IF EXISTS `shuipf_article_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_article_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext COLLATE utf8_unicode_ci,
  `paginationtype` tinyint(1) NOT NULL DEFAULT '0',
  `maxcharperpage` mediumint(6) NOT NULL DEFAULT '0',
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `copyfrom` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_article_data`
--

LOCK TABLES `shuipf_article_data` WRITE;
/*!40000 ALTER TABLE `shuipf_article_data` DISABLE KEYS */;
INSERT INTO `shuipf_article_data` VALUES (1,'<p style=\"text-align:center\"><img border=\"0\" class=\"flag_bigP\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c51df81df14.jpg\" style=\"border:1px solid #999999;max-width:680px;display:inline-block;\" /></p><p style=\"text-indent:2em;\">写在前面的话：当阿里巴巴买百度关键字，封杀美丽说、蘑菇街之时，谁还曾记得，彼时，阿里还曾将美丽说、蘑菇街当作心头好。是什么原因使阿里巴巴与他们反目？中间又隐藏了哪些腥风血雨抑或诡秘不为人知的纠纷？</p><p style=\"text-indent:2em;\">本文作者铁手观点如下：1，美丽说们最初小，而且能为淘宝带来交易量，所以被淘宝扶植。2，后来，他们长大了，开始分流淘宝用户和商家，淘宝难控制。3，更重要的是，美丽说们被反淘宝的百度、腾讯拉拢，特别是腾讯入股美丽说。4，美丽说们每月花数百万在新浪微博营销，阿里入股新浪微博也可以打击这些已变节的电商导购网站。5，当然，美丽说和蘑菇街也在自救，但能不能自救成功很难讲。（以上，by林丰蕾）</p><p style=\"text-indent:2em;\">文/铁手（搜狐IT独家特约作者）</p><p style=\"text-indent:2em;\">电商导购的末日是否已经来临？</p><p style=\"text-indent:2em;\">阿里巴巴入股新浪微博不到一个月内，与百度重修于好，并对导购网站蘑菇街、美丽说进行封杀、打压。</p><p style=\"text-indent:2em;\">据了解，阿里巴巴日前与百度达成一项2亿元的框架合作协议，通过百度搜索“男装”、“女装”等商品品类名称后，可以看到淘宝的推广链接，这是阿里巴巴自2008年停止投放百度广告后双方第一次恢复正常商业合作。除了推广链接外，在百度搜索蘑菇街或美丽说的关键词时，第一条也显示出淘宝的关键词推广。而在百度与阿里巴巴达成合作之前，蘑菇街与美丽说从百度获得了大量流量。</p><p style=\"text-indent:2em;\">此前业内也曾传出消息称，2012年中，马云曾在内部下达指示：一、阿里不能继续扶持蘑菇街、美丽说壮大；二、应该多做异业合作，少做同业合作。马云在内部的这一表达被外界解读为阿里巴巴对电商导购类网站的态度产生变化，由过去的扶持改为打压。不过由于电商导购类网站当时仍为淘宝带来巨大流量，因此打压的态势也主要通过私下运作，阿里巴巴方面甚至官方否认打压一说。</p><p style=\"text-indent:2em;\">不过，随着阿里巴巴入股新浪微博的成功，电商导购类网站对阿里巴巴的负面作用已经越发明显，凭借新浪微博的巨大流量，阿里巴巴方面已经可以不再依靠电商导购类网站，因此下重手也在情理之中。</p><p style=\"text-indent:2em;\">令阿里巴巴对蘑菇街、美丽说由扶持转变为打压的主要原因是，早期这类网站为淘宝带来了大量交易额和流量，淘宝推出淘宝客功能之后，两家凭借自身拥有的海量用户，刺激了淘宝的交易量。彼时淘宝高层认为蘑菇街、美丽说这种产品是淘宝的有益补充，淘宝自身不具备社交属性，而蘑菇街、美丽说则弥补了淘宝的这一缺陷。</p><p style=\"text-indent:2em;\">最火热的时候，蘑菇街、美丽说高层与淘宝高层几乎每周都有见面讨论未来的发展方向。不过这种好景没有持续太长时间。</p><p style=\"text-indent:2em;\">随着蘑菇街、美丽说的发展壮大，开始成为不依附于淘宝的第二股电商力量，并分流了淘宝的大量用户与商家，这导致马云对此产生警惕。而且除VC机构外，百度、腾讯曾经多次与蘑菇街、美丽说洽谈入股事宜。得知这些消息后的马云才于2012年中告诫高层需要打压此类网站。</p><p style=\"text-indent:2em;\">另一方面，脱离淘宝掌控的蘑菇街、美丽说也成为互联网上各种反淘宝力量拉拢的对象，例如美丽说就在D轮融资中引入了腾讯投资。</p><p style=\"text-indent:2em;\">阿里巴巴的思路是，自己不善于社交产品，电商导购类又需要依附自己，因此是淘宝的补充产品。但两家壮大之后反而养虎为患，因此又不得不打压这类网站并寻找新的社交突破口，而新浪微博正是这个时候开始被阿里巴巴所看重。</p><p style=\"text-indent:2em;\">未经证实的数据显示，新浪微博是蘑菇街、美丽说类网站两个主要用户来源中的一个，蘑菇街每月对新浪微博的投入在数十万至数百万不等，美丽说更是曾经投掷千万级广告费用在新浪微博的营销上来获取新用户。</p><p style=\"text-indent:2em;\">对看到这一情形的阿里巴巴，入股新浪微博既可以弥补自身社交软肋，又可以打击已变节的电商导购网站。</p><p style=\"text-indent:2em;\">当然，随着阿里巴巴态度的变化，电商导购类网站也并非坐以待毙，蘑菇街目前正在筹备转型，并计划自建商城。这一计划被媒体曝光后，蘑菇街为了掩人耳目，以这是团购项目引起了外界误解为由作为回复。但据我们了解，蘑菇街筹建商城的计划已经经过多次讨论，这家导购网站今年制定的重要KPI之一就是摆脱淘宝能够获得独立的生存空间。</p><p style=\"text-indent:2em;\">另一方面，美丽说虽然在业务转型上比蘑菇街迟缓，但该公司在D轮融资中获得了来自腾讯的巨额融资，通过捆绑腾讯，美丽说也计划脱离淘宝争取独立生存空间。另有信息显示，美丽说2011年已经邀请百度销售总监杜郭伟加盟担任销售副总裁，组建独立销售团队销售广告，或许是美丽说对抗淘宝打压的破解之道。</p><p><br /></p>',2,10000,'',0,1,'',''),(2,'<p style=\"text-align:center\"><img border=\"0\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c51ef3aaeca.jpg\" style=\"border:1px solid #999999;max-width:680px;display:inline-block;\" /></p><p style=\"text-indent:2em;\">山雨欲来风满楼。</p><p style=\"text-indent:2em;\">5月30日，业界传出电商网店将被征收5%营业税的消息，在电商界犹如扔下了一颗原子弹。</p><p style=\"text-indent:2em;\">日前，《每日经济新闻》记者就此事先后向国家工商总局市场司司长刘红亮、财政部财政科学研究所所长贾康、财政部财政科学研究所副所长刘尚希等求证，但或许基于话题本身的敏感性，上述人士基本以“不知情”回应。</p><p style=\"text-indent:2em;\">如果传闻为真，阿里巴巴生态中的C2C系将可能成为征税重点区。</p><p style=\"text-indent:2em;\">年内开征可能性不大</p><p style=\"text-indent:2em;\">今年“两会”期间，苏宁云商董事长张近东以及湖南步步高商业连锁董事长王填呼吁对网店交易实施征税。</p><p style=\"text-indent:2em;\">张近东对此解释说，由于电商发展速度太快，相应的配套措施未能跟上，直接导致年交易量中约有一半游离于法律之外。同时，电子商务行业非注册经营、非税销售、假冒产品充斥……等现象的出现，给行业带来不公平的竞争环境，不利于行业健康持续发展。建议工商、质检等相关部门加大产品质量监管、保护知识产权、合理征税等方面的管理。</p><p style=\"text-indent:2em;\">一时间，网店征税话题在电商界，甚至社会上掀起了数场舌战。</p><p style=\"text-indent:2em;\">据相关媒体援引消息人士言论称，国内网店征税一事目前进入倒计时，相关部委已开始商讨具体收税措施，年内有可能正式向网店征收5%营业税。</p><p style=\"text-indent:2em;\">此前，有媒体披露，在今年3月于北京召开的一次秘密会议上，商务部和财政部向有电商投资经验的投资机构征询征收税款的具体操作方法。</p><p style=\"text-indent:2em;\">种种信号似乎都在暗示着网店征税进程势不可挡。</p><p style=\"text-indent:2em;\">近日，《每日经济新闻》记者就此事先后向国家工商总局市场司司长刘红亮、财政部财政科学研究所所长贾康、财政部财政科学研究所副所长刘尚希等求证，但或许基于话题本身的敏感性，上述相关人士基本以“不知情”作为回应。</p><p style=\"text-indent:2em;\">对此现象，有业内人士向记者分析称，这些人士闭口不谈此事，可能主要基于两个原因：一是征税事宜仍处于讨论中，目前在政府未公布此事之前，提前泄露消息不妥；另一个原因可能在于，网店征税事宜，在讨论中仍存在不同声音，具体的相关事宜仍有变数，因此也不方便评论。</p><p style=\"text-indent:2em;\">4月1日正式施行的 《网络发票管理办法》，曾被认为是向电商征税的前兆。</p><p style=\"text-indent:2em;\">4月15日，发改委、财政部等13个部门联合发布的 《关于进一步促进电子商务健康快速发展有关工作的通知》中也再次提到了电商征税。</p><p style=\"text-indent:2em;\">电子商务行业独立分析师李成东向记者表示，网店征税已经是一股不可阻挡的潮流，区别只是时间早一点或晚一点的问题。</p><p style=\"text-indent:2em;\">不过李成东指出，“估计国家不会在年内实施相关的政策，因为对网店征税，仍需要进行一段时间的调查、研究，听取社会意见，同时还需要试行、反馈等流程，待实验成熟后再全面推广。”</p><p style=\"text-indent:2em;\">一位在互联网上从事与税务行业相关工作的业内人士向 《每日经济新闻》记者表示，如果国家真的对网店征税，可能建立一个专门的网络税收监控中心，将税收综合征管系统、内部发票管理系统与网络交易平台对接，通过获得网店经营者真实的网上交易数据，可以实现对每笔交易都有据可查，从而将税款应收尽收。</p><p style=\"text-indent:2em;\">对B2C网站将是明显利好</p><p style=\"text-indent:2em;\">目前，我国电商网站中，主流的B2C网站如天猫、京东等，均为正常纳税平台。目前所提到的电商征税，主要对象是以淘宝上为数众多的中小C2C卖家为代表的群体。</p><p style=\"text-indent:2em;\">对此，业界出现了两种不同的观点，观点的背后主要是基于各自的利益考量。</p><p style=\"text-indent:2em;\">以线下传统零售卖家为主要业务的群体，基本赞同网店征税事宜，比如苏宁等。而以线上电商为主的电商公司，则持保留意见或不赞同此举。</p><p style=\"text-indent:2em;\">而另外一种观点认为，现在就对网店征税有点操之过急，目前应该“放水养鱼”，在大部分中小网店都具备了一定风险抵御能力后，再向他们征税。此外，也有人从社会就业的角度反对向网店征税。这种观点认为，大量的网店目前解决了相当一部分人的就业，在目前中国就业形势不乐观的背景下，向网店征税可能导致不少网店倒闭，从而减少这个领域对社会就业的消化能力。</p><p style=\"text-indent:2em;\">赞同者认为，如果长时间只对实体征税，而不对网店征税，可能最终导致实体店的大量倒闭。</p><p style=\"text-indent:2em;\">如果征税事宜落实，中国C2C领域的老大淘宝可能会成为重点区。</p><p style=\"text-indent:2em;\">数据显示，2012年淘宝、天猫实现交易额突破万亿，其中天猫成交额大致为2000亿元，保守估计淘宝交易额约为8000亿元左右。如果不计算减免征税的额度而粗略计算，以5％的额度征税，淘宝上的商家一年下来将因此增加近400亿元的税收成本。</p><p style=\"text-indent:2em;\">上述从事与税务行业相关工作的业内人士指出，如果国家对网店征税，会给淘宝及中小卖家带来一定的经营风险。“首先就是一些货源渠道不正规的店铺，如果要征税的话，他们首先得出具相关的发票，而一些店主很难做到这点；此外，目前还不明晰的是，对网店征税是否将追溯到第一笔订单产生的时间点，如果那样，很多网店赚的钱都不够交税。而一旦开始施行这一政策，对于苏宁等B2C网站而言，将是明显的利好”。</p><p><br /></p>',2,10000,'',0,1,'',''),(3,'<p style=\"text-align:center\"><img alt=\"0e08e28aace06cc1364967483672abc9\" border=\"0\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c51f2eefb83.jpg\" style=\"border:1px solid #999999;max-width:680px;display:inline-block;\" /></p><p style=\"text-indent:2em;\">新浪科技讯 5月28日上午消息，由阿里巴巴集团牵头的物流项目“中国智能骨干网”（简称CSN）今日在深圳正式启动。马云在会上表示，这次出来并不是所谓的复出，而是为了实现四五年前的想法，只是今天选择了这个秀，今天的出台，是我们一代人的理想、梦想。</p><p style=\"text-indent:2em;\">马云同时解释了为什么取名“菜鸟网络”，“为什么取菜鸟的名字？我刚刚做互联网的时候，很多人说我是一只菜鸟，但是正因为我们这批菜鸟，马化腾、李彦宏，所有这些菜鸟今天变成不一样的鸟，今天700万淘宝卖家，中国无数小的卖家，所有在网上做电子商务的都是菜鸟，只有菜鸟才能飞向千家万户。笨鸟先飞，飞了半天还是笨鸟，而菜鸟还有机会变成好 鸟。我们取这个名字不断提醒自己我们要为对社会有敬畏之心，对未来有敬畏之心，我们希望自己成为一只勤奋、努力、不断学习、对未来有敬畏、对昨天有感恩的鸟。”</p><p style=\"text-indent:2em;\">以下为马云演讲全文：</p><p style=\"text-indent:2em;\">我本来以为当了董事长以后就不需要再出来，但是没想到当董事长最主要职责就是出台和走秀。但是今天这个走秀是我期待了很多年的，这是一个我们阿里巴巴集团思考了4、5年一直希望建立的事，筹划了很久，但是很遗憾这个是在我不当CEO后才正式把这么大一个项目落地。</p><p style=\"text-indent:2em;\">4、5年来我们一直在思考一个问题，我们到底能为中国物流做什么？其实国家在整个物流建设上投入了几十万亿，但是效益并不是很高，随着电子商务高速发展，我们必须在中国提升整个国家社会的效益，生产制造、小企业，如何能够帮所有的货达天下、货运天下。</p><p style=\"text-indent:2em;\">今天中国物流高速发展离不开我们在座的三通一达，顺丰以及不在的所有物流公司的发展，我记得去年淘宝双十一节做了191亿，这是一个奇迹，但是更大奇迹居然在一天内运出7800万件包裹，这个数字背后是无数人把自己全家老小发动起来，把这些货送出去，没有让中国物流搞瘫。</p><p style=\"text-indent:2em;\">但是长此以往中国未来怎么解决这个问题，因为现在中国每天2500万包裹左右，十年后预计每年2亿包，今天中国的物流体系没有办法支撑未来2亿。所以我们有一个大胆设想通过建设中国智能骨干网，让全中国2000个城市在任何一个地方能够24小时，只要你上网购物，24小时货一定送到你们家，这是一个伟大的理想。</p><p style=\"text-indent:2em;\">四年来我们一直不敢下手，这个理想太大，没有人干过，甚至想都不敢想，我们觉得这是一个国家项目。我们去考察了日本、欧洲、美国，今天在欧洲、美国、日本都没有这样的先例，日本的物流发展非常好，美国物流发展也非常好，但是他们基于IT。</p><p style=\"text-indent:2em;\">在中国基于互联网、基于电子商务，如何把国家已经投下的基础设施能够发挥作用，如何能够把今天全中国100多万快递人员能够支撑未来再增加的1000万快递人员。从小的来讲，我希望更多的快递人员有尊严，这是一个很好的工作，我希望中国的物流、中国的效率，大家知道中国整个GDP中18%来自物流。但是发达国家在12%，这6个点如果降下来对整个国家经济效益是非常高。</p><p style=\"text-indent:2em;\">这是一个理想主义项目，这个项目我们不是一年两年做出来，而是准备花十年时间，淘宝花了十年，支付宝花了9年，阿里巴巴花了14年，任何一个有理想色彩的公司必须花十年才能做下来。所以我特别高兴。</p><p style=\"text-indent:2em;\">我跟快递公司交流过程中，这张网络起来，我们不会抢快递公司的生意，阿里巴巴永远不会做快递，因为我们没有这个能力，我们相信中国有很多快递公司做快递可以做得比我们好。但是这个物流网起来可能会影响所有快递公司以后的商业模式，以前我们认为对的东西可能不对了，因为它完全基于互联网思考。</p><p style=\"text-indent:2em;\">所以这是我们希望做的，是人们没有做过的。直到今天为止到底是什么产品、方向怎么样、模式怎么样，一直争论不休，但是我们不争论的是这是一个理想主义项目，不仅仅对我们有影响，最主要对社会有影响，对十年以后消费有巨大影响。这是我的看法。</p><p style=\"text-indent:2em;\">为什么取菜鸟的名字？我刚刚做互联网的时候，很多人说我是一只菜鸟，但是正因为我们这批菜鸟，马化腾、李彦宏，所有这些菜鸟今天变成不一样的鸟，今天700万淘宝卖家，中国无数小的卖家，所有在网上做电子商务的都是菜鸟，只有菜鸟才能飞向千家万户。笨鸟先飞，飞了半天还是笨鸟，而菜鸟还有机会变成好鸟。我们取这个名字不断提醒自己我们要为对社会有敬畏之心，对未来有敬畏之心，我们希望自己成为一只勤奋、努力、不断学习、对未来有敬畏、对昨天有感恩的鸟。</p><p style=\"text-indent:2em;\">我们希望通过1000、2000亿的投资能够翘动几十万亿中国已经有的基础设施，能够把国家基础设施发挥出效应。让我们高速公路、机场、码头充分利用，承担起本来应该有的责任。昨天在股东会上讲也许十年里我们失败，谁都不能保证你一定不失败。但是万一被我们搞成了，我觉得今生无悔，终于作为民营企业参与国家基础设施的投资和建设。这是划时代意义。一直以来基础设施是国有企业做，今天我们这些民营企业联合起来希望为这个时代、为这个社会做，今天我们也看到很多国有企业，很多大型企业，像中国人寿、中信，很多金融机构对我们展示出了巨大信心和支持，在这儿表示衷心感谢，后面加入的企业会越来越多，因为这不是为一家企业做，这是为一个时代做。</p><p style=\"text-indent:2em;\">再次谢谢大家，我还是做董事长，网上说我复出了，做社会化物流不是今天的想法，而是四五年前的想法，只是今天选择了这个秀、今天的出台，这是我们一代人的理想、梦想，谢谢大家！</p><p><br /></p>',2,10000,'',0,1,'',''),(4,'<p style=\"text-indent:2em;\">橘生淮南则为橘，生于淮北则为枳，这句话在社交网络的广告上同样适用。打开新浪微博和豆瓣，你会看到两种风格完全不同的广告，下面随便拿出一些对比。</p><p><br/></p><p><img border=\"0\" height=\"427\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c52009459ad.jpg\" width=\"520\" style=\"border:1px solid #999999;max-width:680px;display:block;margin-left:auto;margin-right:auto;\" /></p><p style=\"text-indent:2em;\">前者为新浪微博上的推广广告，后者为豆瓣上的硬广推广。二者的差别？我想不用多做解释了吧。看了二者的广告，你可能会顿生感慨：在新浪微博这个粗暴发展的地方，连广告也是粗暴的，而在豆瓣这个文艺的地方，连广告也是文艺的。</p><p style=\"text-indent:2em;\">作为一个公关人，虽然我对新浪微博的广告持理解态度，但偶尔也会对它的推广感到反感，比如上面那个淘宝广告，这广告真的是对我——一名男士的精准投放吗？与新浪微博广告相比，豆瓣的广告并不惹人反感，相反，有时候还很讨人喜欢。这不只是我一个人的体验，很多身边经常上豆瓣的人，也多表示没有受到豆瓣广告的什么干扰。</p><p style=\"text-indent:2em;\">那么为什么豆瓣的广告很少有人否定，而新浪微博广告却一直背负骂名呢？</p><p style=\"text-indent:2em;\">粗暴的新浪微博广告与精准的豆瓣广告</p><p style=\"text-indent:2em;\">新浪微博的主要广告类别有微博顶部广告、底部广告、侧栏广告等形式，其中最粗暴的是微博推广（包括粉丝通和橱窗硬广广告），如果说顶部、底部和侧栏广告还类似于电视剧开播前的广告的话，那微博推广就像是直接在电视剧中插播广告了，话说现在电视剧都不在播放途中插播广告了，而微博却反其道而行之，这种“粗暴插播”的广告形式，严重影响了用户体验，遭来骂名也是必然的。</p><p style=\"text-indent:2em;\">豆瓣的广告与微博差别显著，它的主要类别有豆瓣读书右侧的电商购买网站（如亚马逊、当当等），豆瓣电影关联的在线选座购票链接（其中有各大电影院的电影票网上购买），豆瓣同城中的活动购票链接（包括演唱会、沙龙等），以及豆瓣电台中的广播广告和各个页面的硬广推广等。</p><p style=\"text-indent:2em;\">这其中前三种（豆瓣图书、电影、同城中的购买链接）广告形式，丝毫不会影响用户的体验，相反，它们通过这种形式，使想购买产品的人快捷方便地找到产品的购买链接并完成购买，有效地提升了用户的体验。</p><p style=\"text-indent:2em;\">豆瓣电台中的广播广告是相对比较硬的广告，它类似于收音机中的插播广告。但有三点决定用户并不会对这种广告耿耿于怀。第一是用户在收听豆瓣电台的30分钟内不会听到广告，这基本上是可以让部分用户接受的时间。第二是付费用户（每月10元）可以收听它的高音质+无广告版。第三是豆瓣电台是个优秀的产品，它推荐音乐的精准度是非常高的，以听点广告的代价，换来豆瓣电台精准的音乐推荐服务，这对大多数人来说是一个划算的买卖。</p><p style=\"text-indent:2em;\">豆瓣的硬广推广可能是所有广告形式中最硬的，相对来说也是对用户影响最大的。但它与新浪微博硬广不同的地方有两点。第一是广告统一置于页面的右上侧，这使得豆瓣的页面看起来至少是整洁的。第二是广告的整体风格清新、文艺，总体符合豆瓣的调性，基本上毫无违和感。看了豆瓣广告，再看新浪微博广告，会让人感觉是从设计精致的商场来到了卖地摊货的地下通道。豆瓣硬广的这两个特点使其并没有受到用户的大面积反感，相反不少用户还对这些广告称赞有加。</p><p style=\"text-indent:2em;\">新浪微博广告与豆瓣广告对比</p><p style=\"text-indent:2em;\">名称形式广告位特点</p><p style=\"text-indent:2em;\">新浪微博广告页面硬广+微博推广多处粗暴展示+插入</p><p style=\"text-indent:2em;\">豆瓣广告页面硬广+购买链接+电台硬广统一置于右侧温和展示+需要时提供</p><p style=\"text-indent:2em;\">通过以上分析可以发现豆瓣广告与新浪微博广告最大的差别有两个，其一为二者属性不同，豆瓣广告是在需要时提供，而新浪微博广告是强行提供，有人可能要说在大数据时代，精准广告推送是未来的趋势，但不管未来怎样，现在新浪微博的广告完全谈不上精准；其二为二者的视觉效果不同，豆瓣广告形式整洁、有序、文艺，符合豆瓣调性，而新浪微博广告杂乱、无序，不一定符合新浪微博调性。</p><p style=\"text-indent:2em;\">所以总体来说，新浪微博是在用传统广告的思维做广告，而豆瓣是在用社会化广告的思维做广告（关于此点可以参看之前的文章《像做产品一样做广告》。</p><p style=\"text-indent:2em;\">新浪微博广告应将步伐放慢一点</p><p style=\"text-indent:2em;\">吴军曾在《浪潮之巅》中提出一个适用互联网公司的基因决定论，豆瓣广告之所以与新浪微博广告差别明显，本质上也是因为二者基因不同，豆瓣是一家拥有文艺范的慢公司，而新浪是一家拥有媒体属性的快公司。</p><p style=\"text-indent:2em;\">豆瓣这一拥有8年多历史的公司，<span style=\"color:#222222;font-size:14px;line-height:26px;text-indent:28px;background-color:#ffffff;\"></span>仅仅在3年前才推出了展示类广告，从这不难看出豆瓣对用户体验的极端重视，它不会像新浪微博那样因为急于盈利而在许多方面忽视用户的体验。广告门在对于豆瓣的一篇报道中写道：豆瓣对广告客户有着坚持——要用豆瓣的语言与用户交流。</p><p style=\"text-indent:2em;\">慢基因决定了豆瓣对于广告客户的苛求，决定了豆瓣的广告没有偏离豆瓣轨迹且没有影响用户体验的结果。</p><p style=\"text-indent:2em;\">而快基因使新浪微博行走的步伐一直很快，但有时行走的太快容易忘掉出发时的初衷。新浪或许应该停下来思考一些问题，比如：为什么自己的广告被无数人骂，而豆瓣的广告却没人骂？</p><p><br /><br /></p>',2,10000,'',0,1,'',''),(5,'<p style=\"text-align:center\"><img alt=\"大众点评网遭“黑”手：helen否认与其有关\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c523191dbf4.jpg\" style=\"font-family:arial, verdana, sans-serif;border:0px;max-width:680px;width:409px;height:173px;\" /></p><p style=\"text-align:center\"><img alt=\"大众点评网遭“黑”手：helen否认与其有关\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5231984627.jpg\" style=\"border:0px;max-width:680px;\" /></p><p style=\"text-indent:2em;\">昨天凌晨，很多大众点评网的用户登录网站时发现无法打开网页，取而代之的是一个写着QQ号的弹窗，随后跳转至“天猫”页面，导致一些在点评网团购付款成功的用户订单延误。众多用户纷纷吐槽此次网站被黑事件，而QQ号指向的黑客helen则否认是其所为。</p><p style=\"text-indent:2em;\">用户上网卡壳</p><p style=\"text-indent:2em;\">“大概晚上11点40多，我打开大众点评网，但是浏览器马上就报错了，弹出了一个对话框上面写着四字：‘凛冬将至’。网页上还有署名‘Helen’的黑客留下了一个QQ号。”大众点评网的用户王先生称自己看见后一时有点蒙，不知道是什么情况。“我上网一搜，原来大家都在说大众点评上不去的事情，有些人跳转完直接出现网址导航网站。”</p><p style=\"text-indent:2em;\">使用手机客户端的用户也同样遭遇了应用瘫痪的悲剧。“我手机上的大众点评网应用打开之后一直在内容载入中，登录也反复失败，我用手机号找回密码后收到的短信是乱码。”用户孙女士称自己本以为是手机出了问题，打开了其他应用程序才知道是大众点评网的问题。</p><p style=\"text-indent:2em;\">直到昨天清晨7点多，大众点评网站和手机客户端才恢复正常使用。</p><p style=\"text-indent:2em;\">网友订单延误</p><p style=\"text-indent:2em;\">由于网页的突然瘫痪，许多用户在提交订单付款后却无法再次确定付款成功和领取认证码。直到昨天清晨网页恢复正常后，用户再次登录成功却发现订单上没有付款成功的提示。“交了钱却没有给商户提供的验证码，在订单上也写着未付款成功，这是怎么回事？”王先生称自己的网银短信提示扣款成功，的确已经付款。</p><p style=\"text-indent:2em;\">“我给大众点评网的客服打电话，40分钟没有打进去，一直是线路忙，等待。”王先生无奈下使用了俗称“呼死你”的电话软件，却一直没有能打通热线电话。直到昨天上午9点半左右，大众点评客服官方微博称：“热线繁忙，电话排队中。烦请各位小点友耐心等待，如有问题可以私信给@大众点评网客服。”记者尝试拨打客服热线发现，直到中午11点多，客服热线基本恢复正常。</p><p style=\"text-indent:2em;\">helen否认与其有关</p><p style=\"text-indent:2em;\">对于网站的瘫痪，大众点评官方微博在昨天凌晨称：“因域名注册商出现系统漏洞，导致大众点评域名指向出现错误，这不会对用户造成任何信息安全方面的影响，广大用户可以放心。目前我们正努力联系域名注册商尽快修复他们的系统漏洞，以便尽快恢复大众点评的服务。对给用户造成的不便，我们深表歉意！”</p><p style=\"text-indent:2em;\">记者访问了网页中留下QQ号的黑客helen的空间，却发现他在昨天发布了一条声明，称自己并不是制造此次事故的黑客。“本人再次申明一点，在圈内我的名气很大，哥确实黑了国内不少安全小组的网站，也得罪了非常多的人，但是哥在国内只弄黑客站，基本不去碰其他网站的。哥专注国外网络安全已多年，所以很少在去关注国内网络安全。那些诬陷我的人，小心了。”记者随后联系helen，但其一直未予回应。</p><p><br /></p>',2,10000,'',0,1,'',''),(6,'<p style=\"text-align:center\"><img border=\"0\" height=\"262\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c52370829ae.png\" width=\"600\" style=\"border:1px solid #999999;max-width:680px;display:inline-block;\" /></p><p style=\"text-indent:2em;\">【搜狐IT消息】（小蕊）5月2日消息，狗狗搜索今日宣布暂停gougou.com网站服务，具体原因未知，版权问题恐怕依旧是难解之痛。</p><p style=\"text-indent:2em;\">狗狗搜索是提供影视剧、电子书、软件、音乐下载的搜索引擎，2004年由李学凌创办，曾获得雷军100万人民币投资，2007年被卖给迅雷。</p><p style=\"text-indent:2em;\">狗狗搜索给迅雷带来了不小的版权麻烦，2010年迅雷筹划上市前期，狗狗搜索被迅雷以1万元卖给非关联第三方。</p><p style=\"text-indent:2em;\">狗狗搜索曾经多次关站，又多次重开。2011年4月，文化部联合广告总局下令狗狗搜索下令关闭整改；2011年11月，狗狗搜索公告因系统调整暂停网站服务；2011年12月初恢复访问之后，当月底又再次宣布停止服务。</p><p style=\"text-indent:2em;\">狗狗搜索官方并未对本次关站的原因做出说明，未来是否会再次重开也尚不清楚。</p><p><br /></p>',2,10000,'',0,1,'',''),(7,'<p style=\"text-align:center\"><img alt=\"京东反击易迅欲推一日四送 易迅回应：欢迎竞争\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c523a819ded.jpg\" style=\"border:0px;max-width:680px;\" /></p><p style=\"text-indent:2em;\">一日四送</p><p style=\"text-indent:2em;\">“极速达”一日四送服务，将实现三个小时商品送达，比之前的“211限时达”快出两倍</p><p style=\"text-indent:2em;\">一日三送</p><p style=\"text-indent:2em;\">早上订单在下午2时之前送达，中午订单在晚上6时之前送达，晚间订单在晚上10时之前送达</p><p style=\"text-indent:2em;\">继价格战后，一对电商 “冤家对头”——京东和易迅又将竞争的焦点对准到了物流速度上。继去年12月易迅大举杀入京东大本营北京，并将“一日三送”服务扩展到北京市场后，昨日又传出消息称，京东近期正在紧锣密鼓地筹备“极速达”的一日四送服务，号称将实现三个小时商品送达，比之前的“211限时达”快出两倍。此举被业内认为是针对易迅的直接挑战。</p><p style=\"text-indent:2em;\">易迅网负责人表示，“电商的物流不仅要快速，更关键的还在于稳定和准时，我们期待和更多的企业一起不断提升面向消费者的服务，易迅非常欢迎竞争。”</p><p style=\"text-indent:2em;\">事件</p><p style=\"text-indent:2em;\">京东欲在京推“一日四送”</p><p style=\"text-indent:2em;\">配送速度一直是电商差异化竞争的焦点，从最早的三日送达，到隔日达，再到京东的“211”，以及目前易迅所保持的一日三送，电商巨头们在物流速度上进行的是内功的比拼。</p><p style=\"text-indent:2em;\">去年底，易迅高调宣布杀入京东大本营北京市场，一时间北京地铁公交上“在北京，谁比易迅更快”的广告铺天盖地，短期内带动了易迅在北京订单量的快速上扬，此举也使得京东颇为紧张，甚至在年初的内部会议上提出了“防易迅”的说法。</p><p style=\"text-indent:2em;\">京东公关媒介总监康健透露，目前“一日四送”服务只在北京试运行，即商品3小时送到。不过，对于该“一日四送”服务是否覆盖所有品类以及扩张到其他的城市，他表示由于是试运行，在品类和范围肯定有一定的限制，具体相关细节信息将会在下周公布。最后他还表示，目前试运行的品类包括有电脑类的，在北京可以到达一日四送。</p><p style=\"text-indent:2em;\">据悉，京东“极速达”配送服务已在北京地区开始试运行。之前京东依靠自有物流网络已经在一些城市先后推出211限时达、隔日达、晚间配送等服务升级措施，不过京东并没有说明在北京市场推出的一日四送服务，是否涵盖所有品类，以及是否会扩展到其他地区。</p><p style=\"text-indent:2em;\">回应</p><p style=\"text-indent:2em;\">易迅称欢迎直面竞争</p><p style=\"text-indent:2em;\">对于京东挑起的速度竞争，此前一直在国内电商物流领域领先的易迅网反应却比较平淡。</p><p style=\"text-indent:2em;\">其相关负责人在接受记者采访时表示，“电商的物流不仅要快速，更关键的还在于稳定和准时，我们期待更多的企业一起不断提升面向消费者的服务，易迅非常欢迎竞争。”</p><p style=\"text-indent:2em;\">此次京东和易迅在物流上的竞争并非首次。2005年易迅在上海推出了次日达服务，后来在京东进军上海市场后，易迅又先后将配送升级为“当日送达”，“一日两送”；在2009年京东也在上海跟进“一日两送”后，2010年易迅又果断地将配送升级为“一日三送”。2011年京东在上海也升级为“一日三送”。不过在试行一段时间后，京东取消“一日三送”服务，回归“一日两送”。</p><p style=\"text-indent:2em;\">解读</p><p style=\"text-indent:2em;\">或是针对竞争对手的炒作</p><p style=\"text-indent:2em;\">在自己大本营经营多年的京东能否通过“一日四送”来完成对易迅配送速度上的赶超？对此不少电商和物流行业专家表示了怀疑。</p><p style=\"text-indent:2em;\">中国电子商务协会物流专家、汉森世纪供应链总经理黄刚称，“京东‘一日四送’很可能是个噱头。”在他看来，易迅的一日三送已经是电商客户对于配送速度的最高需求，除非针对个别对配送速度特殊需求的商品。</p><p style=\"text-indent:2em;\">从易迅的“一日三送”来看，早上11点前的订单，过客服审单、财务出单、分区捡货，库房总拣，二次分拣到打包约需要1小时，而货车从仓库到市内配送点约需要1个小时，分单和送到快递员手中又需要40分钟的时间，这样最快的订单配送约需要3个小时的时间。而整个配送过程的不可控因素也很多，比如说仓库要离市中心足够近，即便如此道路堵塞也会影响到从仓库到配送点和从配送员到订户的速度，显然对于仓库分散而且离市区普遍较远的京东是无法具备这样的速度的。</p><p style=\"text-indent:2em;\">此外，京东目前的“211”一日两送，与其装车量、分拨量和送货量三个数据正好匹配，如果要满足“一日四送”，这些成本将大幅增加，这或是正在追求盈利的京东不愿意增加的成本。有业内人士指出，京东这次尝试的“一日四送”更多是针对竞争对手的一次炒作。 沈婷婷天府早报记者龚琼</p><p><br /></p>',2,10000,'',0,1,'',''),(8,'<p><span style=\"color:#666666;background-color:#ffffff;\">仿数字尾巴官网进度条jquery焦点图效果<br /><br />效果描述：jquery焦点图插件，带索引按钮，带进度条时间轴，支持自动切换，带入淡出的切换效果<br style=\"color:#666666;font-size:12px;line-height:18px;background-color:#ffffff;\" /><br style=\"color:#666666;font-size:12px;line-height:18px;background-color:#ffffff;\" /></span></p><div><p style=\"text-align:center\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c52a921a436.jpg\" style=\"border-style:none;max-width:680px;\" /></p></div><div><br /></div><p><br /></p>',2,10000,'',0,1,'',''),(9,'<p>jquery前后图片预览焦点图效果<br /><br />效果描述：jquery焦点图效果，鼠标经过左右两边半透明部分显示左右箭头，点击左右滚动切换，支持自动切换！<br style=\"color:#666666;font-size:12px;line-height:18px;background-color:#ffffff;\" /><br style=\"color:#666666;font-size:12px;line-height:18px;background-color:#ffffff;\" /></p><div><p style=\"text-align:center\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c52ad03bc3f.jpg\" style=\"border-style:none;max-width:680px;\" /></p></div><p><br /></p>',2,10000,'',0,1,'',''),(10,'<p>jquery全屏左右预览焦点图代码<br /><br />效果描述：jquery全屏焦点图，带图片前后图片预览效果，鼠标经过左右两边半透明部分显示左右箭头，带索引按钮，支持自动切换！<br style=\"color:#666666;font-size:12px;line-height:18px;background-color:#ffffff;\" /><br style=\"color:#666666;font-size:12px;line-height:18px;background-color:#ffffff;\" /></p><div><p style=\"text-align:center\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c52b189fa73.jpg\" style=\"border-style:none;max-width:680px;\" /></p></div><p><br /></p>',2,10000,'',0,1,'',''),(11,'<p style=\"text-indent:2em;\">zTree 一款基于jquery的超强树形菜单，支持无限级别扩展，含API说明！<br /></p><p style=\"text-align:center\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c52e859571e.jpg\" style=\"border-style:none;max-width:680px;width:650px;height:427px;\" /></p><p style=\"text-indent:2em;\">下面是 v3.5.12 的修改记录：</p><p style=\"text-indent:2em;\"> &nbsp; * 【修改】由于 jquery 1.9 中移除 event.srcElement 导致的 js 报错的bug。</p><p style=\"text-indent:2em;\"> &nbsp; * 【修改】在异步加载模式下，使用 moveNode 方法，且 moveType != &quot;inner&quot; 时，也会导致 targetNode 自动加载子节点的 bug</p><p style=\"text-indent:2em;\"> &nbsp; * 【修改】对已经显示的节点(nochecked=true)使用 showNodes 或 showNode 方法后，导致勾选框出现的bug。</p><p style=\"text-indent:2em;\"> &nbsp; * 【修改】对已经隐藏的节点(nochecked=false)使用 hideNodes 或 hideNode 方法后，导致勾选框消失的bug。</p><p style=\"text-indent:2em;\"> &nbsp; * 【修改】getNodesByParamFuzzy 支持 大小写模糊。</p><p style=\"text-indent:2em;\"> &nbsp; * 【修改】className 结构，提取 _consts.className.BUTTON / LEVEL / ICO_LOADING / SWITCH，便于快速修改 css 冲突。</p><p style=\"text-indent:2em;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;例如：与 WordPress 产生冲突后，直接修改 core 中的 &quot;button&quot; 和 &quot;level&quot; 即可。</p><p><br /></p>',2,10000,'',0,1,'',''),(16,'<p style=\"padding:0.5em 0px;color:#222222;font-size:14px;background-color:#ffffff;line-height:24px;margin-top:0px;margin-bottom:0px;\"><strong style=\"font-weight:bolder;\">1、块级元素</strong></p><p style=\"padding:0.5em 0px;color:#222222;font-size:14px;background-color:#ffffff;line-height:24px;margin-top:0px;margin-bottom:0px;\">&lt;div&gt; &lt;h1&gt; &lt;hr /&gt; &lt;p&gt; &lt;pre&gt; &lt;ol&gt; &lt;ul&gt; &lt;li&gt; &lt;dl&gt; &lt;dt&gt; &lt;dd&gt; &lt;table&gt; &lt;tr&gt; &lt;td&gt; &lt;colgroup&gt; &lt;col&gt; &lt;form&gt;等<br/>会换行，想在同一行显示需浮动或者display: inline</p><p style=\"padding:0.5em 0px;color:#222222;font-size:14px;background-color:#ffffff;line-height:24px;margin-top:0px;margin-bottom:0px;\"><strong style=\"font-weight:bolder;\">2、行内元素</strong></p><p style=\"padding:0.5em 0px;color:#222222;font-size:14px;background-color:#ffffff;line-height:24px;margin-top:0px;margin-bottom:0px;\">&lt;span&gt; &lt;var&gt; &lt;a&gt; &lt;em&gt; &lt;img&gt; &lt;b&gt; &lt;i&gt; &lt;sub&gt; &lt;textarea&gt; &lt;select&gt; &lt;strong&gt; &lt;br /&gt;等<br/>多个可以并排显示，默认设置宽度是不起作用的，需设置 display: inline-block或者block才行，或者加padding-left和padding-right。</p><p style=\"padding:0.5em 0px;color:#222222;font-size:14px;background-color:#ffffff;line-height:24px;margin-top:0px;margin-bottom:0px;\"><strong style=\"font-weight:bolder;\">3、常用符号</strong></p><p style=\"padding:0.5em 0px;color:#222222;font-size:14px;background-color:#ffffff;line-height:24px;margin-top:0px;margin-bottom:0px;\">双引号&quot;(&amp;quot;) &amp;(&amp;amp;) &gt;(&amp;gt;) &lt;(&amp;lt;) 空格(&amp;nbsp;) &nbsp;版权 (&amp;copy;) 注册商标 (&amp;reg;) 乘号 (&amp;times;)除号 (&amp;divide;)</p><p style=\"padding:0.5em 0px;color:#222222;font-size:14px;background-color:#ffffff;line-height:24px;margin-top:0px;margin-bottom:0px;\"><strong style=\"font-weight:bolder;\">4、选择器</strong></p><p style=\"padding:0.5em 0px;color:#222222;font-size:14px;background-color:#ffffff;line-height:24px;margin-top:0px;margin-bottom:0px;\">类选择器：&lt;div class=&quot;a&quot;&gt;&lt;/div&gt; &nbsp; &nbsp; css中: &nbsp;.a{…;}</p><p style=\"padding:0.5em 0px;color:#222222;font-size:14px;background-color:#ffffff;line-height:24px;margin-top:0px;margin-bottom:0px;\">ID选择器：&lt;div id=&quot;a&quot;&gt;&lt;/div&gt; &nbsp; &nbsp; &nbsp; &nbsp;css中: &nbsp;#a{…;}</p><p style=\"padding:0.5em 0px;color:#222222;font-size:14px;background-color:#ffffff;line-height:24px;margin-top:0px;margin-bottom:0px;\">后代选择器：&lt;div class=&quot;a&quot;&gt;<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;div class=&quot;b&quot;&gt;&lt;/div&gt;<br/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;/div&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;css中： .a空格.b{…;}</p><p style=\"padding:0.5em 0px;color:#222222;font-size:14px;background-color:#ffffff;line-height:24px;margin-top:0px;margin-bottom:0px;\">群组选择器：&lt;div class=&quot;a&quot;&gt;&lt;/div&gt;</p><p style=\"padding:0.5em 0px;color:#222222;font-size:14px;background-color:#ffffff;line-height:24px;margin-top:0px;margin-bottom:0px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;div class=&quot;b&quot;&gt;&lt;/div&gt; &nbsp; css中： &nbsp;.a,.b{…;}</p><p style=\"padding:0.5em 0px;color:#222222;font-size:14px;background-color:#ffffff;line-height:24px;margin-top:0px;margin-bottom:0px;\">标签选择器：&lt;a&gt;sds&lt;/a&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;css中： a{…;}</p><p style=\"padding:0.5em 0px;color:#222222;font-size:14px;background-color:#ffffff;line-height:24px;margin-top:0px;margin-bottom:0px;\"><strong style=\"font-weight:bolder;\">5、css样式写法及优先级</strong><br/>外部样式表<strong style=\"font-weight:bolder;\">:</strong><br/>&lt;head&gt;&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;mystyle.css&quot; /&gt;&lt;/head&gt;<br/>内部样式表<strong style=\"font-weight:bolder;\">:</strong><br/>&lt;head&gt;&lt;style type=&quot;text/css&quot;&gt; hr {color: sienna;} &lt;/style&gt;&lt;/head&gt;<br/>内联样式<strong style=\"font-weight:bolder;\">:</strong><br/>&lt;p style=&quot;color: sienna; margin-left: 20px&quot;&gt; This is a paragraph&lt;/p&gt;</p><p style=\"padding:0.5em 0px;color:#222222;font-size:14px;background-color:#ffffff;line-height:24px;margin-top:0px;margin-bottom:0px;\">样式的继承:<br/>子标记会继承父标记的样式</p><p style=\"padding:0.5em 0px;color:#222222;font-size:14px;background-color:#ffffff;line-height:24px;margin-top:0px;margin-bottom:0px;\">样式的优先级:<br/>内联样式&gt;内部样式&gt;外部样式<br/>浏览器内部也有一个默认的样式</p><p><br/></p>',2,10000,'',0,1,'',''),(17,'<p style=\"text-indent:2em;\">TML 的注释格式是 ， IE 对HTML注释做了一些扩展，使之可以支持条件判断表达式，如何让静态HTML代码在不同IE版本显示不同内容？<br /></p><p style=\"text-indent:2em;\">和编程语言类似，这里的表达式还支持大于(gt)、小于(lt)、 与或非 等操作符，条件注释是 IE5.0 以上版本所特有的一种对注释的扩展，其它浏览器不支持。<br /></p><p style=\"text-indent:2em;\">[if IE] 判断是否IE<br /></p><p style=\"text-indent:2em;\">[if IE 7] 判断是否是IE7<br /></p><p style=\"text-indent:2em;\">[if !IE] 判断是否不是IE<br /></p><p style=\"text-indent:2em;\">[if lt IE 5.5] 判断是否是IE5.5 以下版本。 (&lt;)<br /></p><p style=\"text-indent:2em;\">[if lte IE 6] 判断是否等于IE6 版本或者以下 (&lt;=)<br /></p><p style=\"text-indent:2em;\">[if gt IE 5] 判断是否IE5以上版本 （&gt; ）<br /></p><p style=\"text-indent:2em;\">[if gte IE 7] 判断是否 IE7 版本或者以上<br /></p><p style=\"text-indent:2em;\">[if !(IE 7)] 判断是否不是IE7<br /></p><p style=\"text-indent:2em;\">[if (gt IE 5)&amp;(lt IE 7)] 判断是否大于IE5， 小于IE7<br /></p><p style=\"text-indent:2em;\">[if (IE 6)|(IE 7)] 判断是否IE6 或者 IE7<br /></p><p style=\"text-indent:2em;\">下面是判断IE版本的综合示例代码：<br /></p><pre><p style=\"text-indent:2em;\">&lt;!--[if IE]&gt;\r\nYou are using Internet Explorer.\r\n&lt;![endif]--&gt;\r\n\r\n\r\n&lt;!--[if !IE]--&gt;\r\nYou are not using Internet Explorer.\r\n&lt;!--[endif]--&gt;\r\n\r\n\r\n&lt;!--[if IE 7]&gt;\r\nWelcome to Internet Explorer 7!\r\n&lt;![endif]--&gt;\r\n\r\n\r\n&lt;!--[if !(IE 7)]&gt;\r\nYou are not using version 7.\r\n&lt;![endif]--&gt;\r\n\r\n\r\n&lt;!--[if gte IE 7]&gt;\r\nYou are using IE 7 or greater.\r\n&lt;![endif]--&gt;\r\n\r\n\r\n&lt;!--[if (IE 5)]&gt;\r\nYou are using IE 5 (any version).\r\n&lt;![endif]--&gt;\r\n\r\n\r\n&lt;!--[if (gte IE 5.5)&amp;(lt IE 7)]&gt;\r\nYou are using IE 5.5 or IE 6.\r\n&lt;![endif]--&gt;\r\n\r\n\r\n&lt;!--[if lt IE 5.5]&gt;\r\nPlease upgrade your version of Internet Explorer.\r\n&lt;![endif]--&gt;\r\n\r\n</p></pre><p style=\"text-indent:2em;\">对于&lt;!–[if expression]&gt; HTML &lt;![endif]–&gt;，非 IE 浏览器会当作注释内容，不显示；对于 &lt;!–[if expression]–&gt; HTML &lt;!–[endif]–&gt;，非 IE 浏览器浏览器会当作普通代码段显示。<br /></p><pre><p style=\"text-indent:2em;\">&lt;!--[if expression]--&gt; HTML &lt;!--[endif]--&gt; &lt;!--[if expression]&gt; HTML &lt;![endif]--&gt;</p></pre><p><br /></p>',2,10000,'',0,1,'',''),(18,'<p style=\"text-indent:0em;\">分享一些常用限制input的方法，可能里面也有一些你需要用的，可能也有一些你值得学习的！</p><p style=\"text-indent:0em;\">1.取消按钮按下时的虚线框,在input里添加属性值 hideFocus 或者 HideFocus=true <br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" />&lt;input type=&quot;submit&quot; value=&quot;提交&quot; hidefocus=&quot;true&quot; /&gt;<br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" /><br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" />2.只读文本框内容,在input里添加属性值 readonly <br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" />&lt;input type=&quot;text&quot; readonly /&gt; <br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" /><br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" />3.防止退后清空的TEXT文档(可把style内容做做为类引用) <br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" />&lt;input type=&quot;text&quot; style=&quot;behavior:url(#default#savehistory);&quot; /&gt; <br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" /><br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" />4.ENTER键可以让光标移到下一个输入框 <br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" />&lt;input type=&quot;text&quot; onkeydown=&quot;if(event.keyCode==13)event.keyCode=9&quot; /&gt;<br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" /><br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" />5.只能为中文(有闪动) <br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" />&lt;input type=&quot;text&quot; onkeyup=&quot;value=value.replace(/[ -~]/g,&#39;&#39;)&quot; onkeydown=&quot;if(event.keyCode==13)event.keyCode=9&quot; /&gt;<br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" /><br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" />6.只能为数字(有闪动) <br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" />&lt;input type=&quot;text&quot; onkeyup=&quot;value=value.replace(/[^\\d]/g,&#39;&#39;) &quot; onbeforepaste=&quot;clipboardData.setData(&#39;text&#39;,clipboardData.getData(&#39;text&#39;).replace(/[^\\d]/g,&#39;&#39;))&quot; /&gt;<br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" /><br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" />7.只能为数字(无闪动) <br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" />&lt;input type=&quot;text&quot; style=&quot;ime-mode:disabled&quot; onkeydown=&quot;if(event.keyCode==13)event.keyCode=9&quot; onkeypress=&quot;if ((event.keyCode&lt;48 || event.keyCode&gt;57)) event.returnValue=false&quot; /&gt;<br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" /><br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" />8.只能输入英文和数字(有闪动) <br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" />&lt;input type=&quot;text&quot; onkeyup=&quot;value=value.replace(/[\\W]/g,&#39;&#39;)&quot; onbeforepaste=&quot;clipboardData.setData(&#39;text&#39;,clipboardData.getData(&#39;text&#39;).replace(/[^\\d]/g,&#39;&#39;))&quot; /&gt;<br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" /><br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" />9.屏蔽输入法 <br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" />&lt;input type=&quot;text&quot; name=&quot;url&quot; style=&quot;ime-mode:disabled&quot; onkeydown=&quot;if(event.keyCode==13)event.keyCode=9&quot; /&gt; <br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" /><br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" />10. 只能输入 数字，小数点，减号（-） 字符(无闪动) <br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" />&lt;input onkeypress=&quot;if (event.keyCode!=46 &amp;&amp; event.keyCode!=45 &amp;&amp; (event.keyCode&lt;48 || event.keyCode&gt;57)) event.returnValue=false&quot; /&gt; <br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" /><br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" />11. 只能输入两位小数，三位小数(有闪动) <br style=\"font-family:宋体;background-color:#ffffff;color:#666666;font-size:14px;line-height:24px;\" />&lt;input type=&quot;text&quot; maxlength=&quot;9&quot; onkeyup=&quot;if(value.match(/^\\d{3}$/))value=value.replace(value,parseInt(value/10)) ;value=value.replace(/\\.\\d*\\./g,&#39;.&#39;)&quot; onkeypress=&quot;if((event.keyCode&lt;48 || event.keyCode&gt;57) &amp;&amp; event.keyCode!=46 &amp;&amp; event.keyCode!=45 || value.match(/^\\d{3}$/) || /\\.\\d{3}$/.test(value)) {event.returnValue=false}&quot; /&gt;</p>',2,10000,'',0,1,'',''),(19,'<p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">下面列了五个例子来详细说明，这几个例子的主要功能是：在5秒后，自动跳转到同目录下的hello.html（根据自己需要自行修改）文件。<br /><br /><strong>1) html的实现</strong></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">&lt;head&gt; <br />&lt;meta http-equiv=&quot;refresh&quot; content=&quot;10&quot;&gt;<br />&lt;meta http-equiv=&quot;refresh&quot; content=&quot;5;url=&quot;http://www.97zzw.com&quot;&gt; &nbsp;<br />&lt;/head&gt;<br /><br />优点：简单<br /><br />缺点：Struts Tiles中无法使用</p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\"><br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\"><strong>2) javascript的实现</strong></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">&lt;script language=&quot;javascript&quot; type=&quot;text/javascript&quot;&gt; &nbsp;<br />window.location.href=&#39;hello.html&#39;; &nbsp;<br />setTimeout(&quot;javascript:location.href=&#39;http://www.97zzw.com&#39;&quot;, 5000); &nbsp;<br />&lt;/script&gt;<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">优点：灵活，可以结合更多的其他功能<br /><br />缺点：受到不同浏览器的影响</p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\"><br /><strong>3) 结合了倒数的javascript实现（IE）</strong><br /><br />&lt;span id=&quot;totalSecond&quot;&gt;5&lt;/span&gt; <br />&lt;script language=&quot;javascript&quot; type=&quot;text/javascript&quot;&gt; <br />var second = totalSecond.innerText; &nbsp;<br />setInterval(&quot;redirect()&quot;, 1000); &nbsp;<br />function redirect(){ &nbsp;<br />totalSecond.innerText=--second; &nbsp;<br />if(second&lt;0) location.href=&#39;http://www.97zzw.com&#39;;<br />} &nbsp;<br />&lt;/script&gt;<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">优点：更人性化<br /><br />缺点：firefox不支持（firefox不支持span、div等的innerText属性）<br /><br /><strong>3&#39;) 结合了倒数的javascript实现（firefox）</strong><br /><br />&lt;script language=&quot;javascript&quot; type=&quot;text/javascript&quot;&gt;<br />var second = document.getElementById(&#39;totalSecond&#39;).textContent;<br />setInterval(&quot;redirect()&quot;, 1000);<br />function redirect() &nbsp; { &nbsp;<br />document.getElementById(&#39;totalSecond&#39;).textContent = --second; &nbsp;<br />if (second &lt; 0) location.href = &#39;http://www.97zzw.com&#39;; &nbsp;} <br />&lt;/script&gt;<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\"><strong>4) 解决Firefox不支持innerText的问题</strong></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">&lt;span id=&quot;totalSecond&quot;&gt;5&lt;/span&gt; <br />&lt;script language=&quot;javascript&quot; type=&quot;text/javascript&quot;&gt; &nbsp;<br /> if(navigator.appName.indexOf(&quot;Explorer&quot;) &gt; -1){ &nbsp;<br />document.getElementById(&#39;totalSecond&#39;).innerText = &quot;my text innerText&quot;; <br /> } else{ &nbsp;<br /> document.getElementById(&#39;totalSecond&#39;).textContent = &quot;my text textContent&quot;; &nbsp;<br /> } &nbsp;<br /> &lt;/script&gt;<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\"><strong>5) 整合3)和3&#39;)</strong></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">&lt;span id=&quot;totalSecond&quot;&gt;5&lt;/span&gt; &nbsp; <br />&lt;script language=&quot;javascript&quot; type=&quot;text/javascript&quot;&gt;<br />var second = document.getElementById(&#39;totalSecond&#39;).textContent; <br />if (navigator.appName.indexOf(&quot;Explorer&quot;) &gt; -1) &nbsp;{ &nbsp;<br /> second = document.getElementById(&#39;totalSecond&#39;).innerText;<br />} else { &nbsp;<br /> &nbsp; &nbsp;second = document.getElementById(&#39;totalSecond&#39;).textContent; &nbsp;<br /> } &nbsp; &nbsp; <br />setInterval(&quot;redirect()&quot;, 1000); &nbsp;<br />function redirect() { <br />if (second &lt; 0) { &nbsp;<br /> &nbsp; &nbsp;location.href = &#39;http://www.97zzw.com&#39;; &nbsp;<br /> } else { &nbsp;<br /> &nbsp; &nbsp; if (navigator.appName.indexOf(&quot;Explorer&quot;) &gt; -1) { &nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp;document.getElementById(&#39;totalSecond&#39;).innerText = second--; &nbsp;<br /> &nbsp; &nbsp; } else { &nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp; document.getElementById(&#39;totalSecond&#39;).textContent = second--; &nbsp;<br /> &nbsp; &nbsp; } &nbsp;<br /> &nbsp; } &nbsp;<br />} &nbsp;</p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">&lt;/script&gt;</p>',2,10000,'',0,1,'',''),(20,'<div>代码如下:<br /></div><div id=\"phpcode3\"><!--[if IE]><script type=\"text/javascript\" src=\"97zzw.js\"></script><![endif]--></div><p><br style=\"font-family:tahoma, geneva, sans-serif;font-size:14px;background-color:#ffffff;line-height:22px;\" />用上面这段代码，只有使用IE时加载97zzw.js。这点很重要，因为你什么都加载的话会浪费带宽，打开页面速度就会慢！如果专对IE6就改成if IE6。 <br style=\"font-family:tahoma, geneva, sans-serif;font-size:14px;background-color:#ffffff;line-height:22px;\" /><br style=\"font-family:tahoma, geneva, sans-serif;font-size:14px;background-color:#ffffff;line-height:22px;\" /></p><div>代码如下:</div><div id=\"phpcode4\"><br /><!--[if IE 6]><br /><script type=\"text/javascript\" src=\"resources/scripts/DD_belatedPNG_0.0.7a.js\"></script><br /><script type=\"text/javascript\"><br />DD_belatedPNG.fix(\'.png_bg, img, li\'); <br /></script><br /><![endif]--><br /></div><p><br style=\"font-family:tahoma, geneva, sans-serif;font-size:14px;background-color:#ffffff;line-height:22px;\" />或者解决ie不同版本布局问题，下面仅仅在ie7中加载97zzw.css <br style=\"font-family:tahoma, geneva, sans-serif;font-size:14px;background-color:#ffffff;line-height:22px;\" /><br style=\"font-family:tahoma, geneva, sans-serif;font-size:14px;background-color:#ffffff;line-height:22px;\" /></p><div>代码如下:</div><div id=\"phpcode5\"><br /><!--[if lte IE 7]><br /><link rel=\"stylesheet\" href=\"97zzw.css\" type=\"text/css\" media=\"screen\" /><br /><![endif]--></div><p><br /></p>',2,10000,'',0,1,'24',''),(25,'<p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">nofollow 是一个HTML标签的属性值。这个标签的意义是告诉<span style=\"color:#0066cc;border-bottom-width:1px;border-bottom-style:dotted;border-bottom-color:#0099ff;text-decoration:none;text-decoration:underline;\">搜索引擎</span>&quot;不要追踪此网页上的链接&quot;或&quot;不要追踪此特定链接。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\"><strong>　　nofollow简介</strong><br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　nofollow是一个HTML标签的属性值。它的出现为网站管理员提供了一种方式，即告诉搜索引擎&quot;不要追踪此网页上的链接&quot;或&quot;不要追踪此特定链接&quot;。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　这个标签的意义是告诉搜索引擎这个链接不是经过作者信任的，所以这个链接不是一个信任票。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　简单的说就是，如果A网页上有一个链接指向B网页，但A网页给这个链接加上了 rel=&quot;nofollow&quot; 标注，则搜索引擎不把A网页计算入B网页的反向链接。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　搜索引擎看到这个标签就可能减少或完全取消链接的权重传递。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\"><strong>　　nofollow 标签的发展</strong><br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　最初，&quot;Nofollow&quot;属性出现在网页级元标记中，用于告诉搜索引擎不要追踪(即抓取)网页上的任何出站链接。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　但是，在将&quot;Nofollow&quot;用于各个链接前，我们需要完成大量的工作(例如，将链接重定向至 robots.txt中拦截的网址)，以阻止蜘蛛追踪某网页上的各个链接。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　因此，我们创建了rel属性的&quot;Nofollow&quot;属性值。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　这可让网站管理员更精确地进行控制：无需告诉搜索引擎和漫游器不要追踪该网页的所有链接，只需轻松地告诉蜘蛛不要抓取某特定链接即可。</p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\"><br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\"><strong>　　nofollow的原因与作用</strong><br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　我们都知道，反向链接即外链是搜索引擎给网站排名的一个重要因素。为了添加反向链接，SEO作弊者会在论坛和博客等大量发布带无关链接的内容。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　这些垃圾链接的存在给搜索引擎对网页质量的评估造成一定程度的麻烦，可以说nofollow是一个非常好的“垃圾链接防火墙”。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　正是百度、谷歌、Yahoo、MSN 为了应对垃圾链接(Spam)引入的一个属性，此属性目前应该被广泛采用。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　Nofollow标签的作用有两方面，简单的说，一是不给链接导入权重，降低此链接的权重，二是使添加nofollow的部分内容不参与网站排名，便于集中网站权重。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\"><strong>　　nofollow标签使用方法</strong><br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　nofollow标签通常有两种使用方法：<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　1、将&quot;nofollow&quot;写在网页上的meta标签上，用来告诉搜索引擎不要抓取网页上的所有外部和包括内部链接。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　2、将&quot;nofollow&quot;放在超链接中，告诉搜索引擎不要抓取特定的链接。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　nofollow还有另外的一些写法：<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　Meta robots标签必须放在&lt;head&gt;&lt;/head&gt;和之间，格式：<span class=\"webkit-html-tag\" style=\"font-family:monospace;font-size:medium;\">&lt;meta <span class=\"webkit-html-attribute-name\">name</span>=&quot;<span class=\"webkit-html-attribute-value\">robots</span>&quot; <span class=\"webkit-html-attribute-name\">content</span>=&quot;<span class=\"webkit-html-attribute-value\">index,nofollow</span>&quot; /&gt;</span><span style=\"font-family:monospace;color:#000000;font-size:medium;\"></span><br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　content中的值决定允许抓取的类型，必须同时包含两个值：<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　是否允许索引(index)和是否跟踪链接(follow，也可以理解为是否允许沿着网页中的超级链接继续抓取)。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　共有4个参数可选，组成4个组合：<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　1. index,follow：允许抓取本页，允许跟踪链接。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　2. index,nofollow：允许抓取本页，但禁止跟踪链接。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　3. noindex,follow：禁止抓取本页，但允许跟踪链接。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　4. noindex,nofllow：禁止抓取本页，同时禁止跟踪本页中的链接。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\"><strong>　　nofollow使用示例：</strong><br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　如某博客上有垃圾评论：<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　以下操作，即进行了 nofollow：<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\"><strong>　　nofollow标签检查</strong><br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　打开站长工具网站，在“SEO信息查询”中选择“友情链接检测”。赶快去查询下你的友情连接是否可靠吧!是否被人偷偷的添加了nofollow标签。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\"><strong>　　nofollow的拓展应用</strong><br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　你可以为站点的内部链接添加 nofollow。比如：联系我们、关于我们、隐私保护、公司简介、网站后台等的链接可以把它们nofollow 掉。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　这样做，首页的PR值就不会传输给他们。因为，他们有太多的PR值显然没用;<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　另外网站上的一些广告，因为这些广告只是让其带来IP和流量，而不是让其加重搜索引擎的权重，所以也可以加上这个nofollow标签，这样不会影响其本来意愿。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\"><strong>　　什么是external nofollow</strong><br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　external nofollow是比nofollow更专业的写法，即明确指出链接为外部链接，爬虫可以略过。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\"><strong>　　搜索引擎的支持</strong><br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　以前谷歌、和必应Bing支持，现在百度通过百度站长俱乐部向外宣布百度也支持nofollow标签。youdao，soso也支持该标签，不支持的有Yahoo和sogou!<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\"><strong>　　友链中的nofollow</strong><br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　看了以上关于nofollow标签的说明，相信各位网站建设者对于nofollow标签都已经有了一定的了解.<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　这里要说的是，站长在交换友情链接的时候应当留意下与你交换链接的站点有没有在其所添加的友情链接上写上nofollow标签，如果在友链中写上了nofollow标签，它会阻止蜘蛛进行跟踪，同时也阻止了权重的传递。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　查询的方法也很简单，我们只要直接打开对方站点页面的源文件，查看其中nofollow的事情情况。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　当然也并不是一定不换，如果是一些流量大的站点可以换，虽然有该标签，但是这也可以为我们的站点带来一定的流量。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　就如同我们知道百度经验的外链有nofollow标签，但是百度经验的外链可以很好的为我们带来流量，我们也是可以适当的建设的。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　google支持的深度<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　1、不可信赖的内容</p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　2、付费链接</p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　3、按优先级别进行抓取<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　搜索引擎漫游器无法作为成员登录或注册您的网站，因此没有理由邀请 Googlebot 追踪“在此注册”或“登录”链接。对这些链接使用 nofollow，可让 Googlebot 抓取您希望编入 Google 索引的其他网页。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　不过，与主要依靠包含 nofollow 的链接区分抓取优先级相比，稳固的信息架构(直观的导航界面、用户友好和搜索引擎友好的网址等等)可能是更高效的资源。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　目前google对nofollow支持的深度已经相当完美，最近，百度对nofollow的优先级作用已经得到了证实。百度站长俱乐部里网友也就这一问题向百度提出疑问，经过官方的回答，也证实了这一点。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\"><strong>　　nofollow与external nofollow</strong><br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　external nofollow其实这个属性就是告诉搜索引擎不要跟踪这个链接，也就是这个链接很可能被视为一个垃圾链接，这也主要是应对 Spam而增设的一种属性。<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　rel=“nofollow”属性是谷歌为了应对垃圾链接而引入的一个属性值，被各大搜索引擎引用!rel=“external nofollow”只是更相对于rel=“nofollow”参数更加规范一些而已!<br /></p><p style=\"padding:0px;color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;margin-top:0px;margin-bottom:0px;\">　　rel=“external nofollow”与rel=“nofollow”其功能就中文译文”不要读取” 及”外部链接不要读取”的意思!</p><p><br /></p>',2,10000,'',0,1,'',''),(21,'<p style=\"text-indent:2em;\">问题产生描述：</p><p style=\"text-indent:2em;\">DreamWeaver文件保存时，提示这样的问题&quot;发生共享违例&quot;，具体如图：<br /></p><p style=\"text-indent:2em;\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5419d2489e.png\" style=\"border-style:none;max-width:680px;\" /><br /></p><p style=\"text-indent:2em;\">修改HTML文件后，就是保存不了，一保存就提示&quot;路径+时发生共享违例&quot;。起初好好的，预览网页后，再修改，之后就不能保存了。只要一按ctrl+s,就会有&quot;发生共享违例&quot;的错误提示.<br /></p><p style=\"text-indent:2em;\">问题产生的原因：<br /></p><p style=\"text-indent:2em;\">&quot;访问**时发生共享违例&quot;的原因：肯定有文件被使用……<br /></p><p style=\"text-indent:2em;\">因为这个网页文件我在调试状态，改一下马上上传，然后传的过程中这边还在编辑，有的时候网络原因，FTP的文件卡在那里了，你这边编辑完了还要保存，一端上传没结束，这边又要把新修改的保存，就出现了“共享违例”的问题，解决方法很简单 把CUTFTP关闭 就可以保存了 然后再上传，由于其他原因出现的共享违例可以由此例延伸一下，无非都是因为同时调用一个文件或程序，一端没结束，另一端又试图进行写入的更新保存，知道了问题的原因，解决起来就方便多了……<br /></p><p style=\"text-indent:2em;\">问题的解决方案：<br /></p><p style=\"text-indent:2em;\">1.关闭我预览网页的浏览器，再进行网页保存、网页浏览都没问题了……<br /></p><p style=\"text-indent:2em;\">2.若你电脑上安了&quot;QQ电脑管家&quot;之类的软件，找到不能保存的文件→右键→QQ电脑管家→文件解锁。问题亦可轻松解决……<br /></p><p style=\"text-indent:2em;\">这样问题就OK了！</p><p><br /></p>',2,10000,'',0,1,'',''),(22,'<p>问题提出：在线问答网友提问，请问专家DreamWeaver 8中如何批量删除超级链接?<br /></p><p> &nbsp; &nbsp; 电脑软硬件应用网回答：解决办法，依次打开DreamWeaver-编辑-查找和替换（或可直接使用快捷键，Ctrl+F）-搜索范围选择“源代码”，在查找框内写入“&lt;a href=&quot;.*&quot;&gt;”，替换框内请留空。然后选择“使用正则表达式”前的勾。最后替换全部即可。详细如下图：<br /></p><p style=\"text-align:center\"><img alt=\"DreamWeaver中如何批量删除超级链接\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c541d5c23ae.jpg\" style=\"border-style:none;max-width:680px;\" /></p>',2,10000,'',0,1,'',''),(23,'<p style=\"text-align:center\"><img alt=\"分享前端JavaScript中常用的使用小技巧语句\" class=\"ShareImg\" id=\"pic\" original=\"/uploads/allimg/130205/2216194264-0.jpg\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c543b70c703.jpg\" style=\"border:0px;max-width:680px;margin:0px;padding:0px;list-style-type:none;width:680px;height:130px;color:#666666;font-size:13px;background-color:#ebebeb;\" /></p><p>前面我们分享过前端小技巧和JavaScript刷新页面及框架，里面也时不时的提到JavaScript。收集了一些JavaScript小技巧脚本代码。<br /></p><p>JavaScript是前端攻城师经常要用到的，属于网络的脚本语言。JavaScript 被用来改进设计、验证表单、检测浏览器、创建cookies，等等等等。是因特网上最流行的脚本语言，并且可在所有主要的浏览器中运行。它是通过嵌入或调入在标准的HTML语言中实现的。它的出现弥补了HTML语言的缺陷，它是Java与HTML折衷的选择，具有几个基本特点：1、是一种脚本编写语言；2、基于对象的语言；3、简单性；4、安全性；5、动态性的；6、跨平台性。<br /></p><p>JavaScript的出现，它可以使得信息和用户之间不仅只是一种显示和浏览的关系，而是实现了一种实时的、动态的、可交式的表达能力。从而基于CGI静态的HTML页面将被可提供动态实时信息，并对客户操作进行反应的Web页面的取代。JavaScript脚本正是满足这种需求而产生的语言。它深受广泛用户的喜爱的欢迎。下面每一项都是JS中的小技巧，但十分的实用！</p><p><br /></p><p>1. document.write(&quot;&quot;); 输出语句<br style=\"margin:0px;padding:0px;list-style-type:none;\" />2. JS中的注释为//<br style=\"margin:0px;padding:0px;list-style-type:none;\" />3. 传统的HTML文档顺序是:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp;document-&gt;html-&gt;(head,body)<br style=\"margin:0px;padding:0px;list-style-type:none;\" />4. 一个浏览器窗口中的DOM顺序是:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp;window-&gt;(navigator,screen,history,location,document)<br style=\"margin:0px;padding:0px;list-style-type:none;\" />5. 得到表单中元素的名称和值:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp;document.getElementById(&quot;表单中元素的ID号&quot;).name(或value)<br style=\"margin:0px;padding:0px;list-style-type:none;\" />6. 一个小写转大写的JS:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp;document.getElementById(&quot;output&quot;).value=document.getElementById(&quot;input&quot;).value.toUpperCase();<br style=\"margin:0px;padding:0px;list-style-type:none;\" />7. JS中的值类型:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp;String,Number,Boolean,Null,Object,Function<br style=\"margin:0px;padding:0px;list-style-type:none;\" />8. JS中的字符型转换成数值型:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp;parseInt(),parseFloat()<br style=\"margin:0px;padding:0px;list-style-type:none;\" />9. JS中的数字转换成字符型:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp;(&quot;&quot; 变量)<br style=\"margin:0px;padding:0px;list-style-type:none;\" />10. JS中的取字符串长度是:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;(length)<br style=\"margin:0px;padding:0px;list-style-type:none;\" />11. JS中的字符与字符相连接使用 号.<br style=\"margin:0px;padding:0px;list-style-type:none;\" />12. JS中的比较操作符有:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;==等于,!=不等于,&gt;,&gt;=,&lt;.&lt;=<br style=\"margin:0px;padding:0px;list-style-type:none;\" />13. JS中声明变量使用:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;var来进行声明<br style=\"margin:0px;padding:0px;list-style-type:none;\" />14. JS中的判断语句结构:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;if(condition){}else{}<br style=\"margin:0px;padding:0px;list-style-type:none;\" />15. JS中的循环结构:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;for([initial expression];[condition];[upadte expression]) {inside loop}<br style=\"margin:0px;padding:0px;list-style-type:none;\" />16. 循环中止的命令是:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;break<br style=\"margin:0px;padding:0px;list-style-type:none;\" />17. JS中的函数定义:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;function functionName([parameter],...){statement[s]}<br style=\"margin:0px;padding:0px;list-style-type:none;\" />18. 当文件中出现多个form表单时.可以用document.forms[0],document.forms[1]来代替.<br style=\"margin:0px;padding:0px;list-style-type:none;\" />19. 窗口:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;打开窗口window.open(), 关闭一个窗口:window.close(), 窗口本身:self<br style=\"margin:0px;padding:0px;list-style-type:none;\" />20. 状态栏的设置:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;window.status=&quot;字符&quot;;<br style=\"margin:0px;padding:0px;list-style-type:none;\" />21. 弹出提示信息:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;window.alert(&quot;字符&quot;);<br style=\"margin:0px;padding:0px;list-style-type:none;\" />22. 弹出确认框:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;window.confirm();<br style=\"margin:0px;padding:0px;list-style-type:none;\" />23. 弹出输入提示框:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;window.prompt();<br style=\"margin:0px;padding:0px;list-style-type:none;\" />24. 指定当前显示链接的位置:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;window.location.href=&quot;URL&quot;<br style=\"margin:0px;padding:0px;list-style-type:none;\" />25. 取出窗体中的所有表单的数量:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;document.forms.length<br style=\"margin:0px;padding:0px;list-style-type:none;\" />26. 关闭文档的输出流:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;document.close();<br style=\"margin:0px;padding:0px;list-style-type:none;\" />27. 字符串追加连接符: =<br style=\"margin:0px;padding:0px;list-style-type:none;\" />28. 创建一个文档元素:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;document.createElement(),document.createTextNode()<br style=\"margin:0px;padding:0px;list-style-type:none;\" />29. 得到元素的方法:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;document.getElementById()<br style=\"margin:0px;padding:0px;list-style-type:none;\" />30. 设置表单中所有文本型的成员的值为空:<br style=\"margin:0px;padding:0px;list-style-type:none;\" />var form = window.document.forms[0]<br style=\"margin:0px;padding:0px;list-style-type:none;\" />for (var i = 0; i&lt;form.elements.length;i ){<br style=\"margin:0px;padding:0px;list-style-type:none;\" />if (form.elements.type == &quot;text&quot;){<br style=\"margin:0px;padding:0px;list-style-type:none;\" />form.elements.value = &quot;&quot;;<br style=\"margin:0px;padding:0px;list-style-type:none;\" />}<br style=\"margin:0px;padding:0px;list-style-type:none;\" />}<br style=\"margin:0px;padding:0px;list-style-type:none;\" />31. 复选按钮在JS中判断是否选中:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;document.forms[0].checkThis.checked<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;(checked属性代表为是否选中返回TRUE或FALSE)<br style=\"margin:0px;padding:0px;list-style-type:none;\" />32. 单选按钮组(单选按钮的名称必须相同):<br style=\"margin:0px;padding:0px;list-style-type:none;\" />取单选按钮组的长度document.forms[0].groupName.length<br style=\"margin:0px;padding:0px;list-style-type:none;\" />33. 单选按钮组判断是否被选中也是用checked.<br style=\"margin:0px;padding:0px;list-style-type:none;\" />34. 下拉列表框的值:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;document.forms[0].selectName.options[n].value <br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;(n有时用下拉列表框名称加上.selectedIndex来确定被选中的值)<br style=\"margin:0px;padding:0px;list-style-type:none;\" />35. 字符串的定义:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;var myString = new String(&quot;This is lightsword&quot;);<br style=\"margin:0px;padding:0px;list-style-type:none;\" />36. 字符串转成大写:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;string.toUpperCase(); 字符串转成小写:string.toLowerCase();<br style=\"margin:0px;padding:0px;list-style-type:none;\" />37. 返回字符串2在字符串1中出现的位置:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;String1.indexOf(&quot;String2&quot;)!=-1则说明没找到.<br style=\"margin:0px;padding:0px;list-style-type:none;\" />38. 取字符串中指定位置的一个字符:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;StringA.charAt(9);<br style=\"margin:0px;padding:0px;list-style-type:none;\" />39. 取出字符串中指定起点和终点的子字符串:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;stringA.substring(2,6);<br style=\"margin:0px;padding:0px;list-style-type:none;\" />40. 数学函数:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;Math.PI(返回圆周率),Math.SQRT2(返回开方),Math.max(value1,value2)返回两个数中的最大值,Math.pow(value1,10)返回value1的十次方,Math.round(value1)四舍五入函数,Math.floor(Math.random()*(n 1))返回随机数<br style=\"margin:0px;padding:0px;list-style-type:none;\" />41. 定义日期型变量:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;var today = new Date();<br style=\"margin:0px;padding:0px;list-style-type:none;\" />42. 日期函数列表:<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;dateObj.getTime()得到时间,dateObj.getYear()得到年份,dateObj.getFullYear()得到四位的年份,<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;dateObj.getMonth()得到月份,dateObj.getDate()得到日,dateObj.getDay()得到日期几,<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;dateObj.getHours()得到小时,dateObj.getMinutes()得到分,dateObj.getSeconds()得到秒,<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;dateObj.setTime(value)设置时间,dateObj.setYear(val)设置年,<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;dateObj.setMonth(val)设置月,dateObj.setDate(val)设置日,<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;dateObj.setDay(val)设置星期几,dateObj.setHours设置小时,dateObj.setMinutes(val)设置分,<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;dateObj.setSeconds(val)设置秒 [注意:此日期时间从0开始计]<br style=\"margin:0px;padding:0px;list-style-type:none;\" />43. FRAME的表示方式: <br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;[window.]frames[n].ObjFuncVarName,frames[&quot;frameName&quot;].ObjFuncVarName,frameName.ObjFuncVarName<br style=\"margin:0px;padding:0px;list-style-type:none;\" />44. parent代表父亲对象,top代表最顶端对象<br style=\"margin:0px;padding:0px;list-style-type:none;\" />45. 打开子窗口的父窗口为:opener<br style=\"margin:0px;padding:0px;list-style-type:none;\" />46. 表示当前所属的位置:this<br style=\"margin:0px;padding:0px;list-style-type:none;\" />47. 当在超链接中调用JS函数时用:(javascript :)来开头后面加函数名<br style=\"margin:0px;padding:0px;list-style-type:none;\" />48. 在老的浏览器中不执行此JS:&lt;!-- //--&gt;<br style=\"margin:0px;padding:0px;list-style-type:none;\" />49. 引用一个文件式的JS:&lt;script type=&quot;text/javascript&quot; src=&quot;aaa.js&quot;&gt;&lt;/script&gt;<br style=\"margin:0px;padding:0px;list-style-type:none;\" />50. 指定在不支持脚本的浏览器显示的HTML:&lt;noscript&gt;&lt;/noscript&gt;<br style=\"margin:0px;padding:0px;list-style-type:none;\" />51. 当超链和onCLICK事件都有时,则老版本的浏览器转向a.html,否则转向b.html.<br style=\"margin:0px;padding:0px;list-style-type:none;\" /> &nbsp; &nbsp; &nbsp;例:&lt;a href=&quot;a.html&quot; onclick=&quot;location.href=&#39;b.html&#39;;return false&quot;&gt;dfsadf&lt;/a&gt;<br style=\"margin:0px;padding:0px;list-style-type:none;\" />52. JS的内建对象有:<br style=\"margin:0px;padding:0px;list-style-type:none;\" />Array,Boolean,Date,Error,EvalError,<br style=\"margin:0px;padding:0px;list-style-type:none;\" />Function,Math,Number,Object,RangeError,ReferenceError,<br style=\"margin:0px;padding:0px;list-style-type:none;\" />RegExp,String,SyntaxError,TypeError,URIError<br style=\"margin:0px;padding:0px;list-style-type:none;\" />53. JS中的换行:\\n</p><p><br /></p>',2,10000,'',0,1,'',''),(24,'<p>教程虽然用到AI，不过绘制的仅是线稿及简单的色块，没有这款软件的完全可以在PS中完成。面具构造并不复杂，不过质感部分刻画比较麻烦，想省时间的话可以直接使用相关的金属素材。</p><p>最终效果</p><center><img border=\"0\" height=\"488\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5445ee39c5.jpg\" width=\"600\" style=\"border-style:none;max-width:680px;\" /></center><p>1、打开Illustrator新建一个文档，首先我们应该有个好的参考，在中间创建圆形和线条。我们现在只创建一半就可以，用钢笔工具勾勒出大致的轮廓。</p><center><img border=\"0\" height=\"597\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5445f66d78.jpg\" width=\"600\" style=\"border-style:none;max-width:680px;\" /></center><p>2、将面具的每个部位都创建成单独的形状，这有利于我们后面在Photoshop中进行填色和填充纹理。</p><center><img border=\"0\" height=\"612\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5445f89318.jpg\" width=\"525\" style=\"border-style:none;max-width:680px;\" /></center><center><img border=\"0\" height=\"599\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5445fa7da7.jpg\" width=\"536\" style=\"border-style:none;max-width:680px;\" /></center><center><img border=\"0\" height=\"630\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5445fc68ae.jpg\" width=\"539\" style=\"border-style:none;max-width:680px;\" /></center><p>3、所有的形状都创建完了之后，使用不同明度的灰色填充来看看一切是否跟想象中的一样。</p><center><img border=\"0\" height=\"623\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5445fe8dd9.jpg\" width=\"522\" style=\"border-style:none;max-width:680px;\" /></center><p>4、将创建好的半个面具复制一份，对称到左边。</p><center><img border=\"0\" height=\"598\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5446012212.jpg\" width=\"462\" style=\"border-style:none;max-width:680px;\" /></center><p>5、在Photoshop中将面具的每一部分都粘贴为单独的图层，并且填充上颜色。钢铁侠的基本颜色是金色和紫色。像下图一样继续添加一些阴影和微妙的细节。</p><center><img border=\"0\" height=\"692\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c544602b9ee.jpg\" width=\"600\" style=\"border-style:none;max-width:680px;\" /></center><p>6、为面具的每一个部位上方都添加一个图层，设置为剪贴蒙版（图层&gt;创建剪贴蒙版），将每个空白图层都填充为黑色，将图层混合模式设置为颜色减淡。选择非常柔软的白色画笔，不透明度选择10-20%，开始在一些区域绘制出高光。</p><center><img border=\"0\" height=\"749\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c544603cd3c.jpg\" width=\"600\" style=\"border-style:none;max-width:680px;\" /></center><p>7、重复上一步的操作，不过这次图层的混合模式改为滤色，在图层上绘制出更多高光。</p><center><img border=\"0\" height=\"780\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5446061283.jpg\" width=\"600\" style=\"border-style:none;max-width:680px;\" /></center><p>8、添加更多的高光，尤其是嘴部和紫色部分。</p><center><img border=\"0\" height=\"763\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c54460836a7.jpg\" width=\"600\" style=\"border-style:none;max-width:680px;\" /></center><p>9、接下来我们开始添加纹理。仍然记住为每一部分都加上纹理，移动纹理的位置来增加立体感。这里我用到的是一张螺纹金属材质。</p><center><img height=\"910\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c54460a3e30.jpg\" width=\"674\" style=\"border:0px none;max-width:680px;margin:0px;padding:0px;list-style:none;width:600px;height:689px;\" /></center><center><img border=\"0\" height=\"739\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c54460ede78.jpg\" width=\"600\" style=\"border-style:none;max-width:680px;\" /></center><p>10、创建两个眼睛形状，填充为蓝色，再添加上基本的纹理，最后再应用一定的高斯模糊。</p><center><img border=\"0\" height=\"787\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c544611cec7.jpg\" width=\"600\" style=\"border-style:none;max-width:680px;\" /></center><p>11、在眼睛图层上方新建一个图层，跟眼睛图层一起创建一个图层组，将图层组的混合模式设置为滤色。使用柔边白色画笔在眼睛上绘制出两个亮点。在图层组里新建一个图层，绘制出两个蓝色亮点。</p><center><img border=\"0\" height=\"719\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5446143554.jpg\" width=\"600\" style=\"border-style:none;max-width:680px;\" /></center><p>12、复制图层组，删掉蓝色图层。将图层组的混合模式设置为颜色减淡。清除掉两个白色亮点图层中的内容，创建两个更小但是更亮的亮点。颜色减淡模式将会使这种光效显得非常真实。</p><center><img border=\"0\" height=\"748\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c54461679f0.jpg\" width=\"600\" style=\"border-style:none;max-width:680px;\" /></center><p>最终效果：</p><center><img border=\"0\" height=\"488\" src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5445ee39c5.jpg\" width=\"600\" style=\"border-style:none;max-width:680px;\" /></center><p><br /></p>',2,10000,'',0,1,'',''),(29,'<p style=\"padding:0px;font-size:14px;line-height:25px;background-color:#ffffff;color:#222222;margin-top:0px;margin-bottom:0px;\">下面列了五个例子来详细说明，这几个例子的主要功能是：在5秒后，自动跳转到同目录下的hello.html（根据自己需要自行修改）文件。<br /><br /><strong>1) html的实现</strong></p><p style=\"padding:0px;font-size:14px;line-height:25px;background-color:#ffffff;color:#222222;margin-top:0px;margin-bottom:0px;\">&lt;head&gt; <br />&lt;meta http-equiv=&quot;refresh&quot; content=&quot;10&quot;&gt;<br />&lt;meta http-equiv=&quot;refresh&quot; content=&quot;5;url=&quot;http://www.<span style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\">abc3210</span>.com&quot;&gt; &nbsp;<br />&lt;/head&gt;<br /><br />优点：简单<br /><br />缺点：Struts Tiles中无法使用</p><p style=\"padding:0px;font-size:14px;line-height:25px;background-color:#ffffff;color:#222222;margin-top:0px;margin-bottom:0px;\"><br /></p><p style=\"padding:0px;font-size:14px;line-height:25px;background-color:#ffffff;color:#222222;margin-top:0px;margin-bottom:0px;\"><strong>2) javascript的实现</strong></p><p style=\"padding:0px;font-size:14px;line-height:25px;background-color:#ffffff;color:#222222;margin-top:0px;margin-bottom:0px;\">&lt;script language=&quot;javascript&quot; type=&quot;text/javascript&quot;&gt; &nbsp;<br />window.location.href=&#39;hello.html&#39;; &nbsp;<br />setTimeout(&quot;javascript:location.href=&#39;http://www.abc3210.com&#39;&quot;, 5000); &nbsp;<br />&lt;/script&gt;<br /></p><p style=\"padding:0px;font-size:14px;line-height:25px;background-color:#ffffff;color:#222222;margin-top:0px;margin-bottom:0px;\">优点：灵活，可以结合更多的其他功能<br /><br />缺点：受到不同浏览器的影响</p><p style=\"padding:0px;font-size:14px;line-height:25px;background-color:#ffffff;color:#222222;margin-top:0px;margin-bottom:0px;\"><br /><strong>3) 结合了倒数的javascript实现（IE）</strong><br /><br />&lt;span id=&quot;totalSecond&quot;&gt;5&lt;/span&gt; <br />&lt;script language=&quot;javascript&quot; type=&quot;text/javascript&quot;&gt; <br />var second = totalSecond.innerText; &nbsp;<br />setInterval(&quot;redirect()&quot;, 1000); &nbsp;<br />function redirect(){ &nbsp;<br />totalSecond.innerText=--second; &nbsp;<br />if(second&lt;0) location.href=&#39;http://www.abc3210.com&#39;;<br />} &nbsp;<br />&lt;/script&gt;<br /></p><p style=\"padding:0px;font-size:14px;line-height:25px;background-color:#ffffff;color:#222222;margin-top:0px;margin-bottom:0px;\">优点：更人性化<br /><br />缺点：firefox不支持（firefox不支持span、div等的innerText属性）<br /><br /><strong>3&#39;) 结合了倒数的javascript实现（firefox）</strong><br /><br />&lt;script language=&quot;javascript&quot; type=&quot;text/javascript&quot;&gt;<br />var second = document.getElementById(&#39;totalSecond&#39;).textContent;<br />setInterval(&quot;redirect()&quot;, 1000);<br />function redirect() &nbsp; { &nbsp;<br />document.getElementById(&#39;totalSecond&#39;).textContent = --second; &nbsp;<br />if (second &lt; 0) location.href = &#39;http://www.abc3210.com&#39;; &nbsp;} <br />&lt;/script&gt;<br /></p><p style=\"padding:0px;font-size:14px;line-height:25px;background-color:#ffffff;color:#222222;margin-top:0px;margin-bottom:0px;\"><strong>4) 解决Firefox不支持innerText的问题</strong></p><p style=\"padding:0px;font-size:14px;line-height:25px;background-color:#ffffff;color:#222222;margin-top:0px;margin-bottom:0px;\">&lt;span id=&quot;totalSecond&quot;&gt;5&lt;/span&gt; <br />&lt;script language=&quot;javascript&quot; type=&quot;text/javascript&quot;&gt; &nbsp;<br />if(navigator.appName.indexOf(&quot;Explorer&quot;) &gt; -1){ &nbsp;<br />document.getElementById(&#39;totalSecond&#39;).innerText = &quot;my text innerText&quot;; <br />} else{ &nbsp;<br />document.getElementById(&#39;totalSecond&#39;).textContent = &quot;my text textContent&quot;; &nbsp;<br />} &nbsp;<br />&lt;/script&gt;<br /></p><p style=\"padding:0px;font-size:14px;line-height:25px;background-color:#ffffff;color:#222222;margin-top:0px;margin-bottom:0px;\"><strong>5) 整合3)和3&#39;)</strong></p><p style=\"padding:0px;font-size:14px;line-height:25px;background-color:#ffffff;color:#222222;margin-top:0px;margin-bottom:0px;\">&lt;span id=&quot;totalSecond&quot;&gt;5&lt;/span&gt; &nbsp; <br />&lt;script language=&quot;javascript&quot; type=&quot;text/javascript&quot;&gt;<br />var second = document.getElementById(&#39;totalSecond&#39;).textContent; <br />if (navigator.appName.indexOf(&quot;Explorer&quot;) &gt; -1) &nbsp;{ &nbsp;<br />second = document.getElementById(&#39;totalSecond&#39;).innerText;<br />} else { &nbsp;<br /> &nbsp; second = document.getElementById(&#39;totalSecond&#39;).textContent; &nbsp;<br />} &nbsp; &nbsp; <br />setInterval(&quot;redirect()&quot;, 1000); &nbsp;<br />function redirect() { <br />if (second &lt; 0) { &nbsp;<br /> &nbsp; location.href = &#39;http://www.abc3210.com&#39;; &nbsp;<br />} else { &nbsp;<br /> &nbsp; &nbsp;if (navigator.appName.indexOf(&quot;Explorer&quot;) &gt; -1) { &nbsp;<br /> &nbsp; &nbsp; &nbsp; document.getElementById(&#39;totalSecond&#39;).innerText = second--; &nbsp;<br /> &nbsp; &nbsp;} else { &nbsp;<br /> &nbsp; &nbsp; &nbsp; &nbsp;document.getElementById(&#39;totalSecond&#39;).textContent = second--; &nbsp;<br /> &nbsp; &nbsp;} &nbsp;<br /> &nbsp;} &nbsp;<br />} &nbsp;</p><p style=\"padding:0px;font-size:14px;line-height:25px;background-color:#ffffff;color:#222222;margin-top:0px;margin-bottom:0px;\">&lt;/script&gt;</p>',2,10000,'',0,1,'',''),(30,'<p style=\"text-indent:2em;\">alt属性<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /> &nbsp; &nbsp; &nbsp; 为不能显示图像、窗体或applets的用户代理（UA），alt属性用来指定替换文字。替换文字的语言由lang属性指定。来源：How to specify alternate text.<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /> &nbsp; &nbsp; &nbsp; Alt属性（注意是“属性”而不是“标签”）包括替换说明，对于图像和图像热点是必须的。它只能用在img、area和input元素中（包括applet元素）。对于input元素，alt属性意在用来替换提交按钮的图片。比如：&lt;input type=&quot;image&quot; src=&quot;image.gif&quot; alt=&quot;Submit&quot; /&gt;.<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /> &nbsp; &nbsp; &nbsp; 使用alt属性是为了给那些不能看到你文档中图像的浏览者提供文字说明。这包括那些使用本来就不支持图像显示或者图像显示被关闭的浏览器的用户，视觉障碍的用户和使用屏幕阅读器的用户。替换文字是用来替代图像而不是提供额外说明文字的。<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /> &nbsp; &nbsp; &nbsp; 在写替换文字前仔细想想，保证那些文字确实为那些看不到图像的人提供了说明信息，并且在上下文中有意义。对于那些装饰性的图片可以使用空的值（alt=&quot;&quot;，引号中间没有空格），而不是使用不相关的替换文字比如“blue bullet”或者“spacer.gif”。不要忽略它，如果你忽略了，那么一些屏幕阅读器会直接阅读图像文件的文件名，那些文字浏览器，比如Lynx会显示图像文件的文件名，而那对于你的浏览者就没什么用了。<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /> &nbsp; &nbsp; &nbsp; &nbsp;包含文字的图像图片设置替换文字是最简单的，图像中包含的文字一般来说就可以作为alt属性值。<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /> &nbsp; &nbsp; &nbsp; &nbsp;至于替换文字的长度，看看WCAG 2.0（网站内容可用性指南2.0）是怎么说的：Alt属性值得长度必须少于100个英文字符或者用户必须保证替换文字尽可能的短。<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /> &nbsp; &nbsp; &nbsp; 即使你想让它显示为提示（tool tip），也不要给文字元素使用alt属性，这并不是它的用法。至今据我所知，那样做仅能在Windows的IE浏览器和古老的Netscape 4.*（windows版本）有效。没有一个Mac的浏览器会将它显示为提示（tool tip）。<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /> &nbsp; &nbsp; &nbsp; &nbsp;当浏览器把替换文字显示为提示（tool tip）后，那些错误使用alt属性的行为也受到了鼓励。一些人开始写无意思的替换文字，因为他们趋向于认为它是一个额外的说明信息，而不是不能显示图像的替换。其他人可能不想让提示（tool tip）出现，然后就完全忽略了写alt属性值。这些错误的做法，都给那些不能看到图像的浏览者造成了困难。<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /> &nbsp; &nbsp; &nbsp; 额外的说明信息和非本质的信息请使用title属性。<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" />title属性<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /> &nbsp; &nbsp; &nbsp; &nbsp;title属性为设置该属性的元素提供建议性的信息。来源: The title attribute.<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /> &nbsp; &nbsp; &nbsp; &nbsp;title属性可以用在除了base，basefont，head，html，meta，param，script和title之外的所有标签。但是并不是必须的。可能这正是为什么很多人不明白何时使用它。<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /> &nbsp; &nbsp; &nbsp; &nbsp;使用title属性提供非本质的额外信息。大部分的可视化浏览器在鼠标悬浮在特定元素上时显示title文字为提示信息（tool tip），然而这又由制造商来决定如何渲染title文字。一些浏览器会将title文字显示在状态栏里。比如早期版本的Safari浏览器。<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /> &nbsp; &nbsp; &nbsp; &nbsp;title属性有一个很好的用途，即为链接添加描述性文字，特别是当连接本身并不是十分清楚的表达了链接的目的。这样就使得访问者知道那些链接将会带他们到什么地方，他们就不会加载一个可能完全不感兴趣的页面。另外一个潜在的应用就是为图像提供额外的说明信息，比如日期或者其他非本质的信息。<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /> &nbsp; &nbsp; &nbsp; &nbsp;title属性值可以比alt属性值设置的更长。不过要注意的是，有些浏览器会截断过长的文字（比如工具提示或其他）。比如Mozilla核心的浏览器只能显示最先的60个字符。这被认为是一个Mozilla bug，这是你要注意的。<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" />使用前先考虑<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /> &nbsp; &nbsp; &nbsp; &nbsp;我的建议是保证替换文字（alt text）精要。在大多数的应用里，都应该被留白，alt=&quot;&quot;（注意两引号中没有空格）。 想想那些图像，为那些浏览者提供了什么样的信息，你应该用什么文字去描述它，或者你该为看不到图像的人提供什么信息？ 将替换文字写成“照片：站在大楼外的CEO，穿着灰色西装和黑色领带，望着天”对于看不到图像的人真的有帮助？如果你觉得是，那么你就写吧。在很多情况下，我觉得让替换文字留白比较好。<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /> &nbsp; &nbsp; &nbsp; &nbsp;对于title属性，比较难于给出严格的使用说明。我大部分用在那些不能自我释意的链接上，比如同一页面上的相同的链接文字，不同的链接页面。有时候也为一些按钮或者表单元素提供更多的说明文字。<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" />更长的描述<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /> &nbsp; &nbsp; &nbsp; &nbsp;当一个图片需要更加长的描述，而超过alt属性的限制，那么还有一些选择。<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /> &nbsp; &nbsp; &nbsp; &nbsp;longdesc属性可以用来提供链接到一个包含图片文字描述的单独页面。这就意味着把浏览者链接到另外的页面，这可能会造成理解上的困难。另外浏览器对于longdesc属性的支持也是不一致的，并且不是非常好。<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /> &nbsp; &nbsp; &nbsp; &nbsp;longdesc属性可以包含一个链接到当前文档的其他部分（锚点）来取代链接到另外的页面。在Accessibilityfootnotes, Andy Clarke很好的解释说明了如何应用。<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /> &nbsp; &nbsp; &nbsp; &nbsp;描述链接（D links）可以用来补充longdesc。一个描述链接就是一个常规的链接，连接到含有替换文字的页面。该链接被置于图像的旁边，并且在所有浏览器中都是可是的。对于它的有效性人们有很多不同意见，我的个人意见不大喜欢这个注意。WCAG也是，在他们的工作草案HTML Techniques for WCAG 2.0中，描述链接是被“不赞成”的。<br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /><br style=\"color:#222222;font-size:14px;line-height:25px;background-color:#ffffff;\" /> &nbsp; &nbsp; &nbsp; &nbsp;如果对图片的长的描述对于任何浏览者都有用，那么你得考虑让它简单的显示在同一个文档里面，而不是链接到其他页面里或者藏起来。这样每个人都可以阅读到。这是一种简单低技术含量的方法。</p>',2,10000,'',0,1,'',''),(34,'<p style=\"text-align:center;\"><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b06e7462d.jpg\" title=\"点击查看原图\" target=\"_blank\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b06e7462d.jpg\" id=\"bigimg\" alt=\"点击查看原图\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b071827da.jpg\" title=\"点击查看原图\" target=\"_blank\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b071827da.jpg\" id=\"bigimg\" alt=\"点击查看原图\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0736d7c1.jpg\" title=\"点击查看原图\" target=\"_blank\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0736d7c1.jpg\" id=\"bigimg\" alt=\"点击查看原图\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a></p>',2,10000,'',0,1,'',''),(35,'<p style=\"text-align:center;\"><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0d807938.jpg\" target=\"_blank\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0d807938.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0d854b31.jpg\" target=\"_blank\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0d854b31.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0d87efc8.jpg\" target=\"_blank\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0d87efc8.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0d8b6a5e.jpg\" target=\"_blank\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0d8b6a5e.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0d8e2dd1.jpg\" target=\"_blank\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0d8e2dd1.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0d9151f7.jpg\" target=\"_blank\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0d9151f7.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0d940b7f.jpg\" target=\"_blank\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0d940b7f.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0d967dfb.jpg\" target=\"_blank\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0d967dfb.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0d999510.jpg\" target=\"_blank\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0d999510.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0d9c1713.jpg\" target=\"_blank\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0d9c1713.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0d9edf92.jpg\" target=\"_blank\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0d9edf92.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0da373ac.jpg\" target=\"_blank\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0da373ac.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0da6301e.jpg\" target=\"_blank\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0da6301e.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a></p>[page]<p style=\"text-align:center;\"><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0da8e273.jpg\" target=\"_blank\" style=\"text-decoration:none;color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0da8e273.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><span style=\"color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"></span><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0dac677c.jpg\" target=\"_blank\" style=\"text-decoration:none;color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0dac677c.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><span style=\"color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"></span><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0daee524.jpg\" target=\"_blank\" style=\"text-decoration:none;color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0daee524.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><span style=\"color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"></span><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0db220da.jpg\" target=\"_blank\" style=\"text-decoration:none;color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0db220da.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><span style=\"color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"></span><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0db47b23.jpg\" target=\"_blank\" style=\"text-decoration:none;color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0db47b23.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><span style=\"color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"></span><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0db7030e.jpg\" target=\"_blank\" style=\"text-decoration:none;color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0db7030e.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><span style=\"color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"></span><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0db9f2b2.jpg\" target=\"_blank\" style=\"text-decoration:none;color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0db9f2b2.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><span style=\"color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"></span><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0dbc523a.jpg\" target=\"_blank\" style=\"text-decoration:none;color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0dbc523a.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><span style=\"color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"></span><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0dc05631.jpg\" target=\"_blank\" style=\"text-decoration:none;color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0dc05631.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><span style=\"color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"></span><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0dc2af53.jpg\" target=\"_blank\" style=\"text-decoration:none;color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0dc2af53.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><span style=\"color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"></span><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0dc53f9d.jpg\" target=\"_blank\" style=\"text-decoration:none;color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0dc53f9d.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><span style=\"color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"></span><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0dc7ba03.jpg\" target=\"_blank\" style=\"text-decoration:none;color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0dc7ba03.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a><span style=\"color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"></span><a href=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0dc9fa40.jpg\" target=\"_blank\" style=\"text-decoration:none;color:#666666;font-size:12px;text-align:-webkit-center;background-color:#ffffff;\"><img src=\"http://www.shuipfcms.com/demo/file/2013/06/51c5b0dc9fa40.jpg\" id=\"bigimg\" style=\"border:1px solid #eeeeee;background-color:#fafafa;padding:5px;margin:10px;display:inline-block;max-width:850px;\" /></a></p>',2,10000,'',0,1,'',''),(36,'<p>测试</p>',0,10000,'show.php',0,1,'','本站'),(37,'<p>测试</p>',0,10000,'show.php',0,1,'','本站'),(38,'<p>测试</p>',0,10000,'show.php',0,1,'','本站');
/*!40000 ALTER TABLE `shuipf_article_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_attachment`
--

DROP TABLE IF EXISTS `shuipf_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_attachment` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '附件ID',
  `module` char(15) NOT NULL DEFAULT '' COMMENT '模块名称',
  `catid` smallint(5) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `filename` char(50) NOT NULL DEFAULT '' COMMENT '上传附件名称',
  `filepath` char(200) NOT NULL DEFAULT '' COMMENT '附件路径',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '附件大小',
  `fileext` char(10) NOT NULL DEFAULT '' COMMENT '附件扩展名',
  `isimage` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为图片 1为图片',
  `isthumb` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为缩略图 1为缩略图',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上传用户ID',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否后台用户上传',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `uploadip` char(15) NOT NULL DEFAULT '' COMMENT '上传ip',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '附件使用状态',
  `authcode` char(32) NOT NULL DEFAULT '' COMMENT '附件路径MD5值',
  PRIMARY KEY (`aid`),
  KEY `authcode` (`authcode`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='附件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_attachment`
--

LOCK TABLES `shuipf_attachment` WRITE;
/*!40000 ALTER TABLE `shuipf_attachment` DISABLE KEYS */;
INSERT INTO `shuipf_attachment` VALUES (1,'content',10,'275513_wangkb_1405255171148_s.jpg','content/2016/03/56d922a223315.jpg',181649,'jpg',1,0,1,1,1457070754,'172.16.7.100',1,'0ec27bd9f78615241bafa19bef85e9af'),(2,'content',10,'275513_wangkb_1405255171148_s.jpg','content/2016/03/56d922b08c216.jpg',181649,'jpg',1,0,1,1,1457070768,'172.16.7.100',1,'85c4f3502e72e3547ba5f7e0de2db8a9');
/*!40000 ALTER TABLE `shuipf_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_attachment_index`
--

DROP TABLE IF EXISTS `shuipf_attachment_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_attachment_index` (
  `keyid` char(30) NOT NULL DEFAULT '' COMMENT '关联id',
  `aid` char(10) NOT NULL DEFAULT '' COMMENT '附件ID',
  KEY `keyid` (`keyid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_attachment_index`
--

LOCK TABLES `shuipf_attachment_index` WRITE;
/*!40000 ALTER TABLE `shuipf_attachment_index` DISABLE KEYS */;
INSERT INTO `shuipf_attachment_index` VALUES ('c-10-36','1'),('c-10-36','2');
/*!40000 ALTER TABLE `shuipf_attachment_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_behavior`
--

DROP TABLE IF EXISTS `shuipf_behavior`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_behavior` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '行为唯一标识',
  `title` char(80) NOT NULL DEFAULT '' COMMENT '行为说明',
  `remark` char(140) NOT NULL DEFAULT '' COMMENT '行为描述',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-控制器，2-视图',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态（0：禁用，1：正常）',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '所属模块',
  `datetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='系统行为表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_behavior`
--

LOCK TABLES `shuipf_behavior` WRITE;
/*!40000 ALTER TABLE `shuipf_behavior` DISABLE KEYS */;
INSERT INTO `shuipf_behavior` VALUES (1,'app_init','应用初始化标签位','应用初始化标签位',1,1,1,'',1381021393),(2,'path_info','PATH_INFO检测标签位','PATH_INFO检测标签位',1,1,1,'',1381021411),(3,'app_begin','应用开始标签位','应用开始标签位',1,1,1,'',1381021424),(4,'action_name','操作方法名标签位','操作方法名标签位',1,1,1,'',1381021437),(5,'action_begin','控制器开始标签位','控制器开始标签位',1,1,1,'',1381021450),(6,'view_begin','视图输出开始标签位','视图输出开始标签位',1,1,1,'',1381021463),(7,'view_parse','视图解析标签位','视图解析标签位',1,1,1,'',1381021476),(8,'template_filter','模板内容解析标签位','模板内容解析标签位',1,1,1,'',1381021488),(9,'view_filter','视图输出过滤标签位','视图输出过滤标签位',1,1,1,'',1381021621),(10,'view_end','视图输出结束标签位','视图输出结束标签位',1,1,1,'',1381021631),(11,'action_end','控制器结束标签位','控制器结束标签位',1,1,1,'',1381021642),(12,'app_end','应用结束标签位','应用结束标签位',1,1,1,'',1381021654),(13,'appframe_rbac_init','后台权限控制','后台权限控制',1,1,1,'',1381023560),(14,'content_delete_end','内容删除结束行为标签','内容模型行为标签',1,1,0,'Comments',1457070835),(15,'content_add_end','内容添加结束行为标签','模块Search中的行为！',1,1,0,'Search',1457071324),(16,'content_edit_end','内容编辑结束行为标签','模块Search中的行为！',1,1,0,'Search',1457071324),(17,'content_check_end','内容审核结束行为标签','模块Search中的行为！',1,1,0,'Search',1457071324);
/*!40000 ALTER TABLE `shuipf_behavior` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_behavior_log`
--

DROP TABLE IF EXISTS `shuipf_behavior_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_behavior_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ruleid` int(10) NOT NULL DEFAULT '0' COMMENT '行为ID',
  `guid` char(50) NOT NULL DEFAULT '' COMMENT '标识',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '执行行为的时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='行为日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_behavior_log`
--

LOCK TABLES `shuipf_behavior_log` WRITE;
/*!40000 ALTER TABLE `shuipf_behavior_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `shuipf_behavior_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_behavior_rule`
--

DROP TABLE IF EXISTS `shuipf_behavior_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_behavior_rule` (
  `ruleid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `behaviorid` int(11) NOT NULL DEFAULT '0' COMMENT '行为id',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '规则所属模块',
  `addons` char(20) NOT NULL DEFAULT '' COMMENT '规则所属插件',
  `rule` text COMMENT '行为规则',
  `listorder` tinyint(3) NOT NULL DEFAULT '0' COMMENT '排序',
  `datetime` int(10) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`ruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='行为规则表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_behavior_rule`
--

LOCK TABLES `shuipf_behavior_rule` WRITE;
/*!40000 ALTER TABLE `shuipf_behavior_rule` DISABLE KEYS */;
INSERT INTO `shuipf_behavior_rule` VALUES (1,1,1,'','','phpfile:BuildLiteBehavior',0,1381021954),(2,3,1,'','','phpfile:ReadHtmlCacheBehavior',0,1381021954),(3,12,1,'','','phpfile:ShowPageTraceBehavior',0,1381021954),(4,7,1,'','','phpfile:ParseTemplateBehavior',0,1381021954),(5,8,1,'','','phpfile:ContentReplaceBehavior',0,1381021954),(6,9,1,'','','phpfile:WriteHtmlCacheBehavior',0,1381021954),(7,1,1,'','','phpfile:AppInitBehavior|module:Common',0,1381021954),(8,3,1,'','','phpfile:AppBeginBehavior|module:Common',0,1381021954),(9,6,1,'','','phpfile:ViewBeginBehavior|module:Common',0,1381021954),(10,3,0,'Wap','','phpfile:WapBehavior|module:Wap',0,1457058978),(11,14,0,'Comments','','phpfile:CommentsApi|module:Comments',0,1457070835),(12,15,0,'Search','','phpfile:SearchApi|module:Search',0,1457071324),(13,16,0,'Search','','phpfile:SearchApi|module:Search',0,1457071324),(14,17,0,'Search','','phpfile:SearchApi|module:Search',0,1457071324),(15,14,0,'Search','','phpfile:SearchApi|module:Search',0,1457071324);
/*!40000 ALTER TABLE `shuipf_behavior_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_cache`
--

DROP TABLE IF EXISTS `shuipf_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_cache` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `key` char(100) NOT NULL DEFAULT '' COMMENT '缓存key值',
  `name` char(100) NOT NULL DEFAULT '' COMMENT '名称',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '模块名称',
  `model` char(30) NOT NULL DEFAULT '' COMMENT '模型名称',
  `action` char(30) NOT NULL DEFAULT '' COMMENT '方法名',
  `param` char(255) NOT NULL DEFAULT '' COMMENT '参数',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统',
  PRIMARY KEY (`id`),
  KEY `ckey` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='缓存更新列队';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_cache`
--

LOCK TABLES `shuipf_cache` WRITE;
/*!40000 ALTER TABLE `shuipf_cache` DISABLE KEYS */;
INSERT INTO `shuipf_cache` VALUES (1,'Config','网站配置','','Config','config_cache','',1),(2,'Module','可用模块列表','','Module','module_cache','',1),(3,'Behavior','行为列表','','Behavior','behavior_cache','',1),(4,'Menu','后台菜单','Admin','Menu','menu_cache','',0),(5,'Category','栏目索引','Content','Category','category_cache','',0),(6,'Model','模型列表','Content','Model','model_cache','',0),(7,'Urlrules','URL规则','Content','Urlrule','urlrule_cache','',0),(8,'ModelField','模型字段','Content','ModelField','model_field_cache','',0),(9,'Position','推荐位','Content','Position','position_cache','',0),(10,'Comments_setting','评论配置','Comments','Comments','comments_cache','',0),(11,'Emotion','评论表情','Comments','Emotion','emotion_cache','',0),(12,'Search_config','全站搜索配置','Search','Search','search_cache','',0);
/*!40000 ALTER TABLE `shuipf_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_category`
--

DROP TABLE IF EXISTS `shuipf_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_category` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '栏目ID',
  `module` varchar(15) NOT NULL DEFAULT '' COMMENT '所属模块',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `domain` varchar(200) NOT NULL DEFAULT '' COMMENT '栏目绑定域名',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `arrparentid` varchar(255) NOT NULL DEFAULT '' COMMENT '所有父ID',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否存在子栏目，1存在',
  `arrchildid` mediumtext COMMENT '所有子栏目ID',
  `catname` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '栏目图片',
  `description` mediumtext COMMENT '栏目描述',
  `parentdir` varchar(100) NOT NULL DEFAULT '' COMMENT '父目录',
  `catdir` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目目录',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '链接地址',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目点击数',
  `setting` mediumtext COMMENT '相关配置信息',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `sethtml` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否生成静态',
  `letter` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目拼音',
  PRIMARY KEY (`catid`),
  KEY `module` (`module`,`parentid`,`listorder`,`catid`),
  KEY `siteid` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='栏目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_category`
--

LOCK TABLES `shuipf_category` WRITE;
/*!40000 ALTER TABLE `shuipf_category` DISABLE KEYS */;
INSERT INTO `shuipf_category` VALUES (1,'content',0,1,'',0,'0',1,'1,10,11','网页教程','','网页教程-网页设计基础教程DIV+CSS','','jiaocheng','',0,'a:12:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:12:\"category.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}',0,0,0,'wangyejiaocheng'),(2,'content',0,1,'',0,'0',1,'2,12,13','前端开发','','前端开发-学习最新前端开发技术','','qianduan','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=2',0,'a:12:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:12:\"category.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}',0,1,0,'qianduankaifa'),(3,'content',0,1,'',0,'0',1,'3,14,15','PS教程','','PS教程-学习PS技巧,设计更好的页面','','ps','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=3',0,'a:12:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:12:\"category.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}',0,1,0,'psjiaocheng'),(4,'content',0,1,'',0,'0',1,'4,16,17','网页特效','','提供各种网页效果,让你的网页更炫丽','','texiao','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=4',0,'a:12:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:17:\"category_heng.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}',0,1,0,'wangyetexiao'),(5,'content',0,3,'',0,'0',1,'5,18,19','建站素材','','建站素材-提供网页设计必备素材','','sucai','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=5',0,'a:12:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:17:\"category_heng.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}',0,1,0,'jianzhansucai'),(6,'content',0,1,'',0,'0',1,'6,20,21','网站运营','','各种运营知识分享,助站长一臂之力','','yunying','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=6',0,'a:12:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:12:\"category.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}',0,1,0,'wangzhanyunying'),(7,'content',0,1,'',0,'0',1,'7,22,23','站长杂谈','','站长杂谈-了解互联网第一手资讯','','zatan','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=7',0,'a:12:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:12:\"category.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}',0,1,0,'zhanchangzatan'),(8,'content',0,1,'',0,'0',1,'8,24,25','设计欣赏','','设计欣赏-寻找设计灵感提高设计水平','','sheji','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=8',0,'a:12:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:17:\"category_heng.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";N;}',0,1,0,'shejixinshang'),(9,'content',0,2,'',0,'0',0,'9','常用软件','','','','software','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=9',0,'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:17:\"list_software.php\";s:13:\"show_template\";s:17:\"show_download.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}',0,1,0,'changyongruanjian'),(10,'content',0,1,'',1,'0,1',0,'10','HTML/XHTML','','','jiaocheng/','html','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=10',0,'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}',0,1,0,'html/xhtml'),(11,'content',0,1,'',1,'0,1',0,'11','Dreamweaver','','','jiaocheng/','dw','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=11',0,'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}',0,1,0,'dreamweaver'),(12,'content',0,1,'',2,'0,2',0,'12','javascript教程','','','qianduan/','js','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=12',0,'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}',0,1,0,'javascriptjiaocheng'),(13,'content',0,1,'',2,'0,2',0,'13','jquery教程','','','qianduan/','jq','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=13',0,'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}',0,1,0,'jqueryjiaocheng'),(14,'content',0,1,'',3,'0,3',0,'14','PS网页制作','','','ps/','psweb','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=14',0,'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}',0,1,0,'pswangyezhizuo'),(15,'content',0,1,'',3,'0,3',0,'15','PS按钮制作','','','ps/','psbtn','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=15',0,'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}',0,1,0,'psanniuzhizuo'),(16,'content',0,1,'',4,'0,4',0,'16','JS幻灯片','','','texiao/','adjs','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=16',0,'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}',0,1,0,'jshuandengpian'),(17,'content',0,1,'',4,'0,4',0,'17','导航菜单','','','texiao/','nav','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=17',0,'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}',0,1,0,'daohangcaidan'),(18,'content',0,3,'',5,'0,5',0,'18','PNG图标','','','sucai/','png','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=18',0,'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:14:\"show_image.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}',0,1,0,'pngtubiao'),(19,'content',0,3,'',5,'0,5',0,'19','GIF小图标','','','sucai/','gif','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=19',0,'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:14:\"show_image.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}',0,1,0,'gifxiaotubiao'),(20,'content',0,1,'',6,'0,6',0,'20','SEO网站优化','','','yunying/','seo','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=20',0,'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}',0,1,0,'seowangzhanyouhua'),(21,'content',0,1,'',6,'0,6',0,'21','网络营销','','','yunying/','yingxiao','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=21',0,'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}',0,1,0,'wangluoyingxiao'),(22,'content',0,1,'',7,'0,7',0,'22','互联网资讯','','','zatan/','zixun','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=22',0,'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}',0,1,0,'hulianwangzixun'),(23,'content',0,1,'',7,'0,7',0,'23','人物访谈','','','zatan/','fangtan','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=23',0,'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}',0,1,0,'renwufangtan'),(24,'content',0,1,'',8,'0,8',0,'24','酷站欣赏','','','sheji/','web','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=24',0,'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:11:\"show_da.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}',0,1,0,'kuzhanxinshang'),(25,'content',0,1,'',8,'0,8',0,'25','标志LOGO','','','sheji/','logo','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=25',0,'a:14:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:11:\"show_da.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:2:\"10\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}',0,1,0,'biaozhilogo'),(26,'content',0,1,'',0,'0',1,'26','测试','','','','ceshi','http://172.16.7.100/shuipfcms/index.php?a=lists&catid=26',0,'a:15:{s:6:\"seturl\";s:0:\"\";s:12:\"generatehtml\";s:1:\"1\";s:12:\"generatelish\";s:1:\"0\";s:10:\"meta_title\";s:0:\"\";s:13:\"meta_keywords\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:17:\"category_template\";s:12:\"category.php\";s:13:\"list_template\";s:8:\"list.php\";s:13:\"show_template\";s:8:\"show.php\";s:19:\"list_customtemplate\";s:0:\"\";s:6:\"ishtml\";s:1:\"0\";s:9:\"repagenum\";s:0:\"\";s:14:\"content_ishtml\";s:1:\"0\";s:15:\"category_ruleid\";s:1:\"1\";s:11:\"show_ruleid\";s:1:\"4\";}',0,1,0,'ceshi');
/*!40000 ALTER TABLE `shuipf_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_category_field`
--

DROP TABLE IF EXISTS `shuipf_category_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_category_field` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `catid` smallint(5) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `fieldname` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名',
  `type` varchar(10) NOT NULL DEFAULT '' COMMENT '类型,input',
  `setting` mediumtext COMMENT '其他',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目扩展字段列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_category_field`
--

LOCK TABLES `shuipf_category_field` WRITE;
/*!40000 ALTER TABLE `shuipf_category_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `shuipf_category_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_category_priv`
--

DROP TABLE IF EXISTS `shuipf_category_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_category_priv` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `roleid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '角色或者组ID',
  `is_admin` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为管理员 1、管理员',
  `action` char(30) NOT NULL DEFAULT '' COMMENT '动作',
  KEY `catid` (`catid`,`roleid`,`is_admin`,`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_category_priv`
--

LOCK TABLES `shuipf_category_priv` WRITE;
/*!40000 ALTER TABLE `shuipf_category_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `shuipf_category_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_comments`
--

DROP TABLE IF EXISTS `shuipf_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `comment_id` char(30) NOT NULL COMMENT '所属文章id',
  `author` tinytext NOT NULL COMMENT '评论者名称',
  `author_email` varchar(100) NOT NULL DEFAULT '' COMMENT '评论者电邮地址',
  `author_url` varchar(200) NOT NULL DEFAULT '' COMMENT '评论者网址',
  `author_ip` varchar(100) NOT NULL DEFAULT '' COMMENT '评论者的IP地址',
  `date` int(11) NOT NULL COMMENT '评论发表时间',
  `approved` varchar(20) NOT NULL DEFAULT '1' COMMENT '评论状态，0为审核，1为正常',
  `agent` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者的客户端信息',
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '上级评论id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论对应用户id',
  `stb` varchar(6) NOT NULL COMMENT '存放副表名',
  PRIMARY KEY (`id`),
  KEY `comment_id` (`comment_id`),
  KEY `approved` (`approved`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_comments`
--

LOCK TABLES `shuipf_comments` WRITE;
/*!40000 ALTER TABLE `shuipf_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `shuipf_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_comments_data_1`
--

DROP TABLE IF EXISTS `shuipf_comments_data_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_comments_data_1` (
  `id` bigint(20) unsigned NOT NULL COMMENT '评论id',
  `comment_id` char(30) NOT NULL COMMENT '所属文章Id',
  `content` text NOT NULL COMMENT '评论内容',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论副表1';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_comments_data_1`
--

LOCK TABLES `shuipf_comments_data_1` WRITE;
/*!40000 ALTER TABLE `shuipf_comments_data_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `shuipf_comments_data_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_comments_emotion`
--

DROP TABLE IF EXISTS `shuipf_comments_emotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_comments_emotion` (
  `emotion_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '表情ID',
  `emotion_name` varchar(20) NOT NULL DEFAULT '' COMMENT '表情名称',
  `emotion_icon` varchar(50) NOT NULL DEFAULT '' COMMENT '表情图标',
  `vieworder` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `isused` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否使用',
  PRIMARY KEY (`emotion_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='表情数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_comments_emotion`
--

LOCK TABLES `shuipf_comments_emotion` WRITE;
/*!40000 ALTER TABLE `shuipf_comments_emotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `shuipf_comments_emotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_comments_field`
--

DROP TABLE IF EXISTS `shuipf_comments_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_comments_field` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '字段id',
  `f` varchar(30) NOT NULL COMMENT '字段名',
  `fname` varchar(30) NOT NULL COMMENT '字段标识',
  `fzs` varchar(255) NOT NULL COMMENT '注释',
  `ftype` varchar(30) NOT NULL COMMENT '字段类型',
  `flen` varchar(20) NOT NULL COMMENT '字段长度',
  `ismust` tinyint(1) NOT NULL COMMENT '1为必填，0为非必填',
  `issystem` tinyint(1) NOT NULL COMMENT '是否添加到主表',
  `regular` varchar(255) NOT NULL COMMENT '数据验证正则',
  `system` tinyint(1) NOT NULL COMMENT '是否系统字段',
  PRIMARY KEY (`fid`),
  UNIQUE KEY `fname` (`fname`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='评论自定义字段表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_comments_field`
--

LOCK TABLES `shuipf_comments_field` WRITE;
/*!40000 ALTER TABLE `shuipf_comments_field` DISABLE KEYS */;
INSERT INTO `shuipf_comments_field` VALUES (1,'author','昵称','昵称不能为空！','TEXT','',1,1,'',1),(2,'author_email','邮箱','邮箱不能为空！','VARCHAR','100',1,1,'/^[\\w\\-\\.]+@[\\w\\-\\.]+(\\.\\w+)+$/',1),(3,'author_url','网站地址','网站地址不能为空！','VARCHAR','200',0,1,'/^http:\\/\\//',1);
/*!40000 ALTER TABLE `shuipf_comments_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_comments_setting`
--

DROP TABLE IF EXISTS `shuipf_comments_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_comments_setting` (
  `guest` tinyint(1) NOT NULL COMMENT '是否允许游客评论',
  `code` tinyint(1) NOT NULL COMMENT '是否开启验证码',
  `check` tinyint(1) NOT NULL COMMENT '是否需要审核',
  `stb` tinyint(4) NOT NULL COMMENT '存储分表',
  `stbsum` int(4) NOT NULL COMMENT '分表总数',
  `order` varchar(20) NOT NULL COMMENT '排序',
  `strlength` int(5) NOT NULL COMMENT '允许最大字数',
  `status` tinyint(1) NOT NULL COMMENT '关闭/开启评论',
  `expire` int(11) NOT NULL COMMENT '评论间隔时间单位秒'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_comments_setting`
--

LOCK TABLES `shuipf_comments_setting` WRITE;
/*!40000 ALTER TABLE `shuipf_comments_setting` DISABLE KEYS */;
INSERT INTO `shuipf_comments_setting` VALUES (1,0,0,1,1,'date DESC',400,1,60);
/*!40000 ALTER TABLE `shuipf_comments_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_config`
--

DROP TABLE IF EXISTS `shuipf_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_config` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT,
  `varname` varchar(20) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL DEFAULT '',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `varname` (`varname`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='网站配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_config`
--

LOCK TABLES `shuipf_config` WRITE;
/*!40000 ALTER TABLE `shuipf_config` DISABLE KEYS */;
INSERT INTO `shuipf_config` VALUES (1,'sitename','网站名称',1,'ShuipFCMS内容管理系统'),(2,'siteurl','网站网址',1,'http://172.16.7.100/shuipfcms/'),(3,'sitefileurl','附件地址',1,'/shuipfcms/d/file/'),(4,'siteemail','站点邮箱',1,'354535316@qq.com'),(6,'siteinfo','网站介绍',1,'ShuipFCMS网站管理系统,是一款完全开源免费的PHP+MYSQL系统.核心采用了Thinkphp框架等众多开源软件,同时核心功能也作为开源软件发布'),(7,'sitekeywords','网站关键字',1,'ShuipFCMS内容管理系统'),(8,'uploadmaxsize','允许上传附件大小',1,'20240'),(9,'uploadallowext','允许上传附件类型',1,'jpg|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf'),(10,'qtuploadmaxsize','前台允许上传附件大小',1,'200'),(11,'qtuploadallowext','前台允许上传附件类型',1,'jpg|jpeg|gif'),(12,'watermarkenable','是否开启图片水印',1,'1'),(13,'watermarkminwidth','水印-宽',1,'300'),(14,'watermarkminheight','水印-高',1,'100'),(15,'watermarkimg','水印图片',1,'/statics/images/mark_bai.png'),(16,'watermarkpct','水印透明度',1,'80'),(17,'watermarkquality','JPEG 水印质量',1,'85'),(18,'watermarkpos','水印位置',1,'7'),(19,'theme','主题风格',1,'Default'),(20,'ftpstatus','FTP上传',1,'0'),(21,'ftpuser','FTP用户名',1,''),(22,'ftppassword','FTP密码',1,''),(23,'ftphost','FTP服务器地址',1,''),(24,'ftpport','FTP服务器端口',1,'21'),(25,'ftppasv','FTP是否开启被动模式',1,'1'),(26,'ftpssl','FTP是否使用SSL连接',1,'0'),(27,'ftptimeout','FTP超时时间',1,'10'),(28,'ftpuppat','FTP上传目录',1,'/'),(29,'mail_type','邮件发送模式',1,'1'),(30,'mail_server','邮件服务器',1,'smtp.qq.com'),(31,'mail_port','邮件发送端口',1,'25'),(32,'mail_from','发件人地址',1,'admin@abc3210.com'),(33,'mail_auth','密码验证',1,'1'),(34,'mail_user','邮箱用户名',1,''),(35,'mail_password','邮箱密码',1,''),(36,'mail_fname','发件人名称',1,'ShuipFCMS管理员'),(37,'domainaccess','指定域名访问',1,'0'),(38,'generate','是否生成首页',1,'1'),(39,'index_urlruleid','首页URL规则',1,'11'),(40,'indextp','首页模板',1,'index.php'),(41,'tagurl','TagURL规则',1,'8'),(42,'checkcode_type','验证码类型',1,'0'),(43,'attachment_driver','附件驱动',1,'Local');
/*!40000 ALTER TABLE `shuipf_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_config_field`
--

DROP TABLE IF EXISTS `shuipf_config_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_config_field` (
  `fid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `fieldname` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名',
  `type` varchar(10) NOT NULL DEFAULT '' COMMENT '类型,input',
  `setting` mediumtext COMMENT '其他',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='网站配置，扩展字段列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_config_field`
--

LOCK TABLES `shuipf_config_field` WRITE;
/*!40000 ALTER TABLE `shuipf_config_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `shuipf_config_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_customlist`
--

DROP TABLE IF EXISTS `shuipf_customlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_customlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自定义列表ID',
  `url` char(100) NOT NULL DEFAULT '' COMMENT '访问地址',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '列表标题',
  `title` varchar(120) NOT NULL DEFAULT '' COMMENT '网页标题',
  `keywords` varchar(40) NOT NULL DEFAULT '' COMMENT '网页关键字',
  `description` text COMMENT '页面简介',
  `totalsql` text COMMENT '数据统计SQL',
  `listsql` text COMMENT '数据查询SQL',
  `lencord` int(11) NOT NULL DEFAULT '0' COMMENT '每页显示',
  `urlruleid` int(11) NOT NULL DEFAULT '0' COMMENT 'URL规则ID',
  `urlrule` varchar(120) NOT NULL DEFAULT '' COMMENT 'URL规则',
  `template` mediumtext COMMENT '模板',
  `listpath` varchar(60) NOT NULL DEFAULT '' COMMENT '列表模板文件',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='自定义列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_customlist`
--

LOCK TABLES `shuipf_customlist` WRITE;
/*!40000 ALTER TABLE `shuipf_customlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `shuipf_customlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_customtemp`
--

DROP TABLE IF EXISTS `shuipf_customtemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_customtemp` (
  `tempid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '模板ID',
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '模板名称',
  `tempname` varchar(30) NOT NULL DEFAULT '' COMMENT '模板完整文件名',
  `temppath` varchar(200) NOT NULL DEFAULT '' COMMENT '模板生成路径',
  `temptext` mediumtext COMMENT '模板内容',
  PRIMARY KEY (`tempid`),
  KEY `tempname` (`tempname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='自定义模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_customtemp`
--

LOCK TABLES `shuipf_customtemp` WRITE;
/*!40000 ALTER TABLE `shuipf_customtemp` DISABLE KEYS */;
/*!40000 ALTER TABLE `shuipf_customtemp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_download`
--

DROP TABLE IF EXISTS `shuipf_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_download` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` char(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` char(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` char(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` char(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` char(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  `prefix` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_download`
--

LOCK TABLES `shuipf_download` WRITE;
/*!40000 ALTER TABLE `shuipf_download` DISABLE KEYS */;
INSERT INTO `shuipf_download` VALUES (1,9,0,'新网页设计四剑客软件包免费下载','','http://www.shuipfcms.com/demo/file/2013/06/51c5abbad94b5.jpg','页设计四剑','页设计四剑','新网页设计四剑客软件包免费下载，网页三剑客的提升版，包括fireworks cs3，photoshop cs3，dreamweaver cs3，flash cs3。都是简体中文版本的，安装的时候可以选择性的安装其中一个或多个软件。推荐下载！',0,'/index.php?a=shows&catid=9&id=1',0,99,1,0,'admin',1403155909,1403155909,3,0,3,3,3,1403156009,''),(2,9,0,'Adobe Dreamweaver cs6汉化破解版免费下载','','http://www.shuipfcms.com/demo/file/2013/06/51c5ab7b2065a.jpg','Dreamweaver','Dreamweaver','Adobe Dreamweaver cs6汉化破解版免费下载内附安装说明和破解补丁强力推荐下载',0,'/index.php?a=shows&catid=9&id=2',0,99,1,0,'admin',1403156061,1403156061,0,0,0,0,0,0,''),(3,9,0,'photoshop CS5绿化破解版免费下载','','http://www.shuipfcms.com/demo/file/2013/06/51c5ab184c4a1.jpg','photoshop','photoshop','Adobe Photoshop，简称“PS”，是一个由Adobe Systems开发和发行的图像处理软件。Photoshop主要处理以像素所构成的数字图像。使用其众多的编修与绘图工具，可以更有效的进行图片编辑工作。2003年，Adobe将Adobe Photoshop 8更名为Adobe Photoshop CS。因此，最新版本Adobe Photoshop CS6是Adobe Photoshop中的第13个主要版',0,'/index.php?a=shows&catid=9&id=3',0,99,1,0,'admin',1403156098,1403156098,1,0,1,1,1,1403156114,'');
/*!40000 ALTER TABLE `shuipf_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_download_data`
--

DROP TABLE IF EXISTS `shuipf_download_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_download_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_download_data`
--

LOCK TABLES `shuipf_download_data` WRITE;
/*!40000 ALTER TABLE `shuipf_download_data` DISABLE KEYS */;
INSERT INTO `shuipf_download_data` VALUES (1,'',0,1,'','a:1:{i:0;a:4:{s:7:\"fileurl\";s:60:\"http://www.shuipfcms.com/demo/file/2013/06/51c5abbad94b5.jpg\";s:8:\"filename\";s:30:\"新网页设计四剑客软件\";s:7:\"groupid\";i:0;s:5:\"point\";i:0;}}'),(2,'',0,1,'','a:1:{i:0;a:4:{s:7:\"fileurl\";s:60:\"http://www.shuipfcms.com/demo/file/2013/06/51c5ab7b2065a.jpg\";s:8:\"filename\";s:36:\"Adobe Dreamweaver cs6汉化破解版\";s:7:\"groupid\";i:0;s:5:\"point\";i:0;}}'),(3,'',0,1,'','a:1:{i:0;a:4:{s:7:\"fileurl\";s:60:\"http://www.shuipfcms.com/demo/file/2013/06/51c5ab184c4a1.jpg\";s:8:\"filename\";s:28:\"photoshop CS5绿化破解版\";s:7:\"groupid\";i:0;s:5:\"point\";i:0;}}');
/*!40000 ALTER TABLE `shuipf_download_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_locking`
--

DROP TABLE IF EXISTS `shuipf_locking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_locking` (
  `userid` int(11) NOT NULL COMMENT '用户ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `catid` smallint(5) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `id` mediumint(8) NOT NULL DEFAULT '0' COMMENT '信息ID',
  `locktime` int(10) NOT NULL DEFAULT '0' COMMENT '锁定时间',
  KEY `userid` (`userid`),
  KEY `onlinetime` (`locktime`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='信息锁定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_locking`
--

LOCK TABLES `shuipf_locking` WRITE;
/*!40000 ALTER TABLE `shuipf_locking` DISABLE KEYS */;
/*!40000 ALTER TABLE `shuipf_locking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_loginlog`
--

DROP TABLE IF EXISTS `shuipf_loginlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_loginlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `username` char(30) NOT NULL DEFAULT '' COMMENT '登录帐号',
  `logintime` int(10) NOT NULL DEFAULT '0' COMMENT '登录时间戳',
  `loginip` char(20) NOT NULL DEFAULT '' COMMENT '登录IP',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,1为登录成功，0为登录失败',
  `password` varchar(30) NOT NULL DEFAULT '' COMMENT '尝试错误密码',
  `info` varchar(255) NOT NULL DEFAULT '' COMMENT '其他说明',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='后台登陆日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_loginlog`
--

LOCK TABLES `shuipf_loginlog` WRITE;
/*!40000 ALTER TABLE `shuipf_loginlog` DISABLE KEYS */;
INSERT INTO `shuipf_loginlog` VALUES (1,'admin',1457055981,'172.16.7.100',1,'密码保密','用户名登录'),(2,'admin',1457058194,'172.16.7.100',1,'密码保密','用户名登录'),(3,'admin',1457069569,'172.16.7.100',1,'密码保密','用户名登录'),(4,'admin',1457070232,'172.16.7.100',1,'密码保密','用户名登录'),(5,'admin',1457070554,'172.16.7.100',1,'密码保密','用户名登录'),(6,'admin',1457076930,'172.16.7.100',1,'密码保密','用户名登录'),(7,'admin',1457080027,'172.16.7.100',1,'密码保密','用户名登录');
/*!40000 ALTER TABLE `shuipf_loginlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_menu`
--

DROP TABLE IF EXISTS `shuipf_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '上级菜单',
  `app` char(20) NOT NULL DEFAULT '' COMMENT '应用标识',
  `controller` char(20) NOT NULL DEFAULT '' COMMENT '控制键',
  `action` char(20) NOT NULL DEFAULT '' COMMENT '方法',
  `parameter` char(255) NOT NULL DEFAULT '' COMMENT '附加参数',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_menu`
--

LOCK TABLES `shuipf_menu` WRITE;
/*!40000 ALTER TABLE `shuipf_menu` DISABLE KEYS */;
INSERT INTO `shuipf_menu` VALUES (1,'缓存更新',0,'Admin','Index','cache','',1,0,'',0),(2,'我的面板',0,'Admin','Config','index','',0,1,'',0),(3,'设置',0,'Admin','Config','index','',0,1,'',0),(4,'个人信息',2,'Admin','Adminmanage','myinfo','',0,1,'',0),(5,'修改个人信息',4,'Admin','Adminmanage','myinfo','',1,1,'',0),(6,'修改密码',4,'Admin','Adminmanage','chanpass','',1,1,'',0),(7,'系统设置',3,'Admin','Config','index','',0,1,'',0),(8,'站点配置',7,'Admin','Config','index','',1,1,'',0),(9,'邮箱配置',8,'Admin','Config','mail','',1,1,'',0),(10,'附件配置',8,'Admin','Config','attach','',1,1,'',0),(11,'高级配置',8,'Admin','Config','addition','',1,1,'',0),(12,'扩展配置',8,'Admin','Config','extend','',1,1,'',0),(13,'行为管理',7,'Admin','Behavior','index','',1,1,'',0),(14,'行为日志',13,'Admin','Behavior','logs','',1,1,'',0),(15,'编辑行为',13,'Admin','Behavior','edit','',1,0,'',0),(16,'删除行为',13,'Admin','Behavior','delete','',1,0,'',0),(17,'后台菜单管理',7,'Admin','Menu','index','',1,1,'',0),(18,'添加菜单',17,'Admin','Menu','add','',1,1,'',0),(19,'修改',17,'Admin','Menu','edit','',1,0,'',0),(20,'删除',17,'Admin','Menu','delete','',1,0,'',0),(21,'管理员设置',3,'Admin','Management','index','',0,1,'',0),(22,'管理员管理',21,'Admin','Management','manager','',1,1,'',0),(23,'添加管理员',22,'Admin','Management','adminadd','',1,1,'',0),(24,'编辑管理信息',22,'Admin','Management','edit','',1,0,'',0),(25,'删除管理员',22,'Admin','Management','delete','',1,0,'',0),(26,'角色管理',21,'Admin','Rbac','rolemanage','',1,1,'',0),(27,'添加角色',26,'Admin','Rbac','roleadd','',1,1,'',0),(28,'删除角色',26,'Admin','Rbac','roledelete','',1,0,'',0),(29,'角色编辑',26,'Admin','Rbac','roleedit','',1,0,'',0),(30,'角色授权',26,'Admin','Rbac','authorize','',1,0,'',0),(31,'日志管理',3,'Admin','Logs','index','',0,1,'',0),(32,'后台登陆日志',31,'Admin','Logs','loginlog','',1,1,'',0),(33,'后台操作日志',31,'Admin','Logs','index','',1,1,'',0),(34,'删除一个月前的登陆日志',32,'Admin','Logs','deleteloginlog','',1,1,'',0),(35,'删除一个月前的操作日志',33,'Admin','Logs','deletelog','',1,1,'',0),(36,'添加行为',13,'Admin','Behavior','add','',1,1,'',0),(37,'模块',0,'Admin','Module','index','',0,1,'',0),(38,'在线云平台',37,'Admin','Cloud','index','',0,1,'',0),(39,'模块商店',38,'Admin','Moduleshop','index','',1,1,'',0),(40,'插件商店',38,'Admin','Addonshop','index','',1,1,'',0),(41,'在线升级',38,'Admin','Upgrade','index','',1,0,'',0),(42,'本地模块管理',37,'Admin','Module','local','',0,1,'',0),(43,'模块管理',42,'Admin','Module','index','',1,1,'',0),(44,'内容',0,'Content','Index','index','',0,1,'',0),(45,'内容管理',44,'Content','Content','index','',0,1,'',0),(46,'内容相关设置',44,'Content','Category','index','',0,1,'',0),(47,'栏目列表',46,'Content','Category','index','',1,1,'',0),(48,'添加栏目',47,'Content','Category','add','',1,1,'',0),(49,'添加单页',47,'Content','Category','singlepage','',1,1,'',0),(50,'添加外部链接栏目',47,'Content','Category','wadd','',1,1,'',0),(51,'编辑栏目',47,'Content','Category','edit','',1,0,'',0),(52,'删除栏目',47,'Content','Category','delete','',1,0,'',0),(53,'栏目属性转换',47,'Content','Category','categoryshux','',1,0,'',0),(54,'模型管理',46,'Content','Models','index','',1,1,'',0),(55,'创建新模型',54,'Content','Models','add','',1,1,'',0),(56,'删除模型',54,'Content','Models','delete','',1,0,'',0),(57,'编辑模型',54,'Content','Models','edit','',1,0,'',0),(58,'模型禁用',54,'Content','Models','disabled','',1,0,'',0),(59,'模型导入',54,'Content','Models','import','',1,1,'',0),(60,'字段管理',54,'Content','Field','index','',1,0,'',0),(61,'字段修改',60,'Content','Field','edit','',1,0,'',0),(62,'字段删除',60,'Content','Field','delete','',1,0,'',0),(63,'字段状态',60,'Content','Field','disabled','',1,0,'',0),(64,'模型预览',60,'Content','Field','priview','',1,0,'',0),(65,'管理内容',45,'Content','Content','index','',1,1,'',0),(66,'附件管理',45,'Attachment','Atadmin','index','',1,1,'',0),(67,'删除',66,'Attachment','Atadmin','delete','',1,0,'',0),(68,'发布管理',44,'Content','Createhtml','index','',0,1,'',0),(69,'批量更新栏目页',68,'Content','Createhtml','category','',1,1,'',0),(70,'生成首页',68,'Content','Createhtml','index','',1,1,'',0),(71,'批量更新URL',68,'Content','Createhtml','update_urls','',1,1,'',0),(72,'批量更新内容页',68,'Content','Createhtml','update_show','',1,1,'',0),(73,'刷新自定义页面',68,'Template','Custompage','createhtml','',1,1,'',0),(74,'URL规则管理',46,'Content','Urlrule','index','',1,1,'',0),(75,'添加规则',74,'Content','Urlrule','add','',1,1,'',0),(76,'编辑',74,'Content','Urlrule','edit','',1,0,'',0),(77,'删除',74,'Content','Urlrule','delete','',1,0,'',0),(78,'推荐位管理',46,'Content','Position','index','',1,1,'',0),(79,'信息管理',78,'Content','Position','item','',1,0,'',0),(80,'添加推荐位',78,'Content','Position','add','',1,1,'',0),(81,'修改推荐位',78,'Content','Position','edit','',1,0,'',0),(82,'删除推荐位',78,'Content','Position','delete','',1,0,'',0),(83,'信息编辑',79,'Content','Position','item_manage','',1,0,'',0),(84,'信息排序',79,'Content','Position','item_listorder','',1,0,'',0),(85,'数据重建',78,'Content','Position','rebuilding','',1,0,'',0),(86,'Tags管理',45,'Content','Tags','index','',1,1,'',0),(87,'修改',86,'Content','Tags','edit','',1,0,'',0),(88,'删除',86,'Content','Tags','delete','',1,0,'',0),(89,'Tags数据重建',86,'Content','Tags','create','',1,1,'',0),(90,'界面',0,'Template','Style','index','',0,1,'',0),(91,'模板管理',90,'Template','Style','index','',0,1,'',0),(92,'模板风格',91,'Template','Style','index','',1,1,'',0),(93,'添加模板页',92,'Template','Style','add','',1,1,'',0),(94,'删除模板',92,'Template','Style','delete','',1,0,'',0),(95,'修改模板',92,'Template','Style','edit','',1,0,'',0),(96,'主题管理',91,'Template','Theme','index','',1,1,'',0),(97,'主题更换',96,'Template','Theme','chose','',1,0,'',0),(98,'自定义页面',90,'Template','Custompage','index','',0,1,'',0),(99,'自定义页面',98,'Template','Custompage','index','',1,1,'',0),(100,'添加自定义页面',99,'Template','Custompage','add','',1,1,'',0),(101,'删除自定义页面',99,'Template','Custompage','delete','',1,0,'',0),(102,'编辑自定义页面',99,'Template','Custompage','edit','',1,0,'',0),(103,'自定义列表',98,'Template','Customlist','index','',1,1,'',0),(104,'添加列表',103,'Template','Customlist','add','',1,1,'',0),(105,'删除列表',103,'Template','Customlist','delete','',1,0,'',0),(106,'编辑列表',103,'Template','Customlist','edit','',1,0,'',0),(107,'生成列表',103,'Template','Customlist','generate','',1,0,'',0),(108,'安装模块',39,'Admin','Moduleshop','install','',1,0,'',0),(109,'升级模块',39,'Admin','Moduleshop','upgrade','',1,0,'',0),(110,'安装插件',40,'Admin','Addonshop','install','',1,0,'',0),(111,'升级插件',40,'Admin','Addonshop','upgrade','',1,0,'',0),(112,'栏目授权',26,'Admin','Rbac','setting_cat_priv','',1,0,'',0),(113,'3G手机版管理',42,'Wap','Wap','index','',1,1,'3G手机版管理！',0),(114,'修改',113,'Wap','Wap','edit','',1,0,'',0),(139,'专题添加',138,'Topic','Topic','add','',1,1,'',0),(138,'专题专栏',42,'Topic','Topic','index','',0,1,'专题专栏',0),(120,'评论管理',37,'Comments','Comments','index','',0,1,'评论管理！',0),(121,'评论设置',120,'Comments','Comments','config','',1,1,'',0),(122,'分表管理',121,'Comments','Comments','fenbiao','',1,1,'',0),(123,'创建新的分表',122,'Comments','Comments','addfenbiao','',1,1,'',0),(124,'字段管理',121,'Comments','Field','index','',1,1,'',0),(125,'添加字段',124,'Comments','Field','add','',1,1,'',0),(126,'删除字段',124,'Comments','Field','delete','',1,0,'',0),(127,'编辑字段',124,'Comments','Field','edit','',1,0,'',0),(128,'表情管理',121,'Comments','Emotion','index','',1,1,'',0),(129,'评论管理',120,'Comments','Comments','index','',1,1,'',0),(130,'编辑',129,'Comments','Comments','edit','',1,0,'',0),(131,'删除',129,'Comments','Comments','delete','',1,0,'',0),(132,'审核评论',129,'Comments','Comments','check','',1,1,'',0),(133,'垃圾评论',129,'Comments','Comments','spamcomment','',1,0,'',0),(134,'回复评论',129,'Comments','Comments','replycomment','',1,0,'',0),(135,'搜索配置',42,'Search','Search','index','',0,1,'搜索配置！',0),(136,'重建索引',135,'Search','Search','create','',1,1,'',0),(137,'热门搜索',135,'Search','Search','searchot','',1,1,'',0);
/*!40000 ALTER TABLE `shuipf_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_model`
--

DROP TABLE IF EXISTS `shuipf_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_model` (
  `modelid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL DEFAULT '' COMMENT '模型名称',
  `description` char(100) NOT NULL DEFAULT '' COMMENT '描述',
  `tablename` char(20) NOT NULL DEFAULT '' COMMENT '表名',
  `setting` text COMMENT '配置信息',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `items` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '信息数',
  `enablesearch` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启全站搜索',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用 1禁用',
  `default_style` char(30) NOT NULL DEFAULT '' COMMENT '风格',
  `category_template` char(30) NOT NULL DEFAULT '' COMMENT '栏目模板',
  `list_template` char(30) NOT NULL DEFAULT '' COMMENT '列表模板',
  `show_template` char(30) NOT NULL DEFAULT '' COMMENT '内容模板',
  `js_template` varchar(30) NOT NULL DEFAULT '' COMMENT 'JS模板',
  `sort` tinyint(3) NOT NULL DEFAULT '0' COMMENT '排序',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '模块标识',
  PRIMARY KEY (`modelid`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='内容模型列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_model`
--

LOCK TABLES `shuipf_model` WRITE;
/*!40000 ALTER TABLE `shuipf_model` DISABLE KEYS */;
INSERT INTO `shuipf_model` VALUES (1,'文章模型','文章模型','article','',1403150253,0,1,0,'','','','','',0,0),(2,'下载模型','下载模型','download','',1403153866,0,1,0,'','','','','',0,0),(3,'图片模型','图片模型','photo','',1403153881,0,1,0,'','','','','',0,0);
/*!40000 ALTER TABLE `shuipf_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_model_field`
--

DROP TABLE IF EXISTS `shuipf_model_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_model_field` (
  `fieldid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `field` varchar(20) NOT NULL DEFAULT '' COMMENT '字段名',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '别名',
  `tips` text COMMENT '字段提示',
  `css` varchar(30) NOT NULL DEFAULT '' COMMENT '表单样式',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最小值',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大值',
  `pattern` varchar(255) NOT NULL DEFAULT '' COMMENT '数据校验正则',
  `errortips` varchar(255) NOT NULL DEFAULT '' COMMENT '数据校验未通过的提示信息',
  `formtype` varchar(20) NOT NULL DEFAULT '' COMMENT '字段类型',
  `setting` mediumtext,
  `formattribute` varchar(255) NOT NULL DEFAULT '',
  `unsetgroupids` varchar(255) NOT NULL DEFAULT '',
  `unsetroleids` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否内部字段 1是',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否系统字段 1 是',
  `isunique` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '值唯一',
  `isbase` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为基本信息',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为搜索条件',
  `isadd` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '在前台投稿中显示',
  `isfulltext` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为全站搜索信息',
  `isposition` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否入库到推荐位',
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1 禁用 0启用',
  `isomnipotent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  KEY `modelid` (`modelid`,`disabled`),
  KEY `field` (`field`,`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='模型字段列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_model_field`
--

LOCK TABLES `shuipf_model_field` WRITE;
/*!40000 ALTER TABLE `shuipf_model_field` DISABLE KEYS */;
INSERT INTO `shuipf_model_field` VALUES (1,1,'status','状态','','',0,2,'','','box','a:8:{s:7:\"options\";s:0:\"\";s:9:\"fieldtype\";s:7:\"varchar\";s:5:\"width\";s:0:\"\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"outputtype\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','','',1,1,0,1,0,0,0,0,15,0,0),(2,1,'username','用户名','','',0,20,'','','text','a:5:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','','',1,1,0,1,0,0,0,0,16,0,0),(3,1,'islink','转向链接','','',0,0,'','','islink','a:3:{s:4:\"size\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','','',0,1,0,0,0,1,0,0,17,0,0),(4,1,'template','内容页模板','','',0,30,'','','template','a:2:{s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','-99','-99',0,0,0,0,0,0,0,0,13,0,0),(5,1,'allow_comment','允许评论','','',0,0,'','','box','a:10:{s:7:\"options\";s:32:\"允许评论|1\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','','',0,0,0,0,0,0,0,0,14,0,0),(6,1,'pages','分页方式','','',0,0,'','','pages','a:2:{s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','-99','-99',0,0,0,1,0,0,0,0,9,0,0),(7,1,'inputtime','真实发布时间','','',0,0,'','','datetime','a:5:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','','',1,1,0,0,0,0,0,1,11,0,0),(8,1,'posid','推荐位','','',0,0,'','','posid','a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','','',0,1,0,1,0,0,0,1,11,0,0),(9,1,'url','URL','','',0,100,'','','text','a:5:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','','',1,1,0,1,0,0,0,1,12,0,0),(10,1,'listorder','排序','','',0,6,'','','number','a:7:{s:9:\"minnumber\";s:0:\"\";s:9:\"maxnumber\";s:0:\"\";s:13:\"decimaldigits\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','','',1,1,0,1,0,0,0,0,18,0,0),(11,1,'relation','相关文章','','',0,255,'','','omnipotent','a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关文章\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','','',0,0,0,0,0,0,1,0,8,0,0),(12,1,'thumb','缩略图','','',0,100,'','','image','a:10:{s:5:\"width\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','','',0,1,0,0,0,1,0,1,7,0,0),(13,1,'catid','栏目','','',1,6,'/^[0-9]{1,6}$/','请选择栏目','catid','a:2:{s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','-99','-99',0,1,0,1,1,1,0,0,1,0,0),(15,1,'title','标题','','inputtitle',1,80,'','请输入标题','title','a:2:{s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','','',0,1,0,1,1,1,1,1,3,0,0),(16,1,'keywords','关键词','多关之间用空格或者“,”隔开','',0,40,'','','keyword','a:2:{s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','-99','-99',0,1,0,1,1,1,1,0,4,0,0),(17,1,'tags','TAGS','多关之间用空格或者“,”隔开','',0,0,'','','tags','a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}','','','',0,1,0,1,0,0,0,0,4,0,0),(18,1,'description','摘要','','',0,255,'','','textarea','a:7:{s:5:\"width\";s:2:\"99\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','','',0,1,0,1,0,1,1,1,5,0,0),(19,1,'updatetime','发布时间','','',0,0,'','','datetime','a:5:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','','',0,1,0,0,0,0,0,0,10,0,0),(20,1,'content','内容','<style type=\"text/css\">.content_attr{ border:1px solid #CCC; padding:5px 8px; background:#FFC; margin-top:6px}</style><div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\n</div>','',1,999999,'','内容不能为空','editor','a:7:{s:7:\"toolbar\";s:4:\"full\";s:12:\"defaultvalue\";s:0:\"\";s:15:\"enablesaveimage\";s:1:\"1\";s:6:\"height\";s:0:\"\";s:9:\"fieldtype\";s:10:\"mediumtext\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','','',0,0,0,1,0,1,1,0,6,0,0),(21,1,'copyfrom','来源','','',0,0,'','','copyfrom','a:4:{s:12:\"defaultvalue\";s:0:\"\";s:5:\"width\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','','',0,0,0,1,0,1,0,0,5,0,0),(26,2,'username','用户名','','',0,20,'','','text','','','','',1,1,0,1,0,0,0,0,16,0,0),(27,2,'islink','转向链接','','',0,0,'','','islink','','','','',0,1,0,0,0,1,0,0,17,0,0),(28,2,'template','内容页模板','','',0,30,'','','template','a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}','','-99','-99',0,0,0,0,0,0,0,0,13,0,0),(29,2,'allow_comment','允许评论','','',0,0,'','','box','a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}','','','',0,0,0,0,0,0,0,0,14,0,0),(24,1,'prefix','自定义文件名','','',0,255,'','','text','a:5:{s:4:\"size\";s:3:\"180\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','','',0,1,0,0,0,0,0,0,17,0,0),(66,3,'prefix','自定义文件名','','',0,0,'','','text','a:7:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}','','','',0,1,0,0,0,0,0,0,8,0,0),(25,2,'status','状态','','',0,2,'','','box','','','','',1,1,0,1,0,0,0,0,15,0,0),(65,2,'prefix','自定义文件名','','',0,0,'','','text','a:7:{s:4:\"size\";s:3:\"180\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"ispassword\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}','','','',0,1,0,0,0,0,0,0,17,0,0),(31,2,'inputtime','真实发布时间','','',0,0,'','','datetime','a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}','','','',1,1,0,0,0,0,0,1,11,0,0),(32,2,'posid','推荐位','','',0,0,'','','posid','a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','','',0,1,0,1,0,0,0,1,11,0,0),(33,2,'url','URL','','',0,100,'','','text','','','','',1,1,0,1,0,0,0,1,12,0,0),(34,2,'listorder','排序','','',0,6,'','','number','','','','',1,1,0,1,0,0,0,0,18,0,0),(35,2,'relation','相关下载','','',0,255,'','','omnipotent','a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关信息\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','','',0,0,0,0,0,0,1,0,8,0,0),(36,2,'thumb','缩略图','','',0,100,'','','image','a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}','','','',0,1,0,0,0,1,0,1,7,0,0),(37,2,'catid','栏目','','',1,6,'/^[0-9]{1,6}$/','请选择栏目','catid','a:1:{s:12:\"defaultvalue\";s:0:\"\";}','','-99','-99',0,1,0,1,1,1,0,0,1,0,0),(38,2,'typeid','类别','','',0,0,'','','typeid','a:2:{s:9:\"minnumber\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}','','','',1,1,0,1,1,1,0,0,2,0,0),(39,2,'title','标题','','inputtitle',1,80,'','请输入标题','title','','','','',0,1,0,1,1,1,1,1,3,0,0),(40,2,'keywords','关键词','多关键词之间用空格隔开','',0,40,'','','keyword','a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}','','-99','-99',0,1,0,1,1,1,1,0,4,0,0),(41,2,'tags','TAGS','多关之间用空格或者“,”隔开','',0,0,'','','tags','a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}','','','',0,1,0,1,0,0,0,0,4,0,0),(42,2,'description','摘要','','',0,255,'','','textarea','a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}','','','',0,1,0,1,0,1,1,1,5,0,0),(43,2,'updatetime','发布时间','','',0,0,'','','datetime','a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}','','','',0,1,0,0,0,0,0,0,10,0,0),(45,3,'status','状态','','',0,2,'','','box','','','','',1,1,0,1,0,0,0,0,15,0,0),(46,3,'username','用户名','','',0,20,'','','text','','','','',1,1,0,1,0,0,0,0,16,0,0),(47,3,'islink','转向链接','','',0,0,'','','islink','','','','',0,1,0,0,0,1,0,0,17,0,0),(48,3,'template','内容页模板','','',0,30,'','','template','a:2:{s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:0:\"\";}','','-99','-99',0,0,0,0,0,0,0,0,13,0,0),(49,3,'allow_comment','允许评论','','',0,0,'','','box','a:9:{s:7:\"options\";s:33:\"允许评论|1\r\n不允许评论|0\";s:7:\"boxtype\";s:5:\"radio\";s:9:\"fieldtype\";s:7:\"tinyint\";s:9:\"minnumber\";s:1:\"1\";s:5:\"width\";s:2:\"88\";s:4:\"size\";s:0:\"\";s:12:\"defaultvalue\";s:1:\"1\";s:10:\"outputtype\";s:1:\"1\";s:10:\"filtertype\";s:1:\"0\";}','','','',0,0,0,0,0,0,0,0,14,0,0),(67,2,'download','文件下载','','',0,0,'','','downfiles','a:9:{s:15:\"upload_allowext\";s:20:\"gif|jpg|jpeg|png|bmp\";s:13:\"isselectimage\";s:1:\"0\";s:13:\"upload_number\";s:2:\"10\";s:10:\"statistics\";s:0:\"\";s:12:\"downloadlink\";s:1:\"1\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}','','','',0,0,0,1,0,1,0,0,4,0,0),(51,3,'inputtime','真实发布时间','','',0,0,'','','datetime','a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}','','','',1,1,0,0,0,0,0,1,11,0,0),(52,3,'posid','推荐位','','',0,0,'','','posid','a:4:{s:5:\"width\";s:3:\"125\";s:12:\"defaultvalue\";s:0:\"\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','','',0,1,0,1,0,0,0,1,11,0,0),(53,3,'url','URL','','',0,100,'','','text','','','','',1,1,0,1,0,0,0,1,12,0,0),(54,3,'listorder','排序','','',0,6,'','','number','','','','',1,1,0,1,0,0,0,0,18,0,0),(55,3,'relation','相关图片','','',0,255,'','','omnipotent','a:4:{s:8:\"formtext\";s:464:\"<input type=\"hidden\" name=\"info[relation]\" id=\"relation\" value=\"{FIELD_VALUE}\" style=\"50\" >\n<ul class=\"list-dot\" id=\"relation_text\">\n</ul>\n<input type=\"button\" value=\"添加相关\" onClick=\"omnipotent(\'selectid\',GV.DIMAUB+\'index.php?a=public_relationlist&m=Content&g=Content&modelid={MODELID}\',\'添加相关信息\',1)\" class=\"btn\">\n<span class=\"edit_content\">\n  <input type=\"button\" value=\"显示已有\" onClick=\"show_relation({MODELID},{ID})\" class=\"btn\">\n</span>\";s:9:\"fieldtype\";s:7:\"varchar\";s:12:\"backstagefun\";s:0:\"\";s:8:\"frontfun\";s:0:\"\";}','','','',0,0,0,0,0,0,1,0,8,0,0),(56,3,'thumb','缩略图','','',0,100,'','','image','a:9:{s:4:\"size\";s:2:\"50\";s:12:\"defaultvalue\";s:0:\"\";s:9:\"show_type\";s:1:\"1\";s:14:\"upload_maxsize\";s:4:\"1024\";s:15:\"upload_allowext\";s:20:\"jpg|jpeg|gif|png|bmp\";s:9:\"watermark\";s:1:\"0\";s:13:\"isselectimage\";s:1:\"1\";s:12:\"images_width\";s:0:\"\";s:13:\"images_height\";s:0:\"\";}','','','',0,1,0,0,0,1,0,1,7,0,0),(57,3,'catid','栏目','','',1,6,'/^[0-9]{1,6}$/','请选择栏目','catid','a:1:{s:12:\"defaultvalue\";s:0:\"\";}','','-99','-99',0,1,0,1,1,1,0,0,1,0,0),(59,3,'title','标题','','inputtitle',1,80,'','请输入标题','title','','','','',0,1,0,1,1,1,1,1,3,0,0),(60,3,'keywords','关键词','多关键词之间用空格隔开','',0,40,'','','keyword','a:2:{s:4:\"size\";s:3:\"100\";s:12:\"defaultvalue\";s:0:\"\";}','','-99','-99',0,1,0,1,1,1,1,0,4,0,0),(61,3,'tags','TAGS','多关之间用空格或者“,”隔开','',0,0,'','','tags','a:4:{s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}','','','',0,1,0,1,0,0,0,0,4,0,0),(62,3,'description','摘要','','',0,255,'','','textarea','a:4:{s:5:\"width\";s:2:\"98\";s:6:\"height\";s:2:\"46\";s:12:\"defaultvalue\";s:0:\"\";s:10:\"enablehtml\";s:1:\"0\";}','','','',0,1,0,1,0,1,1,1,5,0,0),(63,3,'updatetime','发布时间','','',0,0,'','','datetime','a:3:{s:9:\"fieldtype\";s:3:\"int\";s:6:\"format\";s:11:\"Y-m-d H:i:s\";s:11:\"defaulttype\";s:1:\"0\";}','','','',0,1,0,0,0,0,0,0,10,0,0),(68,3,'imgs','图片列表','','',0,0,'','','images','a:8:{s:15:\"upload_allowext\";s:20:\"gif|jpg|jpeg|png|bmp\";s:13:\"isselectimage\";s:1:\"0\";s:13:\"upload_number\";s:2:\"10\";s:9:\"watermark\";s:1:\"0\";s:12:\"backstagefun\";s:0:\"\";s:17:\"backstagefun_type\";s:1:\"1\";s:8:\"frontfun\";s:0:\"\";s:13:\"frontfun_type\";s:1:\"1\";}','','','',0,0,0,1,0,1,0,0,8,0,0);
/*!40000 ALTER TABLE `shuipf_model_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_module`
--

DROP TABLE IF EXISTS `shuipf_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_module` (
  `module` varchar(15) NOT NULL COMMENT '模块',
  `modulename` varchar(20) NOT NULL DEFAULT '' COMMENT '模块名称',
  `sign` varchar(255) NOT NULL DEFAULT '' COMMENT '签名',
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '内置模块',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否可用',
  `version` varchar(50) NOT NULL DEFAULT '' COMMENT '版本',
  `setting` mediumtext COMMENT '设置信息',
  `installtime` int(10) NOT NULL DEFAULT '0' COMMENT '安装时间',
  `updatetime` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`module`),
  KEY `sign` (`sign`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='已安装模块列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_module`
--

LOCK TABLES `shuipf_module` WRITE;
/*!40000 ALTER TABLE `shuipf_module` DISABLE KEYS */;
INSERT INTO `shuipf_module` VALUES ('Wap','WAP手机版','4B7B06DA1101821D6AAE4B51BC96E6AF',0,1,'1.0.2','',1457058978,1457058978,0),('Topic','专题专栏','3180c30f99a4a2b11967441c896fa6c3',0,1,'1.0.0','',1457077205,1457077205,0),('Comments','评论模块','54d4717144d5ed6e415af8249190cc8b',0,1,'1.0.1','',1457070835,1457070835,0),('Search','搜索','2e01dfe1d6be7e454aea66c442639b7e',0,1,'1.0.2','',1457071324,1457071324,0);
/*!40000 ALTER TABLE `shuipf_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_operationlog`
--

DROP TABLE IF EXISTS `shuipf_operationlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_operationlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `uid` smallint(6) NOT NULL DEFAULT '0' COMMENT '操作帐号ID',
  `time` int(10) NOT NULL DEFAULT '0' COMMENT '操作时间',
  `ip` char(20) NOT NULL DEFAULT '' COMMENT 'IP',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态,0错误提示，1为正确提示',
  `info` text COMMENT '其他说明',
  `get` varchar(255) NOT NULL DEFAULT '' COMMENT 'get数据',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `username` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COMMENT='后台操作日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_operationlog`
--

LOCK TABLES `shuipf_operationlog` WRITE;
/*!40000 ALTER TABLE `shuipf_operationlog` DISABLE KEYS */;
INSERT INTO `shuipf_operationlog` VALUES (1,0,1457055969,'172.16.7.100',0,'提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST','http://172.16.7.100/shuipfcms/admin.php?m=Public&a=login'),(2,1,1457055992,'172.16.7.100',1,'提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache'),(3,1,1457055993,'172.16.7.100',1,'提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site'),(4,1,1457055993,'172.16.7.100',1,'提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CData'),(5,1,1457055995,'172.16.7.100',1,'提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CData%2CTemp'),(6,1,1457055995,'172.16.7.100',1,'提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=1'),(7,1,1457055996,'172.16.7.100',1,'提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=2'),(8,1,1457055996,'172.16.7.100',1,'提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=3'),(9,1,1457055997,'172.16.7.100',1,'提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=4'),(10,1,1457055997,'172.16.7.100',1,'提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=5'),(11,1,1457055998,'172.16.7.100',1,'提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=6'),(12,1,1457055998,'172.16.7.100',1,'提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=7'),(13,1,1457055999,'172.16.7.100',1,'提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=8'),(14,1,1457055999,'172.16.7.100',1,'提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=9'),(15,1,1457056067,'172.16.7.100',0,'提示语：你还没有安装插件模块，无法使用插件商店！<br/>模块：Admin,控制器：Addonshop,方法：index<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php'),(16,1,1457056070,'172.16.7.100',0,'提示语：你还没有安装插件模块，无法使用插件商店！<br/>模块：Admin,控制器：Addonshop,方法：index<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php'),(17,1,1457056175,'172.16.7.100',0,'提示语：你还没有安装插件模块，无法使用插件商店！<br/>模块：Admin,控制器：Addonshop,方法：index<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php'),(18,1,1457056232,'172.16.7.100',1,'提示语：更新成功！<br/>模块：Admin,控制器：Config,方法：index<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Config&menuid=8'),(19,1,1457057131,'172.16.7.100',1,'提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache'),(20,1,1457057132,'172.16.7.100',1,'提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site'),(21,1,1457057133,'172.16.7.100',1,'提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CData'),(22,1,1457057138,'172.16.7.100',1,'提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CData%2CTemp'),(23,1,1457057139,'172.16.7.100',1,'提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=1'),(24,1,1457057140,'172.16.7.100',1,'提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=2'),(25,1,1457057141,'172.16.7.100',1,'提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=3'),(26,1,1457057142,'172.16.7.100',1,'提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=4'),(27,1,1457057143,'172.16.7.100',1,'提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=5'),(28,1,1457057144,'172.16.7.100',1,'提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=6'),(29,1,1457057146,'172.16.7.100',1,'提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=7'),(30,1,1457057147,'172.16.7.100',1,'提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=8'),(31,1,1457057148,'172.16.7.100',1,'提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=9'),(32,1,1457057297,'172.16.7.100',0,'提示语：你还没有安装插件模块，无法使用插件商店！<br/>模块：Admin,控制器：Addonshop,方法：index<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php'),(33,1,1457057315,'172.16.7.100',1,'提示语：更新完成！<br/>模块：Template,控制器：Custompage,方法：createhtml<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php'),(34,1,1457057358,'172.16.7.100',1,'提示语：站点日志清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache'),(35,1,1457057363,'172.16.7.100',1,'提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache'),(36,1,1457057439,'172.16.7.100',0,'提示语：主题未改变！<br/>模块：Template,控制器：Theme,方法：chose<br/>请求方式：GET','http://172.16.7.100/shuipfcms/index.php?g=Template&m=Theme&menuid=96'),(37,1,1457058315,'172.16.7.100',1,'提示语：添加成功！<br/>模块：Content,控制器：Category,方法：add<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/index.php?m=Category&a=add&menuid=47'),(38,1,1457058345,'172.16.7.100',1,'提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache'),(39,1,1457058376,'172.16.7.100',0,'提示语：栏目删除失败，错误原因可能是栏目下存在信息，无法删除！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/index.php?m=Category&menuid=47'),(40,1,1457058381,'172.16.7.100',0,'提示语：栏目删除失败，错误原因可能是栏目下存在信息，无法删除！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/index.php?m=Category&menuid=47'),(41,1,1457058389,'172.16.7.100',0,'提示语：栏目删除失败，错误原因可能是栏目下存在信息，无法删除！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/index.php?m=Category&menuid=47'),(42,1,1457058394,'172.16.7.100',1,'提示语：栏目总数:<font color=\"#FF0000\">26</font>,每次处理:<font color=\"#FF0000\">100</font>,进度:<font color=\"#FF0000\">1/1</font>,栏目缓存更新中...<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/index.php?m=Category&menuid=47'),(43,1,1457058395,'172.16.7.100',1,'提示语：缓存更新成功！<br/>模块：Content,控制器：Category,方法：public_cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/index.php?m=Category&a=public_cache'),(44,1,1457058409,'172.16.7.100',0,'提示语：栏目删除失败，错误原因可能是栏目下存在信息，无法删除！<br/>模块：Content,控制器：Category,方法：delete<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/index.php?m=Category'),(45,1,1457058415,'172.16.7.100',0,'提示语：该栏目下已经存在数据，无法转换！<br/>模块：Content,控制器：Category,方法：categoryshux<br/>请求方式：GET','http://172.16.7.100/shuipfcms/index.php?m=Category'),(46,1,1457058432,'172.16.7.100',1,'提示语：更新成功！<br/>模块：Content,控制器：Category,方法：edit<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/index.php?m=Category&a=edit&catid=1'),(47,1,1457058641,'172.16.7.100',0,'提示语：你还没有安装插件模块，无法使用插件商店！<br/>模块：Admin,控制器：Addonshop,方法：index<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php'),(48,1,1457058678,'172.16.7.100',0,'提示语：你还没有安装插件模块，无法使用插件商店！<br/>模块：Admin,控制器：Addonshop,方法：index<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php'),(49,1,1457058687,'172.16.7.100',0,'提示语：云平台帐号不能为空！请进入网站设置->高级配置中进行配置。提示：配置完记得 更新缓存 ！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_1<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Moduleshop&a=install&sign=4B7B06DA1101821D6AAE4B51BC96E6AF'),(50,1,1457058705,'172.16.7.100',0,'提示语：云平台帐号不能为空！请进入网站设置->高级配置中进行配置。提示：配置完记得 更新缓存 ！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_1<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Moduleshop&a=install&sign=4B7B06DA1101821D6AAE4B51BC96E6AF'),(51,1,1457058925,'172.16.7.100',1,'提示语：修改成功，请及时更新缓存！<br/>模块：Admin,控制器：Config,方法：addition<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Config&a=addition&menuid=8'),(52,1,1457058942,'172.16.7.100',0,'提示语：云平台帐号不能为空！请进入网站设置->高级配置中进行配置。提示：配置完记得 更新缓存 ！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_1<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Moduleshop&a=install&sign=4B7B06DA1101821D6AAE4B51BC96E6AF'),(53,1,1457058948,'172.16.7.100',1,'提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache'),(54,1,1457058951,'172.16.7.100',1,'提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache'),(55,1,1457058952,'172.16.7.100',1,'提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site'),(56,1,1457058953,'172.16.7.100',1,'提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CData'),(57,1,1457058956,'172.16.7.100',1,'提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CData%2CTemp'),(58,1,1457058957,'172.16.7.100',1,'提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=1'),(59,1,1457058957,'172.16.7.100',1,'提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=2'),(60,1,1457058958,'172.16.7.100',1,'提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=3'),(61,1,1457058958,'172.16.7.100',1,'提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=4'),(62,1,1457058959,'172.16.7.100',1,'提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=5'),(63,1,1457058959,'172.16.7.100',1,'提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=6'),(64,1,1457058960,'172.16.7.100',1,'提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=7'),(65,1,1457058960,'172.16.7.100',1,'提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=8'),(66,1,1457058961,'172.16.7.100',1,'提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=9'),(67,1,1457058977,'172.16.7.100',1,'提示语：文件下载完毕！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_1<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Moduleshop&a=install&sign=4B7B06DA1101821D6AAE4B51BC96E6AF'),(68,1,1457058978,'172.16.7.100',1,'提示语：移动文件到模块目录中，等待安装！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_2<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Moduleshop&a=install&sign=4B7B06DA1101821D6AAE4B51BC96E6AF'),(69,1,1457058978,'172.16.7.100',1,'提示语：模块安装成功！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_3<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Moduleshop&a=install&sign=4B7B06DA1101821D6AAE4B51BC96E6AF'),(70,1,1457069600,'172.16.7.100',0,'提示语：Curl 下载出现错误！错误信息：Could not resolve host: cloudfile.shuipfcms.com<br/>模块：Admin,控制器：Moduleshop,方法：public_step_1<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Moduleshop&a=install&sign=960c30f9b119fa6c39a4a31867441c82'),(71,1,1457069608,'172.16.7.100',1,'提示语：文件下载完毕！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_1<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Moduleshop&a=install&sign=960c30f9b119fa6c39a4a31867441c82'),(72,1,1457069609,'172.16.7.100',1,'提示语：移动文件到模块目录中，等待安装！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_2<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Moduleshop&a=install&sign=960c30f9b119fa6c39a4a31867441c82'),(73,1,1457069609,'172.16.7.100',1,'提示语：模块安装成功！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_3<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Moduleshop&a=install&sign=960c30f9b119fa6c39a4a31867441c82'),(74,1,1457069693,'172.16.7.100',0,'提示语：你还没有安装插件模块，无法使用插件商店！<br/>模块：Admin,控制器：Addonshop,方法：index<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php'),(75,1,1457069706,'172.16.7.100',1,'提示语：清理缓存目录[Cloud]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache'),(76,1,1457069707,'172.16.7.100',1,'提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site'),(77,1,1457069708,'172.16.7.100',1,'提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CCloud'),(78,1,1457069709,'172.16.7.100',1,'提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CCloud%2CData'),(79,1,1457069711,'172.16.7.100',1,'提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CCloud%2CData%2CTemp'),(80,1,1457069711,'172.16.7.100',1,'提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=1'),(81,1,1457069712,'172.16.7.100',1,'提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=2'),(82,1,1457069713,'172.16.7.100',1,'提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=3'),(83,1,1457069713,'172.16.7.100',1,'提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=4'),(84,1,1457069714,'172.16.7.100',1,'提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=5'),(85,1,1457069714,'172.16.7.100',1,'提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=6'),(86,1,1457069715,'172.16.7.100',1,'提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=7'),(87,1,1457069715,'172.16.7.100',1,'提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=8'),(88,1,1457069715,'172.16.7.100',1,'提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=9'),(89,1,1457069719,'172.16.7.100',1,'提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache'),(90,1,1457069888,'172.16.7.100',0,'提示语：你还没有安装插件模块，无法使用插件商店！<br/>模块：Admin,控制器：Addonshop,方法：index<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php'),(91,1,1457070218,'172.16.7.100',1,'提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php'),(92,1,1457070248,'172.16.7.100',1,'提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache'),(93,1,1457070248,'172.16.7.100',1,'提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site'),(94,1,1457070249,'172.16.7.100',1,'提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CData'),(95,1,1457070253,'172.16.7.100',1,'提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CData%2CTemp'),(96,1,1457070253,'172.16.7.100',1,'提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=1'),(97,1,1457070253,'172.16.7.100',1,'提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=2'),(98,1,1457070254,'172.16.7.100',1,'提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=3'),(99,1,1457070255,'172.16.7.100',1,'提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=4'),(100,1,1457070255,'172.16.7.100',1,'提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=5'),(101,1,1457070255,'172.16.7.100',1,'提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=6'),(102,1,1457070256,'172.16.7.100',1,'提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=7'),(103,1,1457070256,'172.16.7.100',1,'提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=8'),(104,1,1457070257,'172.16.7.100',1,'提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=9'),(105,1,1457070391,'172.16.7.100',0,'提示语：你还没有安装插件模块，无法使用插件商店！<br/>模块：Admin,控制器：Addonshop,方法：index<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php'),(106,1,1457070396,'172.16.7.100',0,'提示语：你还没有安装插件模块，无法使用插件商店！<br/>模块：Admin,控制器：Addonshop,方法：index<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php'),(107,1,1457070489,'172.16.7.100',1,'提示语：模块安装成功！<br/>模块：Admin,控制器：Module,方法：install<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Module&a=install&module=Topic'),(108,1,1457070500,'172.16.7.100',1,'提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache'),(109,1,1457070503,'172.16.7.100',1,'提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache'),(110,1,1457070504,'172.16.7.100',1,'提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site'),(111,1,1457070504,'172.16.7.100',1,'提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CData'),(112,1,1457070508,'172.16.7.100',1,'提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CData%2CTemp'),(113,1,1457070508,'172.16.7.100',1,'提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CData%2CTemp'),(114,1,1457070509,'172.16.7.100',1,'提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=1'),(115,1,1457070509,'172.16.7.100',1,'提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=2'),(116,1,1457070510,'172.16.7.100',1,'提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=3'),(117,1,1457070510,'172.16.7.100',1,'提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=4'),(118,1,1457070511,'172.16.7.100',1,'提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=5'),(119,1,1457070511,'172.16.7.100',1,'提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=6'),(120,1,1457070511,'172.16.7.100',1,'提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=7'),(121,1,1457070512,'172.16.7.100',1,'提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=8'),(122,1,1457070512,'172.16.7.100',1,'提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=9'),(123,1,1457070542,'172.16.7.100',1,'提示语：注销成功！<br/>模块：Admin,控制器：Public,方法：logout<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php'),(124,1,1457070615,'172.16.7.100',0,'提示语：你还没有安装插件模块，无法使用插件商店！<br/>模块：Admin,控制器：Addonshop,方法：index<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php'),(125,1,1457070628,'172.16.7.100',0,'提示语：验证码错误，请重新输入！<br/>模块：Admin,控制器：Public,方法：tologin<br/>请求方式：POST','http://172.16.7.100/shuipfcms/admin.php?m=Public&a=login'),(126,1,1457070807,'172.16.7.100',1,'提示语：添加成功！<br/>模块：Content,控制器：Content,方法：add<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/index.php?m=Content&a=add&catid=10'),(127,1,1457070834,'172.16.7.100',1,'提示语：文件下载完毕！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_1<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Moduleshop&a=install&sign=54d4717144d5ed6e415af8249190cc8b'),(128,1,1457070834,'172.16.7.100',1,'提示语：移动文件到模块目录中，等待安装！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_2<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Moduleshop&a=install&sign=54d4717144d5ed6e415af8249190cc8b'),(129,1,1457070835,'172.16.7.100',1,'提示语：模块安装成功！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_3<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Moduleshop&a=install&sign=54d4717144d5ed6e415af8249190cc8b'),(130,1,1457070980,'172.16.7.100',1,'提示语：模块卸载成功，请及时更新缓存！<br/>模块：Admin,控制器：Module,方法：uninstall<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Module&menuid=43'),(131,1,1457071220,'172.16.7.100',1,'提示语：模块安装成功！<br/>模块：Admin,控制器：Module,方法：install<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Module&a=install&module=Topic'),(132,1,1457071323,'172.16.7.100',1,'提示语：文件下载完毕！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_1<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Moduleshop&a=install&sign=2e01dfe1d6be7e454aea66c442639b7e'),(133,1,1457071324,'172.16.7.100',1,'提示语：移动文件到模块目录中，等待安装！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_2<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Moduleshop&a=install&sign=2e01dfe1d6be7e454aea66c442639b7e'),(134,1,1457071324,'172.16.7.100',1,'提示语：模块安装成功！<br/>模块：Admin,控制器：Moduleshop,方法：public_step_3<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Moduleshop&a=install&sign=2e01dfe1d6be7e454aea66c442639b7e'),(135,1,1457077090,'172.16.7.100',1,'提示语：清理缓存目录[Cloud]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache'),(136,1,1457077091,'172.16.7.100',1,'提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site'),(137,1,1457077091,'172.16.7.100',1,'提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CCloud'),(138,1,1457077092,'172.16.7.100',1,'提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CCloud%2CData'),(139,1,1457077095,'172.16.7.100',1,'提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CCloud%2CData%2CTemp'),(140,1,1457077096,'172.16.7.100',1,'提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=1'),(141,1,1457077096,'172.16.7.100',1,'提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=2'),(142,1,1457077097,'172.16.7.100',1,'提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=3'),(143,1,1457077097,'172.16.7.100',1,'提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=3'),(144,1,1457077098,'172.16.7.100',1,'提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=4'),(145,1,1457077098,'172.16.7.100',1,'提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=5'),(146,1,1457077099,'172.16.7.100',1,'提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=6'),(147,1,1457077099,'172.16.7.100',1,'提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=7'),(148,1,1457077100,'172.16.7.100',1,'提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=8'),(149,1,1457077101,'172.16.7.100',1,'提示语：更新缓存：评论配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=9'),(150,1,1457077101,'172.16.7.100',1,'提示语：更新缓存：评论表情<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=10'),(151,1,1457077102,'172.16.7.100',1,'提示语：更新缓存：全站搜索配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=11'),(152,1,1457077103,'172.16.7.100',1,'提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=12'),(153,1,1457077153,'172.16.7.100',1,'提示语：模块卸载成功，请及时更新缓存！<br/>模块：Admin,控制器：Module,方法：uninstall<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Module&menuid=43'),(154,1,1457077181,'172.16.7.100',1,'提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache'),(155,1,1457077186,'172.16.7.100',1,'提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache'),(156,1,1457077186,'172.16.7.100',1,'提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site'),(157,1,1457077187,'172.16.7.100',1,'提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CData'),(158,1,1457077190,'172.16.7.100',1,'提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CData%2CTemp'),(159,1,1457077191,'172.16.7.100',1,'提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=1'),(160,1,1457077191,'172.16.7.100',1,'提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=2'),(161,1,1457077192,'172.16.7.100',1,'提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=3'),(162,1,1457077192,'172.16.7.100',1,'提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=4'),(163,1,1457077193,'172.16.7.100',1,'提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=5'),(164,1,1457077193,'172.16.7.100',1,'提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=6'),(165,1,1457077194,'172.16.7.100',1,'提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=7'),(166,1,1457077194,'172.16.7.100',1,'提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=8'),(167,1,1457077194,'172.16.7.100',1,'提示语：更新缓存：评论配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=9'),(168,1,1457077195,'172.16.7.100',1,'提示语：更新缓存：评论表情<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=10'),(169,1,1457077195,'172.16.7.100',1,'提示语：更新缓存：全站搜索配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=11'),(170,1,1457077196,'172.16.7.100',1,'提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=12'),(171,1,1457077206,'172.16.7.100',1,'提示语：模块安装成功！<br/>模块：Admin,控制器：Module,方法：install<br/>请求方式：Ajax','http://172.16.7.100/shuipfcms/admin.php?m=Module&a=install&module=Topic'),(172,1,1457077237,'172.16.7.100',1,'提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache'),(173,1,1457077238,'172.16.7.100',1,'提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site'),(174,1,1457077238,'172.16.7.100',1,'提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CData'),(175,1,1457077242,'172.16.7.100',1,'提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CData%2CTemp'),(176,1,1457077242,'172.16.7.100',1,'提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=1'),(177,1,1457077243,'172.16.7.100',1,'提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=2'),(178,1,1457077244,'172.16.7.100',1,'提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=3'),(179,1,1457077244,'172.16.7.100',1,'提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=4'),(180,1,1457077244,'172.16.7.100',1,'提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=5'),(181,1,1457077245,'172.16.7.100',1,'提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=6'),(182,1,1457077245,'172.16.7.100',1,'提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=7'),(183,1,1457077246,'172.16.7.100',1,'提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=8'),(184,1,1457077247,'172.16.7.100',1,'提示语：更新缓存：评论配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=9'),(185,1,1457077247,'172.16.7.100',1,'提示语：更新缓存：评论表情<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=10'),(186,1,1457077247,'172.16.7.100',1,'提示语：更新缓存：全站搜索配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=11'),(187,1,1457077248,'172.16.7.100',1,'提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=12'),(188,1,1457078606,'172.16.7.100',1,'提示语：清理缓存目录[Data]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache'),(189,1,1457078607,'172.16.7.100',1,'提示语：清理缓存目录[Temp]成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site'),(190,1,1457078608,'172.16.7.100',1,'提示语：即将更新站点缓存！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CData'),(191,1,1457078611,'172.16.7.100',1,'提示语：更新缓存：网站配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&dir=%2CData%2CTemp'),(192,1,1457078612,'172.16.7.100',1,'提示语：更新缓存：可用模块列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=1'),(193,1,1457078612,'172.16.7.100',1,'提示语：更新缓存：行为列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=2'),(194,1,1457078613,'172.16.7.100',1,'提示语：更新缓存：后台菜单<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=3'),(195,1,1457078614,'172.16.7.100',1,'提示语：更新缓存：栏目索引<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=4'),(196,1,1457078614,'172.16.7.100',1,'提示语：更新缓存：模型列表<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=5'),(197,1,1457078615,'172.16.7.100',1,'提示语：更新缓存：URL规则<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=6'),(198,1,1457078615,'172.16.7.100',1,'提示语：更新缓存：模型字段<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=7'),(199,1,1457078616,'172.16.7.100',1,'提示语：更新缓存：推荐位<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=8'),(200,1,1457078616,'172.16.7.100',1,'提示语：更新缓存：评论配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=9'),(201,1,1457078616,'172.16.7.100',1,'提示语：更新缓存：评论表情<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=10'),(202,1,1457078617,'172.16.7.100',1,'提示语：更新缓存：全站搜索配置<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=11'),(203,1,1457078617,'172.16.7.100',1,'提示语：缓存更新完毕！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache&type=site&stop=12'),(204,1,1457078621,'172.16.7.100',1,'提示语：模板缓存清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache'),(205,1,1457078626,'172.16.7.100',1,'提示语：站点日志清理成功！<br/>模块：Admin,控制器：Index,方法：cache<br/>请求方式：GET','http://172.16.7.100/shuipfcms/admin.php?a=cache'),(206,1,1457079341,'172.16.7.100',0,'提示语：主题未改变！<br/>模块：Template,控制器：Theme,方法：chose<br/>请求方式：GET','http://172.16.7.100/shuipfcms/index.php?g=Template&m=Theme&menuid=96');
/*!40000 ALTER TABLE `shuipf_operationlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_page`
--

DROP TABLE IF EXISTS `shuipf_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_page` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `title` varchar(160) NOT NULL DEFAULT '' COMMENT '标题',
  `style` varchar(24) NOT NULL DEFAULT '' COMMENT '样式',
  `keywords` varchar(40) NOT NULL DEFAULT '' COMMENT '关键字',
  `content` text COMMENT '内容',
  `template` varchar(30) NOT NULL DEFAULT '',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`catid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单页内容表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_page`
--

LOCK TABLES `shuipf_page` WRITE;
/*!40000 ALTER TABLE `shuipf_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `shuipf_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_photo`
--

DROP TABLE IF EXISTS `shuipf_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_photo` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` char(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `style` char(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumb` char(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keywords` char(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` char(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  `prefix` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_photo`
--

LOCK TABLES `shuipf_photo` WRITE;
/*!40000 ALTER TABLE `shuipf_photo` DISABLE KEYS */;
INSERT INTO `shuipf_photo` VALUES (1,18,'漂亮女模特高清图片素材','','http://www.shuipfcms.com/demo/file/2013/06/51c5336cb9587.jpg','图片素材','图片素材','漂亮女模特高清图片素材，图片尺寸：2000 * 3000 像素',0,'/index.php?a=shows&catid=18&id=1',0,99,1,0,'admin',1403154794,1403154794,0,0,0,0,0,0,''),(2,18,'卷发靓丽美女高清图片素材','','http://www.shuipfcms.com/demo/file/2013/06/51c5333bbe0f9.jpg','高清图片','高清图片','卷发靓丽美女高清图片素材，图片尺寸：4288*2848像素。',0,'/index.php?a=shows&catid=18&id=2',0,99,1,0,'admin',1403154863,1403154863,2,0,2,2,2,1403155560,''),(3,18,'鲁豫微笑站立高清图片素材','','http://www.shuipfcms.com/demo/file/2013/06/51c5321db3618.jpg','高清图片','高清图片','鲁豫微笑站立高清图片素材，图片尺寸：3944 * 4894像素！',0,'/index.php?a=shows&catid=18&id=3',0,99,1,0,'admin',1403154895,1403154895,2,0,2,2,2,1403156322,''),(4,19,'彩色价格吊牌psd素材','','http://www.shuipfcms.com/demo/file/2013/06/51c5339f83c27.jpg','psd素材','psd素材','彩色价格吊牌psd素材，红蓝黄绿紫，五种颜色，PSD素材请用photoshop打开使用！',0,'/index.php?a=shows&catid=19&id=4',0,99,1,0,'admin',1403154925,1403154925,6,0,6,6,6,1403155538,'');
/*!40000 ALTER TABLE `shuipf_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_photo_data`
--

DROP TABLE IF EXISTS `shuipf_photo_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_photo_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `template` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imgs` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_photo_data`
--

LOCK TABLES `shuipf_photo_data` WRITE;
/*!40000 ALTER TABLE `shuipf_photo_data` DISABLE KEYS */;
INSERT INTO `shuipf_photo_data` VALUES (1,'',0,1,'','a:1:{i:0;a:2:{s:3:\"url\";s:60:\"http://www.shuipfcms.com/demo/file/2013/06/51c5336cb9587.jpg\";s:3:\"alt\";s:0:\"\";}}'),(2,'',0,1,'','a:1:{i:0;a:2:{s:3:\"url\";s:60:\"http://www.shuipfcms.com/demo/file/2013/06/51c5333bbe0f9.jpg\";s:3:\"alt\";s:0:\"\";}}'),(3,'',0,1,'','a:2:{i:0;a:2:{s:3:\"url\";s:60:\"http://www.shuipfcms.com/demo/file/2013/06/51c5321db3618.jpg\";s:3:\"alt\";s:0:\"\";}i:1;a:2:{s:3:\"url\";s:60:\"http://www.shuipfcms.com/demo/file/2013/06/51c5333bbe0f9.jpg\";s:3:\"alt\";s:0:\"\";}}'),(4,'',0,1,'','a:1:{i:0;a:2:{s:3:\"url\";s:60:\"http://www.shuipfcms.com/demo/file/2013/06/51c5339f83c27.jpg\";s:3:\"alt\";s:0:\"\";}}');
/*!40000 ALTER TABLE `shuipf_photo_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_position`
--

DROP TABLE IF EXISTS `shuipf_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_position` (
  `posid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '推荐位id',
  `modelid` char(30) NOT NULL DEFAULT '' COMMENT '模型id',
  `catid` varchar(255) NOT NULL DEFAULT '' COMMENT '栏目id',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '推荐位名称',
  `maxnum` smallint(5) NOT NULL DEFAULT '20' COMMENT '最大存储数据量',
  `extention` char(100) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`posid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='推荐位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_position`
--

LOCK TABLES `shuipf_position` WRITE;
/*!40000 ALTER TABLE `shuipf_position` DISABLE KEYS */;
INSERT INTO `shuipf_position` VALUES (1,'0','0','首页幻灯片',10,'',0),(2,'0','0','首页文字头条',10,'',0),(3,'0','0','首页站长推荐',10,'',0);
/*!40000 ALTER TABLE `shuipf_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_position_data`
--

DROP TABLE IF EXISTS `shuipf_position_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_position_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `posid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '推荐位ID',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '模型',
  `modelid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `thumb` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有缩略图',
  `data` mediumtext COMMENT '数据信息',
  `listorder` mediumint(8) NOT NULL DEFAULT '0' COMMENT '排序',
  `expiration` int(10) NOT NULL,
  `extention` char(30) NOT NULL DEFAULT '',
  `synedit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否同步编辑',
  KEY `posid` (`posid`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='推荐位数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_position_data`
--

LOCK TABLES `shuipf_position_data` WRITE;
/*!40000 ALTER TABLE `shuipf_position_data` DISABLE KEYS */;
INSERT INTO `shuipf_position_data` VALUES (1,21,1,'content',1,1,'a:7:{s:5:\"title\";s:64:\"阿里封杀电商导购原因：分流淘宝 易被对手拉拢\";s:11:\"description\";s:198:\"写在前面的话：当阿里巴巴买百度关键字，封杀美丽说、蘑菇街之时，谁还曾记得，彼时，阿里还曾将美丽说、蘑菇街当作心头好。是什么原因使阿...\";s:5:\"thumb\";s:60:\"http://www.shuipfcms.com/demo/file/2013/06/51c51df81df14.jpg\";s:9:\"inputtime\";s:10:\"1371872761\";s:5:\"posid\";s:1:\"1\";s:3:\"url\";s:25:\"/2013/yingxiao_06/1.shtml\";s:5:\"style\";s:0:\"\";}',1,0,'',0),(2,21,1,'content',1,1,'a:7:{s:5:\"title\";s:60:\"传网店将收5%营业税 淘宝卖家一年或缴税400亿\";s:11:\"description\";s:370:\"山雨欲来风满楼。 5月30日，业界传出电商网店将被征收5%营业税的消息，在电商界犹如扔下了一颗原子弹。 日前，《每日经济新闻》记者就此事先后向国家工商总局市场司司长刘红亮、财政部财政科学研究所所长贾康、财政部财政科学研究所副所长刘尚希等求证，但或许基于话题\";s:5:\"thumb\";s:60:\"http://www.shuipfcms.com/demo/file/2013/06/51c51ef3aaeca.jpg\";s:9:\"inputtime\";s:10:\"1371873012\";s:5:\"posid\";s:1:\"1\";s:3:\"url\";s:25:\"/2013/yingxiao_06/2.shtml\";s:5:\"style\";s:0:\"\";}',2,0,'',0),(3,21,1,'content',1,1,'a:7:{s:5:\"title\";s:57:\"马云：菜鸟让我们对社会、未来有敬畏之心\";s:11:\"description\";s:368:\"新浪科技讯 5月28日上午消息，由阿里巴巴集团牵头的物流项目中国智能骨干网（简称CSN）今日在深圳正式启动。马云在会上表示，这次出来并不是所谓的复出，而是为了实现四五年前的想法，只是今天选择了这个秀，今天的出台，是我们一代人的理想、梦想。 马云同时解释了为\";s:5:\"thumb\";s:60:\"http://www.shuipfcms.com/demo/file/2013/06/51c51f2eefb83.jpg\";s:9:\"inputtime\";s:10:\"1371873071\";s:5:\"posid\";s:1:\"1\";s:3:\"url\";s:25:\"/2013/yingxiao_06/3.shtml\";s:5:\"style\";s:0:\"\";}',3,0,'',0),(4,22,2,'content',1,1,'a:7:{s:5:\"title\";s:69:\"为什么新浪微博广告屡遭骂名而豆瓣广告收获好评？\";s:11:\"description\";s:373:\"橘生淮南则为橘，生于淮北则为枳，这句话在社交网络的广告上同样适用。打开新浪微博和豆瓣，你会看到两种风格完全不同的广告，下面随便拿出一些对比。 前者为新浪微博上的推广广告，后者为豆瓣上的硬广推广。二者的差别？我想不用多做解释了吧。看了二者的广告，你可能\";s:5:\"thumb\";s:60:\"http://www.shuipfcms.com/demo/file/2013/06/51c52009459ad.jpg\";s:9:\"inputtime\";s:10:\"1371873289\";s:5:\"posid\";s:1:\"1\";s:3:\"url\";s:22:\"/2013/zixun_06/4.shtml\";s:5:\"style\";s:0:\"\";}',4,0,'',0),(5,22,3,'content',1,1,'a:7:{s:5:\"title\";s:54:\"大众点评网遭“黑”手：网页跳转至天猫\";s:11:\"description\";s:333:\"昨天凌晨，很多大众点评网的用户登录网站时发现无法打开网页，取而代之的是一个写着QQ号的弹窗，随后跳转至天猫页面，导致一些在点评网团购付款成功的用户订单延误。众多用户纷纷吐槽此次网站被黑事件，而QQ号指向的黑客helen则否认是其所为。\";s:5:\"thumb\";s:60:\"http://www.shuipfcms.com/demo/file/2013/06/51c52313391d9.jpg\";s:9:\"inputtime\";s:10:\"1371874073\";s:5:\"posid\";s:1:\"1\";s:3:\"url\";s:22:\"/2013/zixun_06/5.shtml\";s:5:\"style\";s:0:\"\";}',5,0,'',0),(6,22,3,'content',1,1,'a:7:{s:5:\"title\";s:43:\"狗狗搜索宣布关站 版权问题难解\";s:11:\"description\";s:344:\"【搜狐IT消息】（小蕊）5月2日消息，狗狗搜索今日宣布暂停gougou.com网站服务，具体原因未知，版权问题恐怕依旧是难解之痛。 狗狗搜索是提供影视剧、电子书、软件、音乐下载的搜索引擎，2004年由李学凌创办，曾获得雷军100万人民币投资，2007年被卖给迅雷。\";s:5:\"thumb\";s:60:\"http://www.shuipfcms.com/demo/file/2013/06/51c5236ccba0e.jpg\";s:9:\"inputtime\";s:10:\"1371874160\";s:5:\"posid\";s:1:\"1\";s:3:\"url\";s:22:\"/2013/zixun_06/6.shtml\";s:5:\"style\";s:0:\"\";}',6,0,'',0),(7,22,3,'content',1,1,'a:7:{s:5:\"title\";s:37:\"反击易迅 京东欲推一日四送\";s:11:\"description\";s:357:\"一日四送 极速达一日四送服务，将实现三个小时商品送达，比之前的211限时达快出两倍 一日三送 早上订单在下午2时之前送达，中午订单在晚上6时之前送达，晚间订单在晚上10时之前送达 继价格战后，一对电商 冤家对头京东和易迅又将竞争的焦点对准到了物流速度上。\";s:5:\"thumb\";s:60:\"http://www.shuipfcms.com/demo/file/2013/06/51c523a819ded.jpg\";s:9:\"inputtime\";s:10:\"1371874216\";s:5:\"posid\";s:1:\"1\";s:3:\"url\";s:22:\"/2013/zixun_06/7.shtml\";s:5:\"style\";s:0:\"\";}',7,0,'',0);
/*!40000 ALTER TABLE `shuipf_position_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_role`
--

DROP TABLE IF EXISTS `shuipf_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '角色名称',
  `parentid` smallint(6) NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`id`),
  KEY `parentId` (`parentid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色信息列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_role`
--

LOCK TABLES `shuipf_role` WRITE;
/*!40000 ALTER TABLE `shuipf_role` DISABLE KEYS */;
INSERT INTO `shuipf_role` VALUES (1,'超级管理员',0,1,'拥有网站最高管理员权限！',1329633709,1329633709,0),(2,'站点管理员',1,1,'站点管理员',1329633722,1399780945,0),(3,'发布人员',2,1,'发布人员',1329633733,1399798954,0);
/*!40000 ALTER TABLE `shuipf_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_search`
--

DROP TABLE IF EXISTS `shuipf_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_search` (
  `searchid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '信息id',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目id',
  `modelid` smallint(5) NOT NULL COMMENT '模型id',
  `adddate` int(10) unsigned NOT NULL COMMENT '添加时间',
  `data` text NOT NULL COMMENT '数据',
  PRIMARY KEY (`searchid`),
  KEY `id` (`id`,`catid`,`adddate`) USING BTREE,
  KEY `modelid` (`modelid`,`catid`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='全站搜索数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_search`
--

LOCK TABLES `shuipf_search` WRITE;
/*!40000 ALTER TABLE `shuipf_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `shuipf_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_search_keyword`
--

DROP TABLE IF EXISTS `shuipf_search_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_search_keyword` (
  `keyword` char(20) NOT NULL COMMENT '关键字',
  `pinyin` char(20) NOT NULL COMMENT '关键字拼音',
  `searchnums` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '搜索次数',
  `data` char(20) NOT NULL,
  UNIQUE KEY `keyword` (`keyword`),
  UNIQUE KEY `pinyin` (`pinyin`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='搜索关键字表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_search_keyword`
--

LOCK TABLES `shuipf_search_keyword` WRITE;
/*!40000 ALTER TABLE `shuipf_search_keyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `shuipf_search_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_tags`
--

DROP TABLE IF EXISTS `shuipf_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_tags` (
  `tagid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'tagID',
  `tag` char(20) NOT NULL DEFAULT '' COMMENT 'tag名称',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo标题',
  `seo_keyword` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo关键字',
  `seo_description` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo简介',
  `style` char(5) NOT NULL DEFAULT '' COMMENT '附加状态码',
  `usetimes` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '信息总数',
  `lastusetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后使用时间',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `lasthittime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最近访问时间',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`tagid`),
  UNIQUE KEY `tag` (`tag`),
  KEY `usetimes` (`usetimes`,`listorder`),
  KEY `hits` (`hits`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='tags主表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_tags`
--

LOCK TABLES `shuipf_tags` WRITE;
/*!40000 ALTER TABLE `shuipf_tags` DISABLE KEYS */;
INSERT INTO `shuipf_tags` VALUES (1,'tag','','','','',1,1457070807,0,1457070807,0);
/*!40000 ALTER TABLE `shuipf_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_tags_content`
--

DROP TABLE IF EXISTS `shuipf_tags_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_tags_content` (
  `tag` char(20) NOT NULL COMMENT 'tag名称',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '信息地址',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '标题',
  `modelid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `contentid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '信息ID',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  KEY `modelid` (`modelid`,`contentid`),
  KEY `tag` (`tag`(10))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='tags数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_tags_content`
--

LOCK TABLES `shuipf_tags_content` WRITE;
/*!40000 ALTER TABLE `shuipf_tags_content` DISABLE KEYS */;
INSERT INTO `shuipf_tags_content` VALUES ('tag','http://172.16.7.100/shuipfcms/index.php?a=shows&catid=10&id=36','测试文章',1,36,10,1457070807);
/*!40000 ALTER TABLE `shuipf_tags_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_terms`
--

DROP TABLE IF EXISTS `shuipf_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_terms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `parentid` smallint(5) NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '分类名称',
  `module` varchar(200) NOT NULL DEFAULT '' COMMENT '所属模块',
  `setting` mediumtext COMMENT '相关配置信息',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_terms`
--

LOCK TABLES `shuipf_terms` WRITE;
/*!40000 ALTER TABLE `shuipf_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `shuipf_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_topic`
--

DROP TABLE IF EXISTS `shuipf_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_topic` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '链接id',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '链接名称',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '链接图片',
  `target` varchar(25) NOT NULL DEFAULT '' COMMENT '链接打开方式',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '链接描述',
  `visible` tinyint(1) NOT NULL COMMENT '链接是否可见',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '链接等级',
  `updated` int(11) NOT NULL COMMENT '链接最后更新时间',
  `notes` mediumtext NOT NULL COMMENT '链接详细介绍',
  `rss` varchar(255) NOT NULL DEFAULT '' COMMENT '链接RSS地址',
  `termsid` int(4) NOT NULL COMMENT '分类id',
  PRIMARY KEY (`id`),
  KEY `visible` (`visible`),
  KEY `termsid` (`termsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='专题专栏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_topic`
--

LOCK TABLES `shuipf_topic` WRITE;
/*!40000 ALTER TABLE `shuipf_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `shuipf_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_urlrule`
--

DROP TABLE IF EXISTS `shuipf_urlrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_urlrule` (
  `urlruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id',
  `module` varchar(15) NOT NULL DEFAULT '' COMMENT '所属模块',
  `file` varchar(20) NOT NULL DEFAULT '' COMMENT '所属文件',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '生成静态规则 1 静态',
  `urlrule` varchar(255) NOT NULL DEFAULT '' COMMENT 'url规则',
  `example` varchar(255) NOT NULL DEFAULT '' COMMENT '示例',
  PRIMARY KEY (`urlruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='内容模型URL规则';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_urlrule`
--

LOCK TABLES `shuipf_urlrule` WRITE;
/*!40000 ALTER TABLE `shuipf_urlrule` DISABLE KEYS */;
INSERT INTO `shuipf_urlrule` VALUES (1,'content','category',0,'index.php?a=lists&catid={$catid}|index.php?a=lists&catid={$catid}&page={$page}','动态：index.php?a=lists&catid=1&page=1'),(2,'content','category',1,'{$categorydir}{$catdir}/index.shtml|{$categorydir}{$catdir}/index_{$page}.shtml','静态：news/china/1000.shtml'),(3,'content','show',1,'{$year}/{$catdir}_{$month}/{$id}.shtml|{$year}/{$catdir}_{$month}/{$id}_{$page}.shtml','静态：2010/catdir_07/1_2.shtml'),(4,'content','show',0,'index.php?a=shows&catid={$catid}&id={$id}|index.php?a=shows&catid={$catid}&id={$id}&page={$page}','动态：index.php?m=Index&a=shows&catid=1&id=1'),(5,'content','category',1,'news/{$catid}.shtml|news/{$catid}-{$page}.shtml','静态：news/1.shtml'),(6,'content','category',0,'list-{$catid}.html|list-{$catid}-{$page}.html','伪静态：list-1-1.html'),(7,'content','tags',0,'index.php?a=tags&amp;tagid={$tagid}|index.php?a=tags&amp;tagid={$tagid}&amp;page={$page}','动态：index.php?a=tags&amp;tagid=1'),(8,'content','tags',0,'index.php?a=tags&amp;tag={$tag}|/index.php?a=tags&amp;tag={$tag}&amp;page={$page}','动态：index.php?a=tags&amp;tag=标签'),(9,'content','tags',0,'tag-{$tag}.html|tag-{$tag}-{$page}.html','伪静态：tag-标签.html'),(10,'content','tags',0,'tag-{$tagid}.html|tag-{$tagid}-{$page}.html','伪静态：tag-1.html'),(11,'content','index',1,'index.html|index_{$page}.html','静态：index_2.html'),(12,'content','index',0,'index.html|index_{$page}.html','伪静态：index_2.html'),(13,'content','index',0,'index.php|index.php?page={$page}','动态：index.php?page=2'),(14,'content','category',1,'download.shtml|download_{$page}.shtml','静态：download.shtml'),(15,'content','show',1,'{$categorydir}{$id}.shtml|{$categorydir}{$id}_{$page}.shtml','静态：/父栏目/1.shtml'),(16,'content','show',1,'{$catdir}/{$id}.shtml|{$catdir}/{$id}_{$page}.shtml','示例：/栏目/1.html');
/*!40000 ALTER TABLE `shuipf_urlrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuipf_user`
--

DROP TABLE IF EXISTS `shuipf_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuipf_user` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称/姓名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `bind_account` varchar(50) NOT NULL DEFAULT '' COMMENT '绑定帐户',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `last_login_ip` varchar(40) NOT NULL DEFAULT '' COMMENT '上次登录IP',
  `verify` varchar(32) NOT NULL DEFAULT '' COMMENT '证验码',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `role_id` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '对应角色ID',
  `info` text COMMENT '信息',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='后台用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuipf_user`
--

LOCK TABLES `shuipf_user` WRITE;
/*!40000 ALTER TABLE `shuipf_user` DISABLE KEYS */;
INSERT INTO `shuipf_user` VALUES (1,'admin','未知','4e28c69136c6e843878978c8bfd35d29','',1457080027,'172.16.7.100','GvtT74','admin@abc3210.com','备注信息',1457055893,1457055893,1,1,'');
/*!40000 ALTER TABLE `shuipf_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-04 17:23:53
