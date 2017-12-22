-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-12-06 04:19:56
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zaozuo`
--

-- --------------------------------------------------------

--
-- 表的结构 `show`
--
Drop Database zaozuo if exists;
CREATE Database zaozuo set utf8;
CREATE TABLE `show` (
  `fid` int(11) NOT NULL,
  `show_uname` varchar(64) DEFAULT NULL,
  `show_local` varchar(128) DEFAULT NULL,
  `show_content` varchar(128) DEFAULT NULL,
  `user_avatar` varchar(128) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `show`
--

INSERT INTO `show` (`fid`, `show_uname`, `show_local`, `show_content`, `user_avatar`, `pic`) VALUES
(1, 'Sunshine', '北京', '很喜欢这款粉色柜子，颜色很柔和，配白色的墙壁，有种视觉错觉的效果。桌面的设计，很...', 'img/show/6e8139724f694b96952d4e28df6a3b45.gif', 'img/show/00edeb8273fb4b7f96e49d3d3e7a2749.gif'),
(2, 'cynthia xie', '广东 深圳', '有型有款，颜色搭配也能找到默契的点缀，比如八点椅、西竹，关键是镂空设计，不用担心...', 'img/show/5a48ef3d4cc442369d19a61fb1c933b9.gif', 'img/show/0ece38b688314c268cd08f93d4d352d3.gif'),
(3, 'Sunshine', '北京', '很实用的一款柜子。家具没什么味道，打开抽屉放三天，基本就可以了。打理起来很方便。...', 'img/show/6e8139724f694b96952d4e28df6a3b45.gif', 'img/show/3a0a12b085064bd7a0a45b1bcba1b416.gif'),
(4, 'cynthia xie', '广东 深圳', '在颐堤港店里看到，发现是实木的，跟家属果断下单，希望造作多出实木家具阿！好看的实......', 'img/show/01866bb0c4cf4bca95fe03a37cadb190.gif', 'img/show/4f94b3bddded450e84721d4c02f16437.gif'),
(5, 'cynthia xie', '北京', '随行桌果然是非常随性的线条哈哈！从楼上看还蛮有意思的，边缘滑润不会磕人，纠结白色......', 'img/show/6e8139724f694b96952d4e28df6a3b45.gif', 'img/show/33bdc518e8284bc68cfc1515ac8e59ac.gif'),
(6, 'Sunshine', '广东 深圳', '这款桌子非常可爱，桌腿和桌面都是圆圆的，很适合我们家厨房的布局，完全不怕磕到。白......', 'img/show/5a48ef3d4cc442369d19a61fb1c933b9.gif', 'img/show/06cd2b5acd944101928072f0e1b14ded.gif'),
(7, 'cynthia xie', '北京', '马卡龙色萌萌哒，几何形状的组合简洁却不会单调。这是其中一种呈现方式，准备过段时间......', 'img/show/6e8139724f694b96952d4e28df6a3b45.gif', 'img/show/57cb322966ce4617871ee782c3f23d44.gif'),
(8, 'Sunshine', '北京', '造作的东西对我似乎具有一种魔力，刚出的时候我就想下手，国庆中秋双节还是经不住诱惑......', 'img/show/01866bb0c4cf4bca95fe03a37cadb190.gif', 'img/show/62b33081da4342dab1ee04d31d7a31a6.gif'),
(9, 'cynthia xie', '广东 深圳', '一直喜欢这把椅子，但没有合适的位置，买了梳妆台，本来配粉色百合椅，对比下还是更喜......', 'img/show/6e8139724f694b96952d4e28df6a3b45.gif', 'img/show/64b5c80bcef944f682e7fc26b2004d14.gif'),
(10, 'Sunshine', '北京', '先买了三人坐的沙发，感觉相当不错，于是老公说再买单人和脚墩配上，现在整个沙发完美......', 'img/show/01866bb0c4cf4bca95fe03a37cadb190.gif', 'img/show/68d19f85ba5f454399eb932e79e6ac73.gif'),
(11, 'cynthia xie', '广东 深圳', '造作客厅完成✅！大先生沙发，花间实木小桌嫩黄加墨绿好完美，雅致小花瓶，现在客厅充......', 'img/show/01866bb0c4cf4bca95fe03a37cadb190.gif', 'img/show/81e430d92eff405496b7ffd5f750058a.gif'),
(12, 'Sunshine', '北京', '很实用的一款柜子。家具没什么味道，打开抽屉放三天，基本就可以了。打理起来很方便。...', 'img/show/5a48ef3d4cc442369d19a61fb1c933b9.gif', 'img/show/83ceacbd1d9f45baaf3266ca0ac27a4a.gif'),
(13, 'cynthia xie', '广东 深圳', '在颐堤港店里看到，发现是实木的，跟家属果断下单，希望造作多出实木家具阿！好看的实...', 'img/show/6e8139724f694b96952d4e28df6a3b45.gif', 'img/show/86d22b79afea4a99994154abf606e0c9.gif'),
(14, 'cynthia xie', '广东 深圳', '有型有款，颜色搭配也能找到默契的点缀，比如八点椅、西竹，关键是镂空设计，不用担心...', 'img/show/67b74382c03d420d92bb17d2e7714b3b.gif', 'img/show/400c53d9ffea4d66ac3d2e9939bf75a2.gif'),
(15, 'Sunshine', '北京', '随行桌果然是非常随性的线条哈哈！从楼上看还蛮有意思的，边缘滑润不会磕人，纠结白色...', 'img/show/01866bb0c4cf4bca95fe03a37cadb190.gif', 'img/show/9281318f56fe41fdb3bc0c2fb86bd519.gif'),
(16, 'cynthia xie', '广东 深圳', '这款桌子非常可爱，桌腿和桌面都是圆圆的，很适合我们家厨房的布局，完全不怕磕到。白...', 'img/show/9687c03d785b4fd19921f3507169fae4.gif', 'img/show/467371fe233b47be96afbd3d544ad11d.gif'),
(17, 'cynthia xie', '广东 深圳', '造作的东西对我似乎具有一种魔力，刚出的时候我就想下手，国庆中秋双节还是经不住诱惑...', 'img/show/7658c2f905e54d78a28d51d103218e19.gif', 'img/show/b6c10ff630d44e288c14117e1c577c75.gif'),
(18, 'Sunshine', '北京', '有型有款，颜色搭配也能找到默契的点缀，比如八点椅、西竹，关键是镂空设计，不用担心...', 'img/show/9984de58cddd4cf5bb3a3081bce09662.gif', 'img/show/c32b138a742846629498b466eab5bb94.gif'),
(19, 'Sunshine', '北京', '一直喜欢这把椅子，但没有合适的位置，买了梳妆台，本来配粉色百合椅，对比下还是更喜...', 'img/show/152476ce8f824f0a85e12e706533c018.gif', 'img/show/c66c74c32dde47bba6ca46f9fe08e74b.gif'),
(20, 'cynthia xie', '广东 深圳', '在颐堤港店里看到，发现是实木的，跟家属果断下单，希望造作多出实木家具阿！好看的实...', 'img/show/aafdfb8ab168425b9922442a8598c3f7.gif', 'img/show/c438b480e87d4532b444c03f1caa3964.gif'),
(21, 'Sunshine', '北京', '很喜欢这款粉色柜子，颜色很柔和，配白色的墙壁，有种视觉错觉的效果。桌面的设计，很...', 'img/show/b932cf3d5bd24e6e85c06eb74e654def.gif', 'img/show/c8508f58b5e14cd5ae9b61c2238b0052.gif'),
(22, 'cynthia xie', '广东 深圳', '造作客厅完成✅！大先生沙发，花间实木小桌嫩黄加墨绿好完美，雅致小花瓶，现在客厅充...', 'img/show/c42f7b17b9c9458882c0c1f34a06fe59.gif', 'img/show/cf3a903767804340a10934ac1da7edd7.gif'),
(23, 'Sunshine', '北京', '马卡龙色萌萌哒，几何形状的组合简洁却不会单调。这是其中一种呈现方式，准备过段时间...', 'img/show/c569a53d3219450093f8a13d3cd8e094.gif', 'img/show/e6d18eececc9421a925c2fb23d8cf18b.gif'),
(24, 'cynthia xie', '广东 深圳', '造作的东西对我似乎具有一种魔力，刚出的时候我就想下手，国庆中秋双节还是经不住诱惑...', 'img/show/cd99bba8d3554e31afad79fab8da1d8b.gif', 'img/show/fd2ff26c43d440d9853156cf3faa3b4e.gif'),
(25, 'Sunshine', '北京', '很喜欢这款粉色柜子，颜色很柔和，配白色的墙壁，有种视觉错觉的效果。桌面的设计，很...', 'img/show/5a48ef3d4cc442369d19a61fb1c933b9.gif', 'img/show/00edeb8273fb4b7f96e49d3d3e7a2749.gif');

-- --------------------------------------------------------

--
-- 表的结构 `zaozuo_carousel`
--

CREATE TABLE `zaozuo_carousel` (
  `pid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zaozuo_carousel`
--

INSERT INTO `zaozuo_carousel` (`pid`, `img`, `title`, `href`) VALUES
(1, 'img/carousel/1.gif', '轮播图1', ''),
(2, 'img/carousel/2.gif', '轮播图2', ''),
(3, 'img/carousel/3.gif', '轮播图3', ''),
(4, 'img/carousel/4.gif', '轮播图4', ''),
(5, 'img/carousel/5.gif', '轮播图5', ''),
(6, 'img/carousel/6.gif', '轮播图6', '');

-- --------------------------------------------------------

--
-- 表的结构 `zaozuo_designers`
--

CREATE TABLE `zaozuo_designers` (
  `did` int(11) NOT NULL,
  `pic` varchar(512) DEFAULT NULL,
  `designer` varchar(64) DEFAULT NULL,
  `design_from` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zaozuo_designers`
--

INSERT INTO `zaozuo_designers` (`did`, `pic`, `designer`, `design_from`) VALUES
(1, 'img/designer/a913c79d9cd1d2f806bfeeb22161af57.jpg', 'Luca Nichetto', 'Italy | Sweden'),
(2, 'img/designer/1fa99eb99f4fddea94d499d17b7ff2c6.jpg', 'Claesson Koivisto Rune', 'Sweden | Stockholm'),
(3, 'img/designer/4a6d03dbbe138db23cce5aa2f1389e4a.jpg', 'Noé Duchaufour Lawrance', 'France｜Paris'),
(4, 'img/designer/226ddd6f2138686493b17f65a4a11c0b.jpg', 'Palomba Serafini Associati', 'Italy｜Milan'),
(5, 'img/designer/130be14905caa4b60e3f6c133be5a25c.jpg', 'Richard Hutten', 'Netherlands | Rotterdam'),
(6, 'img/designer/f427d45002a6370fd44529b34572e6af.jpg', '青山周平', '北京丨广岛'),
(7, 'img/designer/1b06e93976d0567ae99ff3fb69392b0d.jpg', 'Constance Guisset', 'France | Paris'),
(8, 'img/designer/03f5ac9af2decbfc5042e56536c6dd8a.jpg', 'Studio Inma Bermúdez', 'Spain | Valencia');

-- --------------------------------------------------------

--
-- 表的结构 `zaozuo_recommdation`
--

CREATE TABLE `zaozuo_recommdation` (
  `rid` int(11) NOT NULL,
  `title` varchar(32) DEFAULT NULL,
  `style` varchar(8) DEFAULT NULL,
  `pic` varchar(512) DEFAULT NULL,
  `price` varchar(16) DEFAULT NULL,
  `color_select` varchar(32) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `designer` varchar(64) DEFAULT NULL,
  `design_from` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zaozuo_recommdation`
--

INSERT INTO `zaozuo_recommdation` (`rid`, `title`, `style`, `pic`, `price`, `color_select`, `description`, `designer`, `design_from`) VALUES
(1, '云团沙发升级版', 'all', 'img/recommdation/c3893660cac18894f6fd94fce90bd8d4@!small.jpg', '￥1699起', '3色可选', '如云柔软，给你不愿起身的柔软依靠', 'Janas Wagell', 'Sweden | Stockholm'),
(2, '甜点边桌', 'all', 'img/recommdation/4dc0445f90b6d84b573e844b54d3b814@!small.jpg', '￥799', '3色可选', '一物三用，多变甜心', 'Studio Inma Bermúdez', 'Spain | Valencia'),
(3, '造型水母台灯', 'all', 'img/recommdation/765c3691a92b64754530d69c843a14ab@!small.jpg', '￥365', '2色可选', '暖化时光的桌面少女心', 'Note Design Studio', 'Sweden | Stockholm'),
(4, '闺阁 置物架', 'all', 'img/recommdation/5e2eaebd2d45d83a624dfff6fceb2e37@!small.jpg', '￥599', '4色可选', '每日造型风格，闺阁知道', 'Sarah Böttger', 'Germany | Wiesbaden'),
(5, '瓦檐餐桌', 'all', 'img/recommdation/16fc90e4f055e5d975d2dc77e7cba68f@!small.jpg', '￥1599起', '5色可选', '东方飞檐的现代日常，精致空间的优雅餐桌', 'Jonas Wagell', 'Sweden | Stockholm'),
(6, '丝绸椅', 'all', 'img/recommdation/fa14554a61ca907ee79fd2b535a14a1f@!small.jpg', '￥665起', '4色可选', '不超过1mm的组件间隙，定义精密的舒适与优美曲度', 'Luca Nichetto', 'Italy | Sweden'),
(7, '造作朱雀床', 'all', 'img/recommdation/20d67a0d75859868010d1acbcfb13cbe@!small.jpg', '￥9999', '', '奏鸣天空之境，先于时代的朱雀奇想', 'Richard Hutten', 'Netherlands | Rotterdam'),
(8, '深海沉睡床垫', 'all', 'img/recommdation/367207bb084381037a3f1669d83b963a@!small.jpg', '￥3399起', '', '16层优质沉棉材质，推开零压深度睡眠', 'Z-Inhouse', '中国 | 北京'),
(9, '竖琴沙发™', 'sofa', 'img/sofa/c0a83f6ed9d0ca6158dfbfca4f249ec6@!small.jpg', '￥19999', '2色可选', '琴形木作雕塑，大宅演奏的永恒乐章', 'Noé Duchaufour Lawrance', 'France｜Paris'),
(10, 'COFA L', 'sofa', 'img/sofa/b871d2bfa4dfb8bdeeecf301122ed82d@!small.jpg', '￥8988', '2色可选', '意大利顶级全青牛皮制作，大客厅的落座首选', 'Luca Nichetto', 'Italy | Sweden'),
(11, 'SoFa T', 'sofa', 'img/sofa/f0785dd95b399f6bd61161948a2f658d@!small.jpg', '￥6999', '2色可选', 'T形雕塑，无限延伸模块，闪耀空间锋芒', 'Palomba Serafini Associati', 'Italy｜Milan'),
(12, '造作贝岛沙发™', 'sofa', 'img/sofa/e2a0aab0897e790a2da59190cceed9b4@!small.jpg', '￥4999', '2色可选', '纯血法国曲线，勾勒当代极致摩登', 'Noé Duchaufour Lawrance', 'France｜Paris'),
(13, 'COFA', 'sofa', 'img/sofa/2f46ec6b2320400eb11dbadeb8961bce@!small.jpg', '￥4556', '3色可选', 'C形曲线大师之作，城市客厅的优质品味', 'Luca Nichetto', 'Italy | Sweden'),
(14, '造作远山沙发™', 'sofa', 'img/sofa/a1fffa48003ff55eb4ad85a2b364303a@!small.jpg', '￥3999', '3色可选', '纯进口实木宽稳落座，瑞典山居入厅堂', 'Claesson Koivisto Rune', 'Sweden | Stockholm'),
(15, '云团沙发升级版', 'sofa', 'img/sofa/c3893660cac18894f6fd94fce90bd8d4@!small.jpg', '￥1699', '3色可选', '如云柔软，给你不愿起身的温柔依靠', 'Jonas Wagell', 'Sweden | Stockholm'),
(16, '造作大先生沙发™', 'sofa', 'img/sofa/b97807ce2b319cc704d6de53b3278983@!small.jpg', '￥1399', '5色可选', '超宽大极舒适的模块化沙发，大有其道', 'Z-Inhouse', '中国 | 北京'),
(17, '造作星期天沙发™', 'sofa', 'img/sofa/869b77b84c76cdf9a77ea11473944ae6@!small.jpg', '￥1299', '2色可选', '1.5倍超宽坐落面积，全家宽享星期天', 'Zelect', '中国 | 北京'),
(18, '造作软糖双人沙发™', 'sofa', 'img/sofa/0bea06252b039306181d2f7cb724e239@!small.jpg', '￥1299', '2色可选', '抢眼形态与糖果色，空间的颜值担当', 'Yonoh Creative Studio', 'Spain | Valencia'),
(19, '造作软糖单人沙发™', 'sofa', 'img/sofa/f91c1a22aaf8717eb3ceb595ed6a0bf1@!small.jpg', '￥1299', '4色可选', '抢眼形态与糖果色，明媚休闲时光', 'Yonoh Creative Studio', 'Spain | Valencia'),
(20, '鹅卵石沙发', 'sofa', 'img/sofa/f4e8ee8dcf6e01c59b881acd637e831d@!small.jpg', '￥999', '4色可选', '从斯德哥尔摩到北京的打拥抱', 'Form Us With Love', 'Sweden | Stockholm'),
(21, '画板四门衣柜', 'chest', 'img/chest/d545a9e3109c131f26a0d617b6d87cd5@!small.jpg', '￥6999', '2色可选', '实木手感,高强度不变形', 'Z-Inhouse', '中国 | 北京'),
(22, '画板三门衣柜', 'chest', 'img/chest/9feb50e1353facb7fa9208dc0b3020f9@!small.jpg', '￥5999', '', '实木手感,高强度不变形', 'Z-Inhouse', '中国 | 北京'),
(23, '1959格子摇滚升级版', 'chest', 'img/chest/4c5ade197b7b5a3e0ea2bf8af8328f5f@!small.jpg', '￥89', '2色可选', '经典并排收纳格,撼动世界的简练', 'Zelect', '中国 | 北京'),
(24, '画板书架', 'chest', 'img/chest/92736893ef1ac7776534c34716550d05@!small.jpg', '￥2885', '3色可选', '全实木手感,坚固耐用超越实木', 'Form Us With Love', 'Sweden | Stockholm'),
(25, '新画板餐边柜', 'chest', 'img/chest/0eb4cb6885c3afdb8951d488635044fb@!small.jpg', '￥3685', '2色可选', '全实木手感,坚固耐用超越实木', 'Z-Inhouse', '中国 | 北京'),
(26, '造作YES衣帽架', 'chest', 'img/chest/530a0fe0ecb901631d35568eaa029d7a@!small.jpg', '￥3785', '3色可选', '1平米玄关衣帽间,5分钟完美出门', 'Z-Inhouse', '中国 | 北京'),
(27, '闺格 置物架', 'chest', 'img/chest/5e2eaebd2d45d83a624dfff6fceb2e37@!small.jpg', '￥599', '4色可选', '每日造型风格,闺格知道', 'Sarah Bottger', 'Germany | Wiesbaden'),
(28, '画板鞋柜', 'chest', 'img/chest/329de28519dceea623418fa89f8d8fda@!small.jpg', '￥1385', '', '全实木手感,坚固耐用超越实木', 'Z-Inhouse', '中国 | 北京'),
(29, '画板床头柜', 'chest', 'img/chest/916b5b96277ddfce6897b5fffe9fb7ef@!small.jpg', '￥885', '2色可选', '全实木手感,坚固耐用超越实木', 'Z-Inhouse', '中国 | 北京'),
(30, '流芳柜升级版', 'chest', 'img/chest/9a5ee262a7253ca3c1a19ac28f64c38b@!small.jpg', '￥3999', '3色可选', '全实木手感,坚固耐用超越实木', 'Z-Inhouse', '中国 | 北京'),
(31, '瓦格-中高柜', 'chest', 'img/chest/a985808de311cb87f57e3aa5c7135b88@!small.jpg', '￥3999', '3色可选', '只须一件点睛,住入斯德哥尔摩', 'Jonas Wagell', 'Sweden | Stockholm'),
(32, '瓦格-两门矮柜', 'chest', 'img/chest/2592fcd2bf459726a3afa11e343cddb6@!small.jpg', '￥2999', '2色可选', '只须一件点睛,住入斯德哥尔摩', 'Jonas Wagell', 'weden | Stockholm'),
(33, '瓦雀伸缩桌', 'table', 'img/table/9a286b524c3a75ce36580d365f85a54c@!small.jpg', '￥2999', '3色可选', '如雀灵动,兼具颜值与功能的漂亮伸缩桌', 'Jonas Wagell', 'Sweden | Stockholm'),
(34, '随型桌', 'table', 'img/table/83b2f7f2f3b2b7dbc759c4445d8dba5a@!small.jpg', '￥2599', '2色可选', '漂亮有机曲线,一款容积率翻倍的多功能桌', 'Max Gerthel', 'Sweden | China'),
(35, '瓦檐餐桌', 'table', 'img/table/16fc90e4f055e5d975d2dc77e7cba68f@!small.jpg', '￥1599', '3色可选', '东方飞檐的现代日常,精致空间的优雅餐桌', 'Jonas Wagell', 'Sweden | Stockholm'),
(36, '画板餐桌-圆桌', 'table', 'img/table/e7c2e009dd859d99d8c1a80292387cb8@!small.jpg', '￥1999', '3色可选', '一米木质温暖,围拢小家美满心意', 'Z-Inhouse', '中国 | 北京'),
(37, 'X Desk', 'table', 'img/table/b9c1ee3409bdcf34b7dfd3ab227533f8@!small.jpg', '￥3894', '3色可选', '灵感符号"X"的现代表达,盛赞大工业之美', 'Z-Inhouse', '中国 | 北京'),
(38, '甜点边桌', 'table', 'img/table/ff8f84410386676a1e41b0e4c72ea389@!small.jpg', '￥799', '3色可选', '双聚甜味剂,一物多用马卡龙边桌', 'Studio Inma Bermudez', 'Spain | Valencia'),
(39, '造作花间实木小桌™', 'table', 'img/table/35dc161da553a7eb1e1001dc8579872a@!small.jpg', '￥989', '3色可选', '汲取中国古典美学的全实木温暖木作', 'Sebastian Herkner', 'Sweden | Stockholm'),
(40, '画板咖啡几－胶囊形', 'table', 'img/table/fcacfd90d9654e7c9890698381675bac@!small.jpg', '￥1699', '3色可选', '精致木纹咖啡几,朴素与端庄的客厅直选', 'Z-Inhouse', '中国 | 北京'),
(41, '造作蝴蝶边桌™', 'table', 'img/table/a17c1b4cc6775747a8e1de48c07c43a3@!small.jpg', '￥1299', '3色可选', '飞舞金属曲线,蝴蝶扬翅落客厅', 'Constance Guisset', 'France | Paris'),
(42, '谜盒升级版', 'table', 'img/table/4eb519e90e6cf0f7a48f44b34e087a4a@!small.jpg', '￥1299', '3色可选', '突破想象力壁垒,未来概念茶几', 'Luca Nichetto', 'Italy | Sweden'),
(43, '线几升级版', 'table', 'img/table/72aaa213fda0420b03fb4f692d56e0ee@!small.jpg', '￥459', '3色可选', '极简主义构线,三重高度变化', 'Studio Inma Bermúdez', 'Spain | Valencia'),
(44, '造作8点椅™', 'chair', 'img/chair/4b19bb91e40c6a29a999c894ad3b4164@!small.jpg', '￥655', '3色可选', '早8点到晚8点,陪你一整天的超舒适功能椅', 'Max Gerthel', 'Sweden | China'),
(45, '丝绸椅™', 'chair', 'img/chair/fa14554a61ca907ee79fd2b535a14a1f@!small.jpg', '￥699', '3色可选', '为当下而造,一把属于世界的现代主义之椅', 'Luca Nichetto', 'Italy | Sweden'),
(46, '造作8点椅职业版™', 'chair', 'img/chair/a5106a2adb2826037cd6bc2b6d89976d@!small.jpg', '￥999', '3色可选', '专业级家用工作椅,呵护从膝窝到背脊', 'Max Gerthel', 'Sweden | China'),
(47, '造作百合椅™', 'chair', 'img/chair/63bcffe9409e01703aecb7c4ada42158@!small.jpg', '￥789', '2色可选', '来自巴黎造梦大师的放生百合', 'Constance Guisset', 'France | Paris'),
(48, '弓椅', 'chair', 'img/chair/c7791ffc10ab20302693a773cf9066ab@!small.jpg', '￥599', '2色可选', '一条曲线,撑满现代主义天空', 'Luca Nichetto', 'Italy | Sweden'),
(49, '西竹躺椅', 'chair', 'img/chair/e847dc6030abf139b2fba10aea87f51b@!small.jpg', '￥1899', '2色可选', '让西班牙唤起你对旧时竹椅的深情', 'MUT', 'Spain | Valencia'),
(50, '鹭鸶躺椅', 'chair', 'img/chair/98a9afe4498ae35f7581f3396d730550@!small.jpg', '￥1399', '2色可选', '轻扬而至,一只白鹭落闲庭', 'Palomba Serafini Associati', 'Italy｜Milan'),
(51, '布丁坐墩', 'chair', 'img/chair/468315f33da19945e2fd656a2cb156d0@!small.jpg', '￥599', '2色可选', '半米清亮小坐墩,缀上生活的甘甜', 'Z-Inhouse', '中国 | 北京'),
(52, '信封坐墩', 'chair', 'img/chair/39ef52be9e24e07a3c174f2596864334@!small.jpg', '￥699', '2色可选', '担任随身提动沙发墩,拾回百变童趣', 'Yonoh Creative Studio', 'Spain | Valencia'),
(53, '瓦檐小凳', 'chair', 'img/chair/1a62fbf11b15e8f4484664ab26841d60@!small.jpg', '￥899', '2色可选', '温润木质感,跳脱常态的轻灵小物', 'Jonas Wagell', 'Sweden | Stockholm'),
(54, '旋木小凳', 'chair', 'img/chair/3213151cc312880a0f52a3ce800a0dda@!small.jpg', '￥1988', '3色可选', '一物多用三功能,旋转开合为空间优雅减负', 'Luca Nichetto', 'Italy | Sweden'),
(55, '造作软糖双人沙发™', 'chair', 'img/chair/d4fbb252eefc4cdebf1218a95bc79b97@!small.jpg', '￥1988', '3色可选', '抢眼形态与糖果色,空间的颜值担当', 'Yonoh Creative Studio', 'Spain | Valencia'),
(56, '造作朱雀床™', 'bed', 'img/bed/bed_01.jpg', '￥9999', '', '奏鸣天空之境，先于时代得朱雀奇想', 'Richard Hutten', 'Netherlands | Rotterdam'),
(57, '造作豌豆公主真丝床垫™', 'bed', 'img/bed/bed_02.jpg', '￥10999', '', '十层珍贵材料，堆满肌肤骄傲', 'Z-Inhouse', '中国 | 北京'),
(58, '山雪床', 'bed', 'img/bed/bed_03.jpg', '￥2599起', '', '半躺持久不累，周末赖床舒适之选', 'Z-Inhouse', '中国 | 北京'),
(59, '深海沉睡床垫', 'bed', 'img/bed/bed_04.jpg', '￥3999', '', '16层优质睡眠材料，推开零压深度睡眠', 'Z-Inhouse', '中国 | 北京'),
(60, '作业本－双人床', 'bed', 'img/bed/bed_05.jpg', '￥3726', '', '安睡空间功能化简约之床', 'Z-Inhouse', '中国 | 北京'),
(61, '造作独立厂牌软硬两用床垫', 'bed', 'img/bed/bed_06.jpg', '￥999', '', '26cm独立超厚弹簧，软硬两用照顾全家', 'Z-Inhouse', '中国 | 北京'),
(62, '田野棉花被', 'bed', 'img/bed/bed_07.jpg', '￥799', '', '双倍织物密度，畅想舒滑丝绵', 'Z-Inhouse', '中国 | 北京'),
(63, '造作锦瑟™-撞色床品', 'bed', 'img/bed/bed_08.jpg', '￥459', '', '300根高密贡缎，拥眠玉光华一同入眠', 'Zelect', '中国 | 北京'),
(64, '云帛床', 'bed', 'img/bed/80720c1d94a8c86f609c635d6fc93558@!small.jpg', '￥190', '', '轻软不撞腿,优美与舒适的平衡', 'Z-Inhouse', '中国 | 北京'),
(65, '小棕熊儿童折叠床垫', 'bed', 'img/bed/e31729c061ed01076772934ff3d83cfc@!small.jpg', '￥2199', '', '14岁以前,不要让孩子睡在弹簧上', 'Z-Inhouse', '中国 | 北京'),
(66, '造作有眠柔纤床褥™--1.8米', 'bed', 'img/bed/18b5391cc9dcbbe392e194800b4aa7ac@!small.jpg', '￥318', '', '蓬,细,贴,轻,媲美天然羽绒的性价比之王', 'Z-Inhouse', '中国 | 北京'),
(67, '椰蓉磨毛床品', 'bed', 'img/bed/51aa65302fe58e834ac2567dbdeb6329@!small.jpg', '￥499', '', '高支高密柔软磨毛,贴身温糯一触即暖', 'Zelect', '中国 | 北京'),
(68, '床下储物盒', 'bed', 'img/bed/344b249c14851182e8a0dd2531d1f0f1@!small.jpg', '￥585', '', '隐于简洁线条,沁润一室舒朗', 'Z-Inhouse', '中国 | 北京');

-- --------------------------------------------------------

--
-- 表的结构 `zaozuo_user`
--

CREATE TABLE `zaozuo_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(64) DEFAULT NULL,
  `upwd` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zaozuo_user`
--

INSERT INTO `zaozuo_user` (`uid`, `uname`, `upwd`, `email`) VALUES
(1, 'dingding', '123456', '123456@qq.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `show`
--
ALTER TABLE `show`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `zaozuo_designers`
--
ALTER TABLE `zaozuo_designers`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `zaozuo_recommdation`
--
ALTER TABLE `zaozuo_recommdation`
  ADD PRIMARY KEY (`rid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `zaozuo_designers`
--
ALTER TABLE `zaozuo_designers`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `zaozuo_recommdation`
--
ALTER TABLE `zaozuo_recommdation`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
