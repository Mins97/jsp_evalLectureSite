USE mysns;

-- ������ ����
INSERT INTO `mysns`.`user` (`id`, `password`, `name`,`ts`) VALUES ('admin', '1111', 'admin',now());
-- �׽�Ʈ ����
INSERT INTO `mysns`.`user` (`id`, `password`, `name`,`ts`) VALUES ('2018100901', '1111', '���ϳ�',now());
INSERT INTO `mysns`.`user` (`id`, `password`, `name`,`ts`) VALUES ('2018100902', '1111', '�ڵ�',now());
INSERT INTO `mysns`.`user` (`id`, `password`, `name`,`ts`) VALUES ('2018100903', '1111', '�̼�',now());
INSERT INTO `mysns`.`user` (`id`, `password`, `name`,`ts`) VALUES ('2018100904', '1111', '��׿�',now());
INSERT INTO `mysns`.`user` (`id`, `password`, `name`,`ts`) VALUES ('2018100905', '1111', '�ڴټ�',now());
INSERT INTO `mysns`.`user` (`id`, `password`, `name`,`ts`) VALUES ('2018100906', '1111', '������',now());

INSERT INTO feed(id, content) VALUES("2018100901", "Hello");
INSERT INTO feed(id, content) VALUES("2018100903", "Aloha");