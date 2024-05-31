CREATE DATABASE paralodb;

CREATE TABLE `kullanici` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `parola` varchar(100) NOT NULL,
  `ad` varchar(100) DEFAULT NULL,
  `soyad` varchar(100) DEFAULT NULL,
  `kadi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) 

CREATE TABLE `uygulama` (
  `uygulamaid` int unsigned NOT NULL AUTO_INCREMENT,
  `uygulamaadi` varchar(50) NOT NULL,
  `uygulamaemail` varchar(50) NOT NULL,
  `uygulamausername` varchar(50) DEFAULT NULL,
  `uygulamaparola` varchar(50) DEFAULT NULL,
  `kullaniciid` int DEFAULT NULL,
  `createdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uygulamaid`),
  KEY `kullaniciid` (`kullaniciid`),
  CONSTRAINT `uygulama_ibfk_1` FOREIGN KEY (`kullaniciid`) REFERENCES `kullanici` (`id`)
) 