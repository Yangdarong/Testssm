-- 关闭外键约束
SET FOREIGN_KEY_CHECKS=0;

-- 创建 paper 表
DROP TABLE IF EXISTS  `paper`;
CREATE TABLE `paper` (
  `paper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'paperID',
  `name` varchar(100) NOT NULL COMMENT 'paper名称',
  `number` int(11) NOT NULL COMMENT 'paper数量',
  `detail` varchar(200) NOT NULL COMMENT 'paper描述',
  PRIMARY KEY (`paper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='paper表';

-- --------------------
-- Records of paper
-- --------------------
INSERT INTO `paper` VALUES ('1', '机器学习', '2', 'machine learning');
INSERT INTO `paper` VALUES ('2', '深度学习', '3', 'deep learning');
INSERT INTO `paper` VALUES ('3', '大数据', '4', 'big data');
