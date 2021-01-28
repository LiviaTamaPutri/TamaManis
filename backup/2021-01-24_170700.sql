DROP TABLE tbl_disposisi;

CREATE TABLE `tbl_disposisi` (
  `id_disposisi` int(10) NOT NULL AUTO_INCREMENT,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `id_surat` int(10) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_disposisi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO tbl_disposisi VALUES("1","bidang A","monitor","Segera","2020-12-29","kabid / mewakili","2","1");



DROP TABLE tbl_instansi;

CREATE TABLE `tbl_instansi` (
  `id_instansi` tinyint(1) NOT NULL,
  `institusi` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kepsek` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_instansi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_instansi VALUES("1","Dinas Pertanian Tanaman Pangan dan Hortikultura","Dinas Pertanian Tanaman Pangan dan Hortikultura","Terakreditasi A","Jl. Alianyang No.17, Sungai Bangkong, Kec. Pontianak Kota, Kota Pontianak, Kalimantan Barat 78113","Ir.Florentinus Anum,M.Si","-","https://distan.kalbarprov.go.id/","distan@kalbarprov.go.id","logo.png","1");



DROP TABLE tbl_klasifikasi;

CREATE TABLE `tbl_klasifikasi` (
  `id_klasifikasi` int(5) NOT NULL AUTO_INCREMENT,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_klasifikasi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE tbl_sett;

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_sett`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_sett VALUES("1","10","10","10","1");



DROP TABLE tbl_surat_keluar;

CREATE TABLE `tbl_surat_keluar` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO tbl_surat_keluar VALUES("1","1","BKD","800/01/Sekr-B/2021","Surat Laporan","2021-01-03","2021-01-22","9805-20180920_075636_885.jpg","asdfghjklmnopq","1");
INSERT INTO tbl_surat_keluar VALUES("2","2","BKD","123.1/20/2022","qwertyuiop","2021-01-15","2021-01-23","","asdfghjkl","1");
INSERT INTO tbl_surat_keluar VALUES("3","3","SekDa","123.2/2022","taehyungie is ganteng","2021-01-09","2021-01-23","2005-IMG_20181013_072251.jpg","cobaaaaaaaa","1");
INSERT INTO tbl_surat_keluar VALUES("4","4","BigHit","800/02/Sekr-C/2021","Jungkook ganteng sgt","2021-01-07","2021-01-23","9234-FB_IMG_1531629947427.jpg","cbcbcbcbcb","1");
INSERT INTO tbl_surat_keluar VALUES("5","5","BigHit","145/09/I/2021","v is ma boy","2021-01-09","2021-01-23","3596-ZEPETO_-8586565921434280878.png","penting","1");
INSERT INTO tbl_surat_keluar VALUES("6","6","BigHit","123.3/2022","wdfghjkl","2021-01-09","2021-01-24","","Segera","1");



DROP TABLE tbl_surat_masuk;

CREATE TABLE `tbl_surat_masuk` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(10) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `asal_surat` varchar(250) NOT NULL,
  `isi` mediumtext NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO tbl_surat_masuk VALUES("2","1","123.1/2020","Sekda","aaaaaaaaaaaaa","2020-12-23","2020-12-27","9857-seokjinnie.jpg","","1");
INSERT INTO tbl_surat_masuk VALUES("3","2","123.1/2021","Gubernur","aaaaaaaa","2021-01-20","2021-01-20","1154-font.PNG","","1");
INSERT INTO tbl_surat_masuk VALUES("4","3","123.1/2020777","Gubernur","uhygyg","2021-01-20","2021-01-20","","","1");
INSERT INTO tbl_surat_masuk VALUES("5","4","123.1/2022","BKD","eeeeeeeeeeeeeeee","2021-01-01","2021-01-20","","","1");
INSERT INTO tbl_surat_masuk VALUES("6","5","123.1/20223","Sekda","ggggggggggggggggg","2021-01-01","2021-01-21","9706-namsantower2.png","qqqqqqqqqqqqqqqqqqqqqqqqqqqq","1");
INSERT INTO tbl_surat_masuk VALUES("7","6","521.1/35/TP/2021","Bighit ","permintaan data untuk laporan","2021-01-15","2021-01-21","6951-Instaridicule (KTH + JJK).jpg","Penting","1");
INSERT INTO tbl_surat_masuk VALUES("8","7","123.1/2020777333","wwwwwwwwwww","ds","2021-01-01","2021-01-24","8822-ZEPETO_-8586565921434280878.png","Penting","1");
INSERT INTO tbl_surat_masuk VALUES("9","8","123.1/202077733322","Sekda","dd","2021-01-01","2021-01-24","7427-ZEPETO_-8586565921434280878.png","Penting","1");
INSERT INTO tbl_surat_masuk VALUES("10","9","123.1/2020777222","dddd","dada","2021-01-01","2021-01-24","7754-ZEPETO_-8586565921434280878.png","Biasa","1");
INSERT INTO tbl_surat_masuk VALUES("11","10","123.1/202077733311","Sekda","ddd","2021-01-01","2021-01-24","","Biasa","1");
INSERT INTO tbl_surat_masuk VALUES("12","11","123.1/202077733399","Sekda","hhhhhhhhhhhhhhhhhhhhh","2021-01-21","2021-01-24","","Penting","1");



DROP TABLE tbl_user;

CREATE TABLE `tbl_user` (
  `id_user` tinyint(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO tbl_user VALUES("1","liviatama","0eb169bad01a8242bb10f110d70bf41d","Livia Tama P.","-","1");
INSERT INTO tbl_user VALUES("2","tamaaa","827ccb0eea8a706c4c34a16891f84e7b","Tama","3201816081","3");



