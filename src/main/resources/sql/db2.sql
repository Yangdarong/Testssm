-- 1.1 创建图书信息表
DROP TABLE IF EXISTS `tb_book`;
CREATE TABLE `tb_book` (
  `book_isbn` varchar(20) NOT NULL COMMENT 'ISBN',
  `book_name` varchar(50) NOT NULL COMMENT '书名',
  `book_author` varchar(12) NOT NULL COMMENT '作者',
  `book_Press` varchar(50) COMMENT '出版社',
  `book_publication_date` datetime COMMENT '出版日期',
  `book_brief` varchar(200) COMMENT '简介',
  `book_remarks` varchar(200) COMMENT '备注',
  PRIMARY KEY (`book_ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图书信息表';

-- 1.2 创建读者信息表
DROP TABLE IF EXISTS `tb_reader`;
CREATE TABLE `tb_reader` (
  `reader_id` varchar(12) NOT NULL COMMENT '读者学号',
  `reader_pwd` varchar(16) NOT NULL COMMENT '读者密码',
  `reader_name` varchar(10) NOT NULL COMMENT '读者姓名',
  `reader_sex` varchar(2) NOT NULL COMMENT '读者性别',
  `reader_link` varchar(11) COMMENT '联系电话',
  `reader_department` varchar(12) NOT NULL COMMENT '所在系',
  `effective_time` datetime COMMENT '生效时间',
  `failure_time` datetime COMMENT '失效时间',
  `reader_peccancy` varchar(2) COMMENT '违章情况',
  `lend_count` int COMMENT '累计借书',
  `reader_remarks` varchar(100) COMMENT '备注',
  PRIMARY KEY (`reader_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='读者信息表';

-- 1.3 创建管理员信息表
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `admin_id` varchar(12) NOT NULL COMMENT '管理员工作号',
  `admin_pwd` varchar(16) NOT NULL COMMENT '管理员密码',
  `admin_name` varchar(12) NOT NULL COMMENT '管理员姓名',
  `admin_sex` varchar(2) NOT NULL COMMENT '性别',
  `admin_phone` varchar(12) COMMENT '电话',
  `admin_address` varchar(12) COMMENT '住址',
  `admin_remarks` varchar(100) COMMENT '备注',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员信息表';

-- 1.4 创建借阅信息表
DROP TABLE IF EXISTS `tb_lend`;
CREATE TABLE `tb_lend` (
  `lend_id` int NOT NULL AUTO_INCREMENT COMMENT '借阅单号',
  `admin_id` varchar(12) NOT NULL COMMENT '管理员工作号',
  `book_isbn` varchar(20) NOT NULL COMMENT 'ISBN',
  `reader_id` varchar(12) NOT NULL COMMENT '读者学号',
  `lend_date` datetime NOT NULL COMMENT '借书日期',
  `return_date` datetime NOT NULL COMMENT '还书日期',
  `lend_renew` varchar(4) NOT NULL COMMENT '是否续借',
  `lend_remarks` varchar(100) COMMENT '备注',
  PRIMARY KEY (`lend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='借阅信息表';

-- 1.5 创建管理员_书籍表
DROP TABLE IF EXISTS `tb_admin_book`;
CREATE TABLE `tb_admin_book` (
  `ab_id` int NOT NULL AUTO_INCREMENT COMMENT '管理员书籍操作单号',
  `admin_id` varchar(12) NOT NULL COMMENT '管理员工作号',
  `book_isbn` varchar(20) NOT NULL COMMENT 'ISBN',
  `add_time` datetime COMMENT '添加时间',
  `count_library` int COMMENT '在馆数量',
  PRIMARY KEY (`ab_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员书籍表';

-- 1.6 创建管理员学生表
DROP TABLE IF EXISTS `tb_admin_reader`;
CREATE TABLE `tb_admin_reader` (
  `ar_id` int NOT NULL AUTO_INCREMENT COMMENT '管理员读者操作单号',
  `admin_id` varchar(12) NOT NULL COMMENT '管理员工作号',
  `reader_id` varchar(12) NOT NULL COMMENT '读者学号',
  `ar_operation` varchar(50) COMMENT '本次操作详情',
  `ar_result` varchar(10) COMMENT '处理结果',
  PRIMARY KEY (`ar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员学生表';

---- 2 创建索引
-- 2.1 创建图书表索引
CREATE UNIQUE INDEX `tb_book_index` ON `tb_book`(`book_isbn`);
-- 2.2 创建读者表索引
CREATE UNIQUE INDEX `tb_reader_index` ON `tb_reader`(`reader_id`);
-- 2.3 创建管理员信息表索引
CREATE UNIQUE INDEX `tb_admin_index` ON `tb_admin`(`admin_id`);
-- 2.4 创建借阅信息表索引
CREATE UNIQUE INDEX `tb_lend_index` ON `tb_lend`(`lend_id`);
-- 2.5 创建管理员_书籍表索引
CREATE UNIQUE INDEX `tb_admin_book_index` ON `tb_admin_book`(`ab_id`);
-- 2.6 创建管理员_学生表索引
CREATE UNIQUE INDEX `tb_admin_reader` ON `tb_admin_reader`(`ar_id`);

---- 3 创建视图
-- 3.1 创建读者表视图
CREATE VIEW `tb_reader_view` AS SELECT * FROM `tb_reader`;
-- 3.2 创建图书表视图
CREATE VIEW `tb_book_view` AS SELECT * FROM `tb_book`;
-- 3.3 创建管理员表视图
CREATE VIEW `tb_admin_view` AS SELECT * FROM `tb_admin`;