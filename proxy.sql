CREATE TABLE `proxy` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `ip` varchar(16) DEFAULT '' COMMENT 'ip��ַ',
  `port` int(11) DEFAULT '0' COMMENT '�˿�',
  `user` varchar(32) DEFAULT '' COMMENT 'SOCKE5�û���',
  `passwd` varchar(32) DEFAULT '' COMMENT 'SOCKE5����',
  `type` int(11) DEFAULT '-1' COMMENT '�������� 2:���� 1:���� 0:͸�� -1: δ֪',
  `method` int(11) DEFAULT '1' COMMENT '����ʽ 1:HTTP 2:SOKS4 3:SOKS5',
  `active` int(11) DEFAULT '0' COMMENT '�Ƿ���� 0�������� 1������',
  `area` varchar(128) DEFAULT '--' COMMENT '����λ��',
  `speed` float DEFAULT '0' COMMENT '�ٶ�',
  `intime` datetime DEFAULT NULL COMMENT '���ʱ��',
  `checktime` datetime DEFAULT NULL COMMENT '���ʱ��',
  PRIMARY KEY (`id`),
  KEY `Idx_method` (`method`),
  KEY `Idx_ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8