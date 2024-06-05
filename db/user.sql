create database cy_user;
use cy_user;

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `avatar` varchar(256) NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(128) NOT NULL DEFAULT '' COMMENT '邮箱',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY (`id`),
  KEY `ix_update_time` (`update_time`),
  UNIQUE KEY `uk_emial` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户表';

insert into user(username, avatar, mobile) values ('张三', 'https://gd-hbimg.huaban.com/c046f4f7f9bf38d2b93ab146138126142e8d14931e930-adLhbn_fw236', '717588228@qq.com');
insert into user(username, avatar, mobile) values ('李四', 'https://gd-hbimg.huaban.com/c046f4f7f9bf38d2b93ab146138126142e8d14931e930-adLhbn_fw236', '123456789@qq.com');