CREATE TABLE IF NOT EXISTS `provinsi` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nama_provinsi` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

INSERT INTO `provinsi` (`id`, `nama_provinsi`) VALUES
(1, 'Yogyakarta'),
(2, 'Jawa Tengah');

CREATE TABLE IF NOT EXISTS `kabupaten` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `id_provinsi` int(5) NOT NULL,
  `nama_kabupaten` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

INSERT INTO `kabupaten` (`id`, `id_provinsi`, `nama_kabupaten`) VALUES
(1, 1, 'Sleman'),
(2, 1, 'Yogya'),
(3, 1, 'Gunung Kidul'),
(4, 1, 'Kulon Progo'),
(5, 1, 'Bantul'),
(6, 2, 'Semarang'),
(7, 2, 'Magelang'),
(8, 2, 'Tapanuli Selatan');

CREATE TABLE IF NOT EXISTS `kecamatan` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `id_kabupaten` int(5) NOT NULL,
  `nama_kecamatan` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

INSERT INTO `kecamatan` (`id`, `id_kabupaten`, `nama_kecamatan`) VALUES
(1, 1, 'Kecamatan Baktiya'),
(2, 1, 'Kecamatan Banda Baro'),
(3, 2, 'Kecamatan Banda Alam'),
(4, 2, 'Kecamatan Birem Bayeun'),
(5, 3, 'Kecamatan Arongan Lambalek'),
(6, 3, 'Kecamatan Bubon'),
(7, 4, 'Kecamatan Baitussalam'),
(8, 4, 'Kecamatan Darul Imarah'),
(9, 5, 'Kecamatan Aek Kuasan'),
(10, 5, 'Kecamatan Aek Ledong'),
(11, 6, 'Kecamatan Air Putih'),
(12, 6, 'Kecamatan Limapuluh'),
(13, 7, 'Kecamatan Bangun Purba'),
(14, 7, 'Kecamatan Batang Kuis'),
(15, 8, 'Kecamatan Angkola Barat'),
(16, 8, 'Kecamatan Arse');