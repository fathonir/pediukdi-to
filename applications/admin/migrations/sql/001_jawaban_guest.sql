CREATE TABLE IF NOT EXISTS `jawaban_guest` (
  `id_jawaban_guest` int(11) NOT NULL AUTO_INCREMENT,
  `id_guest_session` int(11) NOT NULL,
  `id_form_soal` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `id_jawaban_soal` int(11) DEFAULT NULL,
  `waktu_jawab` datetime NOT NULL,
  `is_ragu` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_jawaban_guest`),
  KEY `id_form_soal` (`id_form_soal`),
  KEY `id_soal` (`id_soal`),
  KEY `id_jawaban` (`id_jawaban_soal`),
  KEY `id_guest_session` (`id_guest_session`) USING BTREE,
  CONSTRAINT `jawaban_guest_ibfk_1` FOREIGN KEY (`id_guest_session`) REFERENCES `guest_session` (`id_guest_session`),
  CONSTRAINT `jawaban_guest_ibfk_2` FOREIGN KEY (`id_form_soal`) REFERENCES `form_soal` (`id_form_soal`),
  CONSTRAINT `jawaban_guest_ibfk_3` FOREIGN KEY (`id_soal`) REFERENCES `soal` (`id_soal`),
  CONSTRAINT `jawaban_guest_ibfk_4` FOREIGN KEY (`id_jawaban_soal`) REFERENCES `jawaban_soal` (`id_jawaban_soal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
