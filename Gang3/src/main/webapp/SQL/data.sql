USE mysns;

-- 개발자 계정
INSERT INTO `mysns`.`user` (`id`, `password`, `name`,`ts`) VALUES ('admin', '1111', 'admin',now());
-- 테스트 계정
INSERT INTO `mysns`.`user` (`id`, `password`, `name`,`ts`) VALUES ('2018100901', '1111', '김하나',now());
INSERT INTO `mysns`.`user` (`id`, `password`, `name`,`ts`) VALUES ('2018100902', '1111', '박둘',now());
INSERT INTO `mysns`.`user` (`id`, `password`, `name`,`ts`) VALUES ('2018100903', '1111', '이셋',now());
INSERT INTO `mysns`.`user` (`id`, `password`, `name`,`ts`) VALUES ('2018100904', '1111', '김네엣',now());
INSERT INTO `mysns`.`user` (`id`, `password`, `name`,`ts`) VALUES ('2018100905', '1111', '박다섯',now());
INSERT INTO `mysns`.`user` (`id`, `password`, `name`,`ts`) VALUES ('2018100906', '1111', '문여섯',now());

INSERT INTO feed(id, content) VALUES("2018100901", "Hello");
INSERT INTO feed(id, content) VALUES("2018100903", "Aloha");