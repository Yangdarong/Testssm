DROP TABLE IF EXISTS `t_user_key`;
CREATE TABLE `t_user_key`(
  `uk_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ukID',
  `uk_uid` bigint(20) UNIQUE COMMENT 'uid',
  `uk_key` varchar(100) NOT NULL COMMENT '密钥',
  PRIMARY KEY (`uk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='Key表';