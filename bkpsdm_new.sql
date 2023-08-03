/*
 Navicat Premium Data Transfer

 Source Server         : bkpsdm_web
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : bkpsdm_new

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 20/07/2022 10:47:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for agenda
-- ----------------------------
DROP TABLE IF EXISTS `agenda`;
CREATE TABLE `agenda`  (
  `id_agenda` int(5) NOT NULL AUTO_INCREMENT,
  `tema` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `isi_agenda` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `pengirim` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_agenda`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of agenda
-- ----------------------------
INSERT INTO `agenda` VALUES (1, 'Perekaman Data Biometrik/Enrollment bagi ASN yang akan memasuki BUP', 'perekaman-data-biometrikenrollment-bagi-asn-yang-akan-memasuki-bup', '<p>Menindaklanjuti surat Kepala PT Taspen (Persero) Kantor Cabang Tasikmalaya Nomor&nbsp; SRT-18/C.3.2/012020 Tanggal&nbsp; 10 Januari 2020 tentang&nbsp;Perekaman Data Biometrik/Enrollment bagi ASN yang akan memasuki BUP</p>\r\n', 'Aula BKPSDM', '', 'logo_taspen.jpg', '2020-01-22', '2020-01-23', '2020-01-20', '09.00 s/d Selesai', 484, 'admin');
INSERT INTO `agenda` VALUES (2, 'Pelaksanaan SKD CPNS Kabupaten Ciamis Formasi Tahun 2019', 'pelaksanaan-skd-cpns-kabupaten-ciamis-formasi-tahun-2019', '<p>Jadwal Pelaksanaa Seleksi Kompetensi Dasar CPNS Kabupaten Ciamis Formasi Tahun 2019</p>\r\n', 'Balai Kota Tasikmalaya ', '', 'PENGUMUMAN_JADWAL_SKD00_TANPA_JUDUL.jpg', '2020-02-14', '2020-02-17', '2020-02-03', '8.00-18.00', 518, 'admin');
INSERT INTO `agenda` VALUES (3, 'Seleksi Kompetensi Bidang Formasi Kabupaten Ciamis Tahun 2020 Tangga', 'seleksi-kompetensi-bidang-formasi-kabupaten-ciamis-tahun-2020-tangga', '<p>Seleksi Kompetensi Bidang Formasi Cpns Kabupaten Ciamis Tahun 2020</p>\r\n', 'Tempat Gedung Serba Guna Restu Sky STMIK Tasikmalaya Kampus B', '', 'jadwal_skbOK_.jpg', '2020-10-05', '2020-10-05', '2020-09-28', '06.30-selesai', 568, 'admin');

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album`  (
  `id_album` int(5) NOT NULL AUTO_INCREMENT,
  `jdl_album` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `hits_album` int(5) NOT NULL DEFAULT 1,
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_album`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of album
-- ----------------------------

-- ----------------------------
-- Table structure for background
-- ----------------------------
DROP TABLE IF EXISTS `background`;
CREATE TABLE `background`  (
  `id_background` int(5) NOT NULL AUTO_INCREMENT,
  `gambar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_background`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of background
-- ----------------------------
INSERT INTO `background` VALUES (1, 'purple');

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id_banner` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_banner`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (1, 'Badan Kepegawaian Negara', 'https://www.bkn.go.id/', 'bkn.jpg', '2020-01-10');
INSERT INTO `banner` VALUES (2, 'Kementerian Pendayagunaan Aparatur Negara dan Reformasi Birokrasi', 'https://www.menpan.go.id/', 'asn.jpg', '2020-01-10');
INSERT INTO `banner` VALUES (3, 'Ciamiskab.go.id', 'https://ciamiskab.go.id/', 'ciamiskab2.jpg', '2020-01-17');
INSERT INTO `banner` VALUES (4, 'SIMPEG', 'http://simpeg.ciamiskab.go.id', 'simpeg2.jpg', '2020-01-17');
INSERT INTO `banner` VALUES (7, 'SP4N LAPOR!', 'https://lapor.go.id', 'rsz_sp4n.png', '2022-07-20');

-- ----------------------------
-- Table structure for berita
-- ----------------------------
DROP TABLE IF EXISTS `berita`;
CREATE TABLE `berita`  (
  `id_berita` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `judul_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `headline` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keterangan_gambar` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `tag` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `berkas` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_berita`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 79 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of berita
-- ----------------------------
INSERT INTO `berita` VALUES (5, 2, 'admin', 'Sosialisasi Penilaian Prestasi Kerja PNS dan Monitoring Penyusunan SKP', '-', '', 'sosialisasi-penilaian-prestasi-kerja-pns-dan-monitoring-penyusunan-skp', 'Y', 'N', 'Y', '<p>Badan Kepegawaian dan Pengembangan Sumbaer Daya Manusia Kabupaten Ciamis mengadakan Sosialisasi Penilaian Prestasi Kerja PNS dan Monitoring Pengusunan SKP berdasarkan Pasal 19 ayat (1) Peraturan Pemerintah Nomor 46 Tahun 2011 tentang Penilaia Prestasi Kerja Pegawai Negeri Sipil dan Bagian II Peraturan Kepala Badan Kepegawaian Negara Nomor 1 Tahun 2013 tentang Ketentuan Pelaksanaan PP Nomor 46 Tahun 2011, yang menyatakan bahwa Pejabat Penilai wajib melakukan penilaian perstasi kerja terhadap setiap PNS dilingkungan kerjanya.<br />\r\n&nbsp;</p>\r\n', '', 'Senin', '2020-02-03', '11:42:34', 'sosialisasi2.jpg', 2409, 'informasi', 'Y', '');
INSERT INTO `berita` VALUES (4, 2, 'admin', 'Sosialisasi Harmonisasi Pelayanan Pensiun Dan Tabungan Hari Tua ASN', '-', '', 'sosialisasi-harmonisasi-pelayanan-pensiun-dan-tabungan-hari-tua-asn', 'Y', 'N', 'Y', '<p style=\"text-align:justify\">Ciamis, PT Taspen (Persero) dan Badan Kepegawaian dan Pengembangan Sumber Daya Manusia (BKPSDM) Kabupaten Ciamis mengadakan Sosialisasi Harmonisasi Pelayanan Pensiun dan Tabungan Hari Tua ASN Berdasarkan SE MENPAN-RB No. 1382 Tahun 2019 pada hari Senin (20/01/2020) yang bertempat di &nbsp;Aula BKPSDM kabupaten Ciamis, dalam paparannya pembicara dari PT Taspen memaparkan langkah konkret sesuai SE Menpan RB yaitu pemutakhiran data &amp; informasi PNS kemudian PNS tanda tangan DPCP dan divalidasi BKN kemudian rekon data PNS maksimal 15 hari kerja dengan BKN sesuai DPCP kemudian mengusulkan pertek maksimal 3 bulan sejak DPCP disampaikan BKN kemudia segera menerbitkan SK Pensiun dan SKPP kemudian menyerahkan SK Pensiun dan SKPP tersebut kepada PNS yang bersangkutan dan tembusan ke PT TASPEN.</p>\r\n', '', 'Senin', '2020-01-20', '12:56:22', 'sosilisasi_new.JPG', 1928, 'informasi', 'Y', '');
INSERT INTO `berita` VALUES (12, 2, 'admin', 'Workshop Pembekalan Persiapan Pensiun dan Materi Ketaspenan Bagi ASN yang Memasuki Usia Pensiun', '-', '', 'workshop-pembekalan-persiapan-pensiun-dan-materi-ketaspenan-bagi-asn-yang-memasuki-usia-pensiun', 'Y', 'N', 'Y', '<p style=\"text-align:justify\">Ciamis, Badan Kepegawaian dan Pengembangan Sumber Daya Manusia (BKPSDM), PT. Taspen (Persero) bersama Bank BJB Kabupaten Ciamis mengadakan Workshop Pembekalan Persiapan Pensiun dan Materi Ketaspenan Bagi ASN yang Memasuki Usia Pensiun Tahun 2020, pada hari Kamis (23/01/2020), dalam kegiatan tersebut diisi juga oleh penceramah yang memberikan pembekalan secara rohani bagi para peserta supaya dalam menghadapi masa pensiun tetap terus berkarya dan lebih banyak diisi oleh kegiatan keagamaan seperti mengikuti pengajian dan berjamaah dalam menjalankan sholat lima waktu, &nbsp;selain workshop diadakan juga perekaman Data Biometrik, Data Biometrik yang digunakan adalah wajah, sidik jari, dan suara. Para penerima dana pensiun kini diminta untuk mendaftarkan data biometrik mereka sebagai legitimasi bahwa dana pensiun masih berhak disalurkan, dengan solusi otentifikasi digital ini, penerima dana Taspen hanya perlu melakukan verifikasi lewat aplikasi.</p>\r\n', 'Workshop Pembekalan Persiapan Pensin dan Materi Ketaspenan Bagi ASN yang Memasuki Usia Pensiun Tahun 2020', 'Jumat', '2020-01-24', '11:46:58', 'test1.jpg', 1941, '', 'Y', '');
INSERT INTO `berita` VALUES (13, 2, 'admin', 'Jadwal Seleksi Kompetensi Dasar (SKD) Penerimaan CPNS Kabupaten Ciamis Formasi Tahun 2019', '-', '', 'jadwal-seleksi-kompetensi-dasar-skd-penerimaan-cpns-kabupaten-ciamis-formasi-tahun-2019', 'Y', 'N', 'Y', '<p style=\"text-align:center\">PENGUMUMAN&nbsp;<br />\r\nNomor : 821/01/Panselda.1/2020<br />\r\nTENTANG<br />\r\nJADWAL SELEKSI KOMPETENSI DASAR (SKD)<br />\r\nPENERIMAAN CALON PEGAWAI NEGERI SIPIL<br />\r\nKABUPATEN CIAMIS FORMASI TAHUN 2019</p>\r\n\r\n<p style=\"text-align:justify\">Berdasarkan Pengumuman Panitia Pelaksana Kegiatan Seleksi Penerimaan CPNS Kabupaten Ciamis Tahun Anggaran 2019 Nomor : 821/01/Panselda.1/2019 tanggal 16 Desember 2019, tentang Hasil Seleksi Administrasi Penerimaan CPNS Kabupaten Ciamis Tahun 2019, serta Pengumuman Panitia Pelaksana Kegiatan Seleksi Penerimaan CPNS Kabupaten Ciamis Tahun Anggaran 2019 Nomor : 821/006/Panselda.1/2019 tanggal 26 Desember 2019 tentang Hasil Masa Sanggah Penerimaan CPNS Kabupaten Ciamis Tahun 2019, antara lain disampaikan bahwa peserta yang lulus seleksi administrasi dan berhak mengikuti seleksi kompetensi dasar setelah selesai masa sanggah sebanyak 6.382 orang.</p>\r\n\r\n<p style=\"text-align:center\">DOWNLOAD</p>\r\n\r\n<p style=\"text-align:center\"><u><a href=\"https://drive.google.com/open?id=16xoVqlOUIHaRbImFAF8A69ytof6R2V2R\" target=\"_blank\">Pengumuman SKD</a></u></p>\r\n\r\n<p style=\"text-align:center\"><u><a href=\"https://drive.google.com/open?id=1D1ncRqiXaYMCuwD_OmfLioR_nkYHbCIh\" target=\"_blank\">Lampiran I Jadwal Seleksi Kompetensi Dasar</a></u><a href=\"https://drive.google.com/open?id=1D1ncRqiXaYMCuwD_OmfLioR_nkYHbCIh\" target=\"_blank\"><u>&nbsp;</u></a></p>\r\n\r\n<p style=\"text-align:center\"><u><a href=\"https://drive.google.com/open?id=124JVm6JYfwIai5swtP0GR7cXVEMp1zoe\" target=\"_blank\">Lampiran II Daftar Peserta P1/TL</a></u></p>\r\n\r\n<p style=\"text-align:center\"><u><a href=\"https://drive.google.com/open?id=1DQeBnAmpUN_Dya4Hk5MAc-Gtkj9iuvd3\" target=\"_blank\">Lampiran III Tata Tertib Pelaksanaan Seleksi Kompetensi Dasar</a></u></p>\r\n', '', 'Jumat', '2020-01-24', '18:41:42', 'JADWAL_SKD_CPNS_FORMASI_2019.jpg', 23558, '', 'Y', '');
INSERT INTO `berita` VALUES (18, 2, 'admin', 'Daftar  Absensi SKD Pengadaan CPNS Formasi Tahun 2019 Di Lingkungan Pemerintahan Kabupaten Ciamis', '-', '', 'daftar--absensi-skd-pengadaan-cpns-formasi-tahun-2019-di-lingkungan-pemerintahan-kabupaten-ciamis', 'Y', 'N', 'Y', '<p>Kami sampaikan nomor urut absensi untuk memudahkan peserta SKD pada saat proses penandatanganan daftar hadir.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Silahkan unduh Daftar Absensi dibawah ini :</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a href=\"http://tiny.cc/o4bujz\" target=\"_blank\">Daftar Urut No Absen Peserta SKD</a></p>\r\n', '', 'Selasa', '2020-02-11', '11:26:20', 'DAFTAR_NO_URUT_ABSEN.jpg', 8131, '', 'Y', '');
INSERT INTO `berita` VALUES (17, 2, 'admin', 'Pelantikan Jabatan Pimpinan Tinggi Pratama oleh Bupati Ciamis Herdiat Sunarya', '', '', 'pelantikan-jabatan-pimpinan-tinggi-pratama-oleh-bupati-ciamis-herdiat-sunarya', 'Y', 'N', 'Y', '<p>Senin (03/02/2020), Bupati Ciamis Herdiat Sunarya melantik David Firdha, SH, MM sebagai Kepala Dinas Koperasi Usaha Kecil Menengah dan Perdagangan (KUKMP) Kabupaten Ciamis yang bertempat di Aula Sekretariat Daerah Kabupaten Ciamis sesuai dengan Keputusan Bupati Ciamis Nomor 821.2/KPTS.94/BKPSDM.3/2020 Tentang Pengangkatan Dalam Jabatan Pimpinan Tinggi Pratama Di Lingkungan Pemerintah Kabupaten Ciamis tanggal 31 Januari 2020.</p>\r\n', '', 'Senin', '2020-02-03', '15:11:38', 'foto_pelantikan_03_02_2020_03.jpg', 1691, '', 'Y', '');
INSERT INTO `berita` VALUES (22, 2, 'admin', 'Hasil Seleksi Kompetensi Dasar CAT BKN Pengadaan CPNS Tahun 2019 Pemerintah Kabupaten Ciamis', '-', '', 'hasil-seleksi-kompetensi-dasar-cat-bkn-pengadaan-cpns-tahun-2019-pemerintah-kabupaten-ciamis', 'Y', 'N', 'Y', '<p><strong>Berikut Hasil Seleksi Kompetensi Dasar CAT BKN Pengadaan CPNS Tahun 2019 Pemerintah Kabupaten Ciamis&nbsp;:</strong></p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Jumat_14_02_2020_compressed.pdf\" target=\"_blank\"><strong>1. Hari Jumat 14 Februari 2020</strong></a></p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Sabtu_15_02_2020_compressed.pdf\" target=\"_blank\"><strong>2. Hari Sabtu 15 Februari 2020&nbsp;</strong></a></p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Minggu_16_02_2020_compressed.pdf\" target=\"_blank\"><strong>3. Hari Minggu 16 Februari 2020</strong></a></p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Senin_17_02_2020_compressed.pdf\" target=\"_blank\"><strong>4. Hari Senin 17 Februari 2020</strong></a></p>\r\n', '', 'Jumat', '2020-02-21', '11:42:24', 'PENGUMUMAN_HASIL_SKD.jpg', 34888, '', 'Y', '');
INSERT INTO `berita` VALUES (27, 2, 'admin', 'BKPSDM Ciamis Menggelar Pelatihan Anti Korupsi Berbasis E-Learning', '-', '', 'bkpsdm-ciamis-menggelar-pelatihan-anti-korupsi-berbasis-elearning', 'Y', 'N', 'Y', '<p>Korupsi merupakan salah satu permasalahan bangsa yang mesti ditangani &nbsp;secara &nbsp;serius. Salah satunya dengan&nbsp;cara meningkatkan kesadaraan &nbsp;dan pemahaman Aparatur Sipil Negara sehingga &nbsp;tidak &nbsp; melakukan &nbsp; tindak &nbsp;pidana korupsi. Jika tidak, tindak pidana korupsi akan menghancurkan sendi-sendi kehidupan bernegara dan berbangsa.&nbsp;<br />\r\nAparatur Sipil Negara merupakan salah satu subjek dan objek dalam pusaran kasus-kasus &nbsp;korupsi &nbsp;di &nbsp;Indonesia. &nbsp;Tugas &nbsp;dan kewenangannya sebagai penyelenggara pemerintahan membuat posisinya menjadi rentan terbawa dalam pusaran arus korupsi. Data menunjukkan banyak ASN dari berbagai jenjang jabatan yang tersangkut permasalahan korupsi mulai dari tingkat pusat sampai daerah.<br />\r\nUntuk itu, Badan Kepegawaian dan Pengembangan Sumber Daya Manusia Kabupaten Ciamis melalui Bidang Pengembangan Kompetensi Aparatur menyelenggarakan Pelatihan Anti Korupsi Berbasis E-Learning. Pelatihan ini dilakukan untuk memenuhi kebutuhan organisasi dalam meningkatkan kompetensi aparatur tentang pemahaman dan aktualisasi sikap anti korupsi. &nbsp;Selain &nbsp;itu pula, &nbsp;melalui pendekatan pembelajaran e-learning ini dapat meningkatkan efisiensi dan efektivitas penyelenggaraan pengembangan kompetensi dan mempercepat peningkatan kinerja organisasi.<br />\r\nSekretaris BKPSDM Kabupaten Ciamis, Iyus Sunardi, S.AP dalam sambutan pembukaannya mengatakan bahwa di era Revolusi 4.0 tranformasi berbagai hal dalam kepemerintahan merupakan keniscayaan, termasuk transformasi di bidang pendidikan dan latihan. ASN Kabupaten Ciamis &nbsp;dituntut untuk semakin meningkatkan literasi IT (information technology) karena ke depan metode E-Learning akan banyak dipakai dalam berbagai program pengembangan kompetensi aparatur.&nbsp;<br />\r\nProgram pelatihan ini bersifat blended learning, yaitu menggabungkan pembelajaran on-line dan pembelajaran tatap muka di kelas. Pembelajaran tatap muka (klasikal) dilakukan di BKPSDM Kabuapten Ciamis sedangkan pembelajaran e-learning dilakukan ditempat kerja masing-masing melalui website e-learning Kabupaten Ciamis di alamat https://e-learning.ciamiskab.go.id/. Pelatihan ini dilaksanakan pada tanggal 24 sampai dengan 28 Februari Tahun 2020 dan diikuti oleh 27 orang pejabat pengawas dan pelaksana dari Kantor Kecamatan se-Kabupaten Ciamis.&nbsp;<br />\r\nKompetensi yang ingin dibangun melalui kegiatan ini adalah meningkatnya pemahaman &nbsp;dan aktualisasi tentang semangat melawan korupsi, bahaya dan dampak korupsi, berpikir kritis terhadap korupsi, sikap anti korupsi serta pengetahuan dan keterampilan anti korupsi dalam &nbsp; penyelenggaraan pelatihan secara profesional. Fasilitator Pelatihan Anti Korupsi Berbasis E-learning ini adalah para Widyaiswara dan pejabat struktural BKPSDM Kabupaten Ciamis.&nbsp;</p>\r\n', '-', 'Minggu', '2020-03-08', '14:04:35', 'berita_pletihan_anti_korupsi.jpg', 2099, '', 'Y', '');
INSERT INTO `berita` VALUES (28, 2, 'admin', 'Pengumuman Hasil Seleksi Kompetensi Dasar (SKD) CPNS Tahun 2019 Kabupaten Ciamis', '', '', 'pengumuman-hasil-seleksi-kompetensi-dasar-skd-cpns-tahun-2019-kabupaten-ciamis', 'Y', 'N', 'Y', '<p>Menindaklanjuti surat Kepala Badan Kepegawaian Negara Nomor : K26-30/D6112/III/20.01 Tanggal 18 Maret 2020 Perihal Penyampaian Hasil Seleksi Kompetensi Dasar (SKD) CPNS Pemerintah Kabupaten Ciamis Tahun 2019, dengan ini kami sampaikan hasil Seleksi Kompetensi Dasar (SKD) Sebagaimana dimaksud dibawah ini.</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Surat_Pengumuman.pdf\" target=\"_blank\">Surat Pengumuman</a></p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/REKAPITULASI_HASIL_SKD_CPNS_KABUPATEN_CIAMIS_2019.pdf\" target=\"_blank\">Rekapitulasi Hasil SKD CPNS Kabupaten Ciamis 2019</a></p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/DAFTAR_PESERTA_P1TL_SKD_KABUPATEN_CIAMIS_2019.pdf\" target=\"_blank\">Daftar Peserta P1TL SKD Kabupaten Ciamis 2019</a><br />\r\n&nbsp;</p>\r\n', '', 'Senin', '2020-03-23', '07:51:10', 'PENGUMUMAN_HASIL_SKD_PER_JENIS_JABATAN.jpg', 15863, '', 'Y', '');
INSERT INTO `berita` VALUES (29, 3, 'admin', 'Surat Edaran Libur Nasional dan Cuti Bersama 2020', '', '', 'surat-edaran-libur-nasional-dan-cuti-bersama-2020', 'Y', 'N', 'Y', '<p>Berdasarkan Keputusan Bersama 3 (tiga) Menteri yaitu : Menteri Agama Nomor 174 tahun 2020, Menteri Ketenagakerjaan Nomor 01 tahun 2020, dan Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Republik Indonesia Nomor 01 Tahun 2020 tanggal 9 Maret 2020 tentang Perubahan atas Keputusan Bersama Menteri Agama, Menteri Ketenagakerjaan, dan Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Nomor 728 Tahun 2019, Nomor 213 Tahun 2019, Nomor 01 Tahun 2019 tentang Hari Libur Nasional dan Cuti Bersama Tahun 202, diatur dibawah ini :</p>\r\n\r\n<p><a href=\"http://bkpsdm.ciamiskab.go.id/download/file/SE_CUTI_BERSAMA_2020.pdf\" target=\"_blank\">Surat Edaran Hari Libur Nasional dan Cuti Bersama Tahun 2020</a></p>\r\n', '', 'Jumat', '2020-03-27', '10:50:04', 'Surat_Edaran_Cuti_Bersama_2020.jpg', 3218, '', 'Y', '');
INSERT INTO `berita` VALUES (30, 2, 'admin', 'Perubahan Kedua Cuti Bersama 2020', '', '', 'perubahan-kedua-cuti-bersama-2020', 'Y', 'N', 'Y', '<p>Menyusul Surat Edaran Nomor 402 Tahun 2020 tanggal 24 Maret 2020 tentang Perubahan Hari Libur Nasional dan Cuti Bersama Tahun 2020 dan menindaklanjuti Keputusan Bersama 3 (tiga) Menteri yaitu: Menteri Agama, Menteri Ketenagakerjaan dan Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi, maka diatur sebagai berikut :</p>\r\n\r\n<p><a href=\"http://bkpsdm.ciamiskab.go.id/download/file/PERUBAHAN_KEDUA_HARI_LIBUR_DAN_CUTI_BERSAMA_2020.pdf\" target=\"_blank\">Perubahan Kedua Hari Libur Nasional dan Cuti Bersama Tahun 2020</a></p>\r\n', '', 'Selasa', '2020-04-21', '10:01:17', 'perubahan_kedua_cuti_bersama_2020_ok.jpg', 1325, '', 'Y', '');
INSERT INTO `berita` VALUES (31, 2, 'admin', 'Seleksi Penerimaan Calon Praja IPDN Tahun 2020', '', '', 'seleksi-penerimaan-calon-praja-ipdn-tahun-2020', 'Y', 'N', 'Y', '<p>Berdasarkan Surat Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Nomor B/435/M.SM.01.00/2020 tanggal 6 Mei 2020 Hal Rencana Pembukaan Pendaftaran dan Seleksi Sekolah Kedinasan Tahun 2020, Kementerian Dalam Negeri Republik Indonesia memberikan kesempatan bagi Putra/Putri Warga Negera Republik Indonesia untuk mengikuti Seleksi Penerimaan Calon Praja (SPCP) Institut Pemerintahan Dalam Negeri (IPDN) Tahun 2020. Informasi lebih lanjut bisa di download <strong><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/SE_Penerimaan_Praja_IPDN_Tahun_2020.pdf\" target=\"_blank\">DISINI</a></strong></p>\r\n', '', 'Rabu', '2020-06-03', '10:01:06', 'gambar_sscn_ipdn.jpg', 1252, '', 'Y', '');
INSERT INTO `berita` VALUES (32, 2, 'admin', 'Pengambilan Sumpah PNS Tahun 2020', '', '', 'pengambilan-sumpah-pns-tahun-2020', 'Y', 'N', 'Y', '<p>Ciamis - Badan Kepegawaian dan Pengembangan Sumber Daya Manusia Kabupaten Ciamis mengadakan acara pengambilan Sumpah Pegawai Negeri Sipil Tahun 2020, pengambilan sumpah dilaksanakan oleh Bupati Ciamis H. Herdiat Sunarya pada Hari Selasa (16/06/2020).<br />\r\nPengambilan sumpah PNS dilaksanakan secara virtual yang dilaksanakan di tiga tempat di lingkungan Badan Kepegawaian dan Pengembangan Sumber Daya Manusia, dengan jumlah peserta 199 orang dengan riancian di Aula sebanyak 83 orang, di Gedung Diklat A sebanyak 64 orang dan di Gedung Diklat B sebanyak 52 orang.<br />\r\nDalam sambutannya Bupati Ciamis menyampaikan bahwa kedepan tantangan kita sebagai Aparatur Sipil Negara sudah di depan mata diantaranya yaitu sedang mewabahnya virus Covid-19 diseluruh dunia termasuk di Kabupaten Ciamis, oleh karena itu kita sebagai Aparatur Sipil Negara yang memiliki fungsi sebagai pelaksana kebijakan dan pelayanan publik memiliki kewajiban untuk melaksanakan kebijakan dan melayani masyarakat agar terhindar dari wabah Virus Covid-19 ini.<br />\r\n&nbsp;</p>\r\n', '', 'Selasa', '2020-06-16', '13:02:53', 'sumpah2.JPG', 1006, '', 'Y', '');
INSERT INTO `berita` VALUES (33, 2, 'admin', 'Ujian Dinas dan Ujian Penyesuaian Kenaikan Pangkat PNS Kabupaten Ciamis 2020', '', '', 'ujian-dinas-dan-ujian-penyesuaian-kenaikan-pangkat-pns-kabupaten-ciamis-2020', 'Y', 'N', 'Y', '<p>Ciamis - Badan Kepegawaian dan Pengembangan Sumber Daya Manusia Kabupaten Ciamis bekerja sama dengan Kantor Regional III BKN Bandung menyelenggarakan Ujian Dinas dan Ujian Penyesuaian Kenaikan Pangkat Pegawai Negeri Sipil di lingkungan Pemerintah Kabupaten Ciamis periode Oktober 2020 pada Hari Jumat (10/07/2020) menggunakan metode Ujian dengan sistem CAT (computer assisted test).<br />\r\nKegiatan tersebut diikuti sebanyak 24 (dua puluh empat) peserta, dengan rincian Ujian Dinas Tingkat I sebanyak 6 orang, Ujian Dinas Tingkat II sebanyak 5 orang, UPKP S-1 sebanyak 3 Orang dan UPKP D-3 sebanyak 6 orang.</p>\r\n', '', 'Jumat', '2020-07-10', '15:10:54', 'ujian_dinas.JPG', 1371, '', 'Y', '');
INSERT INTO `berita` VALUES (34, 3, 'admin', 'Pengumuman Pelaksanaan SKB CPNS Kabupaten Ciamis 2019', '', '', 'pengumuman-pelaksanaan-skb-cpns-kabupaten-ciamis-2019', 'Y', 'N', 'Y', '<p style=\"text-align:center\">Pengumuman Nomor :821/008/Panselda.1/2020&nbsp;<br />\r\nTentang Pelaksanaan Seleksi Kompetensi Bidang (SKB) Pada Kegiatan Seleksi Penerimaan Calon Pegawai Negeri Sipil Di Lingkungan Pemerintah Kabupaten Ciamis Formasi Tahun 2019</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/pengumuman_SKB_2020.pdf\">Download</a><br />\r\n&nbsp;</p>\r\n', '', 'Kamis', '2020-07-30', '21:24:42', 'gambar_pengumuman_SKB_2020.jpg', 4117, '', 'Y', '');
INSERT INTO `berita` VALUES (35, 3, 'admin', 'Jadwal SKB Penerimaan CPNS Kabupaten Ciamis 2019', '', '', 'jadwal-skb-penerimaan-cpns-kabupaten-ciamis-2019', 'Y', 'N', 'Y', '<p style=\"text-align:center\">PENGUMUMAN&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">NOMOR : 821/009/Panselda.1/2020</p>\r\n\r\n<p style=\"text-align:center\">TENTANG</p>\r\n\r\n<p style=\"text-align:center\">JADWAL SELEKSI KOMPETENSI BIDANG (SKB)</p>\r\n\r\n<p style=\"text-align:center\">PENERIMAAN CALON PEGAWAI NEGERI SIPIL&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">KABUPATEN CIAMIS FORMASI TAHUN 2020</p>\r\n\r\n<p style=\"text-align:justify\">Sesuai dengan hasil seleksi kompetensi dasar&nbsp;dari Panitia Seleksi Nasional sebagaimana telah diumumkan dalam Pengumuman Panitia Seleksi Penerimaan CPNS Kabupaten Ciamis Formasi Tahun 2019 Nomor : 821/01.Panselda.1/2020 Tanggal 24 Januari 2020 bahwa terdapat 692 orang peserta yang dinyatakan lulus seleksi komptensi dasar.&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Pengumuman_Jadwal_SKB_.pdf\" target=\"_blank\"><span style=\"color:#ff0000\">Pengumuman Jadwal SKB</span></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Lampiran_I_Tata_Tertib_SKB.pdf\" target=\"_blank\"><span style=\"color:#ff0000\">Lampiran I Tata Tertib Pelaksanaan SKB</span></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Lampiran_II_Jadwal_SKB_.pdf\" target=\"_blank\"><span style=\"color:#ff0000\">Lampiran II Jadwal SKB</span></a></p>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Lampiran_III_Jadwal_SKB.pdf\" target=\"_blank\"><span style=\"color:#ff0000\">Lampiran III Jadwal SKB</span></a></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n', '', 'Rabu', '2020-08-19', '16:40:51', 'jadwal_skbOK_.jpg', 4325, '', 'Y', '');
INSERT INTO `berita` VALUES (36, 2, 'admin', 'Sosialisasi Penyusunan dan Penilaian SKP Jabatan Guru', '', '', 'sosialisasi-penyusunan-dan-penilaian-skp-jabatan-guru', 'Y', 'N', 'Y', '<p>Badan Kepegawaian dan Pengembangan Sumber Daya Manusia Kabupaten Ciamis menyelenggarakan Sosialisasi Penyusunan dan Penilaian Sasaran Kinerja Pegawai bagi Jabatan Fungsional Tertentu (Guru) Di Lingkungan Pemerintah Kabupaten Ciamis tanggal 14 sampai 17 September 2020 bertempat di Aula BKPSDM. Acara tersebut diikuti oleh perwakilan dari Sekolah Menengah Pertama se Kabupaten Ciamis. Kegiatan tersebut bertujuan untuk menerangkan tentang tata cara pembuatan SKP yang berbentuk aplikasi berbasis online sehingga dalam pembuatan SKP tersebut dapat seragam dan mudah dalam penggunaannya.&nbsp;</p>\r\n', '', 'Rabu', '2020-09-16', '11:38:19', 'DSCF7166_02.JPG', 1357, '', 'Y', '');
INSERT INTO `berita` VALUES (37, 3, 'admin', 'Pemberitahuan Seleksi JPT Pratama Sekretaris Daerah Kabupaten Ciamis 2020', '', '', 'pemberitahuan-seleksi-jpt-pratama-sekretaris-daerah-kabupaten-ciamis-2020', 'Y', 'N', 'Y', '<p>Pemberitahuan Seleksi Terbuka Jabatan Pimpinan Tinggi Pratama Sekretaris Daerah di Lingkungan Pemerintah Kabupaten Ciamis Nomor : 800/01 -Pansel/2020 tanggal 25 September 2020.</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Pengumuman_Seleksi_Terbuka_JPT_Pratama_Sekda_Kab_Ciamis_2020.pdf\" target=\"_blank\"><input type=\"button\" value=\"Download\" /></a></p>\r\n\r\n<p>Formulir Persyaratan Selter JPT Sekda Kabupaten Ciamis 2020.</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Formulir_selter_jpt_Sekda_2020_September_2020_FIX.docx\" target=\"_blank\"><input type=\"button\" value=\"Download\" /></a></p>\r\n', '', 'Jumat', '2020-10-02', '09:12:14', 'gambar_lelang.jpg', 553, '', 'Y', '');
INSERT INTO `berita` VALUES (38, 3, 'admin', 'Pengumuman SKB masa Pandemi Covid-19 dan Pembagian Meja Registrasi', '-', '', 'pengumuman-skb-masa-pandemi-covid19-dan-pembagian-meja-registrasi', 'Y', 'N', 'Y', '<p>Pengumuman Nomor&nbsp;: 821/010/Panselda.1/2020 Tentang Kewajiban Peserta Seleksi Kompetensi Bidang Calon Pegawai&nbsp;Negeri Sipil Pada Masa Pandemi Covid-19</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Pengumuman_SKB_pada_Masa_Pandemi_Covid-19.pdf\" target=\"_blank\"><input type=\"button\" value=\"Download\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pembagian Peserta SKB Per Meja Registrasi</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Pembagian_Peserta_SKB_Per_Meja_Regsitrasi.pdf\" target=\"_blank\"><input type=\"button\" value=\"Download\" /></a></p>\r\n', '', 'Senin', '2020-09-28', '12:41:52', 'pembagian_meja_regsitrasi.jpg', 1677, '', 'Y', '');
INSERT INTO `berita` VALUES (39, 2, 'admin', 'Penyampaian Scan Berkas Persyaratan Secara Online Seleksi Terbuka JPT Pratama Sekda Kabupaten Ciamis', '', '', 'penyampaian-scan-berkas-persyaratan-secara-online-seleksi-terbuka-jpt-pratama-sekda-kabupaten-ciamis', 'Y', 'N', 'Y', '<p>Pengumuman Nomor : 811.1/05-Pansel/2020 Tentang Penyampaian Scan Berkas Persyaratan Secara Online Seleksi Terbuka Jabatan Pimpinan Tinggi Pratama Sekretaris Daerah Kabupaten Ciamis.</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Pengumuman_Pansel_JPT_Kab__Ciamis_No__05_.pdf\" target=\"_blank\"><input type=\"button\" value=\"Download\" /></a></p>\r\n', '', 'Jumat', '2020-10-02', '11:04:24', 'pengumuman_scan_berkas1.jpg', 713, '', 'Y', '');
INSERT INTO `berita` VALUES (40, 3, 'admin', 'Perpanjangan Waktu Penerimaan Lamaran Seleksi Terbuka JPT Pratama Sekda Kabupaten Ciamis', '-', '', 'perpanjangan-waktu-penerimaan-lamaran-seleksi-terbuka-jpt-pratama-sekda-kabupaten-ciamis', 'Y', 'N', 'Y', '<p>Pengumaman Nomor :811.1/07-Pansel/2020 tentang Perpanjangan Waktu Pendaftaran Penerimaan Lamaran dan Berkas Persyaratan Seleksi Terbuka Jabatan Pimpinan Tinggi Pratama Sekretaris Daerah Kabupaten Ciamis&nbsp;</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Perpanjangan_masa_pendaftaran_Selter_JPT_Pratama_Sekda_Kab__Ciamis.pdf\" target=\"_blank\">DOWNLOAD</a></p>\r\n', '', 'Senin', '2020-10-05', '08:49:23', 'GAMBAR_BACKGROUND.jpg', 1110, '', 'Y', '');
INSERT INTO `berita` VALUES (41, 2, 'admin', 'Tindak Lanjut Pengisian JPT Pratama Sekda Menunggu Pertimbangan KASN', '-', '', 'tindak-lanjut-pengisian-jpt-pratama-sekda-menunggu-pertimbangan-kasn', 'Y', 'N', 'Y', '<p>CIAMIS - Pemerintah Kabupaten Ciamis saat ini sedang menyelenggarakan tahapan seleksi terbuka Jabatan Pimpinan Tinggi Sekretaris Daerah. Pembukaan pendaftaran peserta seleksi JPT Sekda dilaksanakan sejak tanggal 28 September sampai dengan 2 Oktober 2020 sesuai dengan pengumuman Panitia Seleksi Nomor 811.1/02-Pansel/2020 tanggal 25 September 2020. Dikarenakan belum ada pelamar, sesuai ketentuan Surat Edaran Menteri PAN&amp;RB Nomor 52 Tahun 2020, telah dilaksanakan perpanjangan waktu pendaftaran selama 3 hari kerja sejak tanggal 5 sampai dengan 7 Oktober 2020 sesuai dengan Surat Pengumuman Panitia Seleksi Nomor 811.1/07-Pansel/2020. Namun demikian, sampai batas waktu perpanjangan berakhir pun belum ada pelamar yang mendaftar. Terkait dengan kondisi ini, Kepala BKPSDM Kabupaten Ciamis Dra. Hj. Yeyet Trisnayati T dalam keterangannya menyatakan &nbsp;bahwa BKPSDM dan Pansel telah berupaya untuk menjaring pelamar dalam seleksi terbuka JPT Sekretaris Daerah dengan mengumumkan pendaftaran baik melalui media cetak (Kabar Priangan dan Radar Priangan) maupun media online termasuk menyampaikan surat pemberitahuan ke SKPD dan Pemerintah Kabupaten/Kota lain. Namun tetap saja tidak ada kandidat yang mendaftarkan diri.<br />\r\nMenindaklanjuti hal tersebut, BKPSDM Kabupaten Ciamis telah berkoordinasi dengan Panitia Seleksi untuk mengevaluasi dan menentukan langkah selanjutnya terkait pelaksanaan seleksi terbuka pengisian JPT Sekda yang tengah berjalan. Koordinasi dengan Panitia Seleksi membahas beberapa hal yaitu yang pertama terdapat perbedaan pendapat terkait perpanjangan pendaftaran seleksi terbuka JPT. Dalam Peraturan Menpan&amp;RB Nomor 15 Tahun 2019 antara lain dinyatakan bahwa perpanjangan waktu pendaftaran seleksi terbuka JPT dapat dilakukan paling banyak 2 (dua) kali. Sementara dalam Surat Edaran Menteri PAN&amp;RB Nomor 52 Tahun 2020 tidak secara tegas disebutkan berapa kali perpanjangan tetapi hanya menyatakan dapat diperpanjang selama tiga hari kerja. Yang kedua, menindaklanjuti hal tersebut, untuk tertib administrasi dan tertib prosedur serta menjaga agar rangkaian seleksi JPT Sekda senantiasa berada dalam koridor peraturan yang berlaku, Panitia Seleksi memandang perlu dilaksanakan pengkajian dan konsultasi terlebih dahulu dengan KASN.<br />\r\nBKPSDM selaku Sekretariat Panitia Seleksi akan segera menindaklanjuti dengan menyampaikan konsultasi tertulis ke Komisi Aparatur Sipil Negara sebagai bahan pertimbangan lebih lanjut dalam pelaksanaan seleksi terbuka JPT Sekretaris Daerah Kabupaten Ciamis.</p>\r\n', '-', 'Kamis', '2020-10-08', '15:19:22', 'selter_jpt_ok1.jpg', 849, '', 'Y', '');
INSERT INTO `berita` VALUES (42, 2, 'admin', 'Laporan Hasil SKB CPNS Formasi Tahun 2019 Lokasi Kota Tasikmalaya', '', '', 'laporan-hasil-skb-cpns-formasi-tahun-2019-lokasi-kota-tasikmalaya', 'Y', 'N', 'Y', '<p>Laporan Hasil Seleksi Kompetensi Bidang CPNS Kabupaten Ciamis Lokasi Gd. Restu Sky STMIK Tasikmalaya</p>\r\n\r\n<p>Sesi 1&nbsp; &nbsp; &nbsp;<a href=\"https://bkpsdm.ciamiskab.go.id/download/file/HASIL_SKB_SESI_1.pdf\" target=\"_blank\"><input type=\"button\" value=\"Download\" /></a></p>\r\n\r\n<p>Sesi 2&nbsp; &nbsp; &nbsp;<a href=\"https://bkpsdm.ciamiskab.go.id/download/file/HASIL_SKB_SESI_2.pdf\" target=\"_blank\"><input type=\"button\" value=\"Download\" /></a></p>\r\n\r\n<p>Sesi 3&nbsp; &nbsp; &nbsp;<a href=\"https://bkpsdm.ciamiskab.go.id/download/file/HASIL_SKB_SESI_3.pdf\" target=\"_blank\"><input type=\"button\" value=\"Download\" /></a></p>\r\n\r\n<p>Tilok Luar Kota Tasikmalaya&nbsp;&nbsp;<a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Hasil_SKB_Tilok_Luar_Kota_Tasikmalaya.pdf\" target=\"_blank\"><input type=\"button\" value=\"Download\" /></a></p>\r\n', '', 'Kamis', '2020-10-22', '08:15:09', 'HASIL_NILAI_SKB_KOTA_TASIKMALAYA.jpg', 2231, '', 'Y', '');
INSERT INTO `berita` VALUES (43, 2, 'admin', 'Pelantikan dan Pengambilan Sumpah Jabatan Pejabat Administrator dan Pengawas di Kabupaten Ciamis', '', '', 'pelantikan-dan-pengambilan-sumpah-jabatan-pejabat-administrator-dan-pengawas-di-kabupaten-ciamis', 'Y', 'N', 'Y', '<p>Sesuai Lampiran Keputusan Bupati Ciamis Nomor 821.2/Kpts.901/BKPSDM.3/2020 Tanggal 9 Oktober 2020 Tentang Pengangkatan dan Pemindahan Dalam Jabatan Administrator dan Jabatan Pengawas di Lingkungan Pemerintah Kabupaten Ciamis.</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/pelantikan_jabatan_administrator_dan_pengawas_rsud_kawali.pdf\" target=\"_blank\"><input type=\"button\" value=\"Download\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 'Senin', '2020-10-12', '09:35:04', 'foto_pelantikan_ok.jpg', 1105, '', 'Y', '');
INSERT INTO `berita` VALUES (44, 2, 'admin', 'Tahapan Pengisian Sekretaris Daerah Kabupaten Ciamis Dilanjutkan', '', '', 'tahapan-pengisian-sekretaris-daerah-kabupaten-ciamis-dilanjutkan', 'Y', 'N', 'Y', '<p>CIAMIS - &nbsp;Sebagaimana kita ketahui bersama bahwa tahapan seleksi terbuka pengisian JPT Sekretaris Daerah Kabupaten Ciamis sampai dengan masa perpanjangan pendaftaran tidak terdapat pelamar. Adapun ketentuan terkait masa perpanjangan pendaftaran dalam seleksi terbuka Sekretaris Daerah telah dikoordinasikan dan dikonsultasikan dengan Komisi Aparatur Sipil Negara (KASN). KASN menyatakan bahwa pelaksanaan seleksi terbuka pengisian JPT dalam masa pandemi covid-19 mengacu pada Surat Edaran Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Nomor 52 Tahun 2020 dimana didalamnya antara lain mengatur bahwa jika dalam waktu 5 (lima) hari kerja setelah dilaksanakan pengumuman seleksi terbuka belum diperoleh pelamar yang memenuhi syarat minimal 3 (tiga) orang calon, maka dapat dilakukan perpanjangan waktu pengumuman selama 3 (tiga) hari kerja. Selanjutnya, jika setelah dilakukan perpanjangan pengumuman belum diperoleh 3 (tiga) calon yang memenuhi syarat tapi sudah diperoleh pendaftar 2 (dua) orang yang memenuhi syarat maka proses seleksi dapat dilanjutkan pada tahap selanjutnya. Dengan demikian maka ketika tidak terdapat pelamar sesuai ketentuan tersebut maka seleksi terbuka tidak dapat dilanjutkan.<br />\r\nTerkait seleksi terbuka Sekretaris Daerah Kabupaten Ciamis, KASN dalam suratnya Nomor B-3123/KASN/10/2020 tanggal 16 Oktober 2020 hal Rekomendasi Pembatalan Seleksi Terbuka dan Rencana Pengisian Jabatan Pimpinan Tinggi (JPT) Pratama Sekretaris Daerah Kabupaten Ciamis melalui Uji Kompetensi Pejabat Pimpinan Tinggi (PPT) Pratama di Lingkungan Pemerintah Kabuapten Ciamis dengan merujuk pada Surat Edaran Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Nomor B.96.1/M.SM.99/2017 Tanggal 31 Juli 2017 perihal Tata Cara Pengisian JPT Pratama Sekretaris Daerah Kabupaten/Kota, antara lain menyatakan bahwa apabila pengisian jabatan Sekretaris Daerah Kabupaten/Kota secara terbuka tidak terdapat pelamar yang memenuhi syarat maka Bupati/Walikota (PPK) dapat melakukan rotasi/mutasi diantara pejabat pimpinan tinggi pratama (eselon II.b) melalui uji kompetensi. Calon Sekretaris Daerah berasal dari Pejabat Pimpinan Tinggi Pratama (eselon II.b) berjumah paling kurang 4 (empat) orang dengan usia paling tinggi 58 tahun pada saat ditetapkan dengan Keputusan Bupati/Walikota untuk menduduki JPT Pratama Sekretaris Daerah Kabupaten/Kota. Dalam surat tersebut juga KASN telah menyetujui rencana pengisian Sekretaris Daerah Kabupaten Ciamis melalui uji kompetensi JPT Pratama (eselon II.b) yang memenuhi syarat.<br />\r\nMenindaklanjuti Surat tersebut, pemerintah Kabupaten Ciamis akan melaksanakan pengisian jabatan Sekretaris Daerah dengan rotasi/mutasi JPT Pratama eselon II.b melalui uji kompetensi sesuai rekomendasi KASN. Adapun terkait jadwal pelaksanaannya akan dikoordinasikan lebih lanjut dengan panitia seleksi. Guna tertib administrasi dan tertib prosedur dalam pelaksanaannya, kami juga telah meminta dan mengundang tenaga ahli pendamping dari KASN untuk memberikan arahan dan hadir pada saat pelaksanaan uji kompetensi calon JPT Sekretaris Daerah.&nbsp;</p>\r\n', '', 'Kamis', '2020-10-22', '09:58:54', 'bu_kepala_ok_pisan.jpg', 1433, '', 'Y', '');
INSERT INTO `berita` VALUES (45, 2, 'admin', 'Hasil Akhir Penerimaan CPNS Pemerintah Kabupaten Ciamis Formasi Tahun 2019', '', '', 'hasil-akhir-penerimaan-cpns-pemerintah-kabupaten-ciamis-formasi-tahun-2019', 'Y', 'N', 'Y', '<p>Pengumuman Nomor :813/011/Panselda.1/2020 tentang Hasil Akhir Seleksi Penerimaan Calon Pegawai Negeri Sipil Di Lingkungan Pemerintah Kabupaten Ciamis Formasi Tahun 2019, berdasarkan Surat Kepala Badan Kepegawaian Negara selaku Ketua Tim Pelaksana Seleksi Nasional Pengadaan CPNS 2019 Nomor : K26-30/B6112/X/20.01 Tanggal 29 Oktober 2020 perihal Penyampaian Hasil Integrasi Nila SKD-SKB Pemerintah Kabupaten Ciamis Tahun 2019.</p>\r\n\r\n<p>Pengumuman Hasil Akhir Penerimaan CPNS Kabupaten Ciamis Formasi Tahun 2019&nbsp;<a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Pengumuman_Hasil_Akhir_Penerimaan_CPNS_Kabupaten_Ciamis_Formasi_Tahun_2019.pdf\" target=\"_blank\"><input type=\"button\" value=\"Pengumuman\" /></a></p>\r\n\r\n<p>Lampiran 1.a :&nbsp;<a href=\"https://bkpsdm.ciamiskab.go.id/download/file/HASIL_INTEGRASI_SKD_DAN_SKB_PENGADAAN_CPNS_2019.pdf\" target=\"_blank\"><input type=\"button\" value=\"Hasil Integrasi SKD dan SKB Pengadaan CPNS 2019\" /></a></p>\r\n\r\n<p>Lampiran 1.b :&nbsp;<a href=\"https://bkpsdm.ciamiskab.go.id/download/file/HASIL_INTEGRASI_SKD_DAN_SKB_PENGADAAN_CPNS_2019_RINCIAN.pdf\" target=\"_blank\"><input type=\"button\" value=\"Hasil Integrasi SKD dan SKB (Rincian) Pengadaan CPNS 2019\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 'Jumat', '2020-10-30', '09:53:43', 'HASIL_AHIR_PERIMAAN_CPNS_FORMASI_2019_.jpg', 7941, '', 'Y', '');
INSERT INTO `berita` VALUES (46, 2, 'admin', 'Uji Kompetensi Calon Sekda Ciamis Dimulai Hari Ini', '', '', 'uji-kompetensi-calon-sekda-ciamis-dimulai-hari-ini', 'Y', 'N', 'Y', '<p>Ciamis &ndash; 2 November 2020<br />\r\nSetelah melalui beberapa tahapan, mekanisme dan prosedur dalam pengisian JPT Sekretaris Daerah, uji kompetensi calon Sekretaris Daerah Kabupaten Ciamis dimulai hari ini Senin tanggal 2 November 2020 sampai dengan besok hari Selasa tanggal 3 November 2020 bertempat di Aula BKPSDM Kabupaten Ciamis. Untuk tahapan seleksi hari ini yaitu pelaksanaan assessment yang diselenggarakan oleh Tim asesor dari Universitas Padjajaran. Sedangkan besok, hari selasa, akan dilaksanakan uji kompetensi oleh Panitia Seleksi yang berasal dari unsur Pemerintah Provinsi Jawa Barat dan Tim UNPAD. Selain itu, dalam pelaksanaan seleksi pengisian JPT Sekda Ciamis juga kami telah mengundang unsur dari KASN untuk memberikan pendampingan dan arahan terkait mekanisme dan prosedur pelaksanaannya.<br />\r\n&nbsp;</p>\r\n', '', 'Senin', '2020-11-02', '10:37:18', 'Ujikon_Sekda.jpg', 1019, '', 'Y', '');
INSERT INTO `berita` VALUES (47, 2, 'admin', 'Penetapan Hasil Akhir Seleksi Pengisian Jabatan Sekretaris Daerah Kabupaten Ciamis Tahun 2020', '', '', 'penetapan-hasil-akhir-seleksi-pengisian-jabatan-sekretaris-daerah-kabupaten-ciamis-tahun-2020', 'Y', 'N', 'Y', '<p>Pengumuman Nomor : 800/07/Pansel/2020 Tentang Penetapan Hasil Akhir Seleksi Pengisian Jabatan Pimpinan Tinggi Pratama Sekretaris Daerah Kabupaten Ciamis Tahun 2020. Berdasarkan Berita Acara Rapat Panitia Seleksi Pengisian Jabatan Pimpinan Tinggi Pratama Sekretaris Daerah Kabupaten Ciamis Nomor 800/06/Pansel/2020 tanggal 4 November 2020 tentang penilaian dan pembahasan hasil Uji Kompetensi Seleksi Pengisian Jabatan Pimpinan Tinggi Pratama Sekretaris Daerah Kabupaten Ciamis dan Surat Ketua Komisi Aparatus Sipil Negara Nomor B-3409/KASN/11/2020 tanggal 10 November 2020 Hal Rekomendasi Hasil Uji Kompetensi Pejabat Pimpinan Tinggi (PPT) Pratama dalam rangka Pengisian Sekretaris Derah di Lingkungan Pemerintah Kabupaten Ciamis, bersama ini diumumkan. <a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Penetapan_Hasil_Akhir_Seleksi_Pengisian_JPT_Pratama_Sekretaris_Daerah_Kab__Ciamis.pdf\" target=\"_blank\"><input type=\"button\" value=\"Download\" /></a></p>\r\n', '', 'Selasa', '2020-11-10', '21:10:28', 'hasil_ahir_sekda.jpg', 1310, '', 'Y', '');
INSERT INTO `berita` VALUES (48, 3, 'admin', 'Himbauan dan Larangan Menghadapi Cuti Bersama dan Surat Edaran Perubahan Cuti Bersama 2020', '', '', 'himbauan-dan-larangan-menghadapi-cuti-bersama-dan-surat-edaran-perubahan-cuti-bersama-2020', 'Y', 'N', 'Y', '<p>Dipermaklumkan dengan hormat bahwa dalam rangka menghadapi Cuti Bersama, libur Hari Raya Natal Tahun 2020 dan Tahun Baru 2021 dimasa pandemi Covid-19 dengan ini diberitahukan kepada seluruh ASN Pemerintah Kabupaten Ciamis sebagai berikut</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/himbauan_larangan.pdf\" target=\"_blank\"><input name=\"UNDUH\" type=\"button\" value=\"Unduh\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Surat Edaran Nomor :800/1476/BKPSDM.5/2020 Tentang Hari Libur Nasional dan Perubahan Cuti Bersama Tahun 2020.</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Surat_Edaran_Hari_Libur_Nasional_dan_Cuti.pdf\" target=\"_blank\"><input type=\"button\" value=\"Unduh\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 'Selasa', '2020-12-08', '09:01:18', 'cuti_bersama_2020.jpg', 768, '', 'Y', '');
INSERT INTO `berita` VALUES (49, 2, 'admin', 'Hari Libur Nasional dan Cuti Bersama Tahun 2021', '', '', 'hari-libur-nasional-dan-cuti-bersama-tahun-2021', 'Y', 'N', 'Y', '<p>Disampaikan dengan hormat bahwa berdasarkan Keputusan Bersama Menteri Agama Nomor 642 Tahun 2020, Menteri Ketenagakerjaan Nomor 4 Tahun 2020, dan Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Nomor 4 Tahun 2020 tanggal 10 September 2020 tentang Hari Libur Nasional dan Cuti Bersama Tahun 2021.&nbsp;</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/LIBUR_NASIONAL_DAN_CUTI_BERSAMA_2021.pdf\" target=\"_blank\"><input type=\"button\" value=\"Download\" /></a></p>\r\n', '', 'Kamis', '2020-12-17', '14:02:45', 'CUTI_BERSAMA_2021.jpg', 1127, '', 'Y', '');
INSERT INTO `berita` VALUES (50, 2, 'admin', 'Sosialisasi Penerapan Aplikasi Dinamis', '', '', 'sosialisasi-penerapan-aplikasi-dinamis', 'Y', 'N', 'Y', '<p>Ciamis, 22 Desember 2020, Badan Kepegawaian dan Pengembangan Sumber Daya Manusia Kabupaten Ciamis bekerjasama dengan Kantor Regional III Badan Kepegawaian Negara Bandung bertempat di Aula BKPSDM mengadakan Sosialisasi Aplikasi Dinamis (Dokumen Dan Informasi Layanan ASN Kabupaten Ciamis), Kegiatan sosialisasi penerapan Aplikasi ini diikuti oleh Pejabat Pengawas pengelola Kepegawaian di masing-masing SKPD serta pelaksana pengelola kepegawaian di lingkungan Pemerintah Kabupaten Ciamis. Kegiatan sosialisasi ini dilaksanakan selama 3 (tiga) hari dibagi menjadi 2 (dua) sesi perhari, dimulai pada hari Selasa s/d Rabu tanggal 22 s/d 23 Desember 2020 dilanjutkan pada hari Senin tanggal 28 Desember 2020, dengan jumlah peserta sebanyak 305 (tiga ratus lima) orang.&nbsp;<br />\r\nTujuan Penerapan Aplikasi &ldquo;DINAMIS&rdquo; adalah Mempermudah dan mempercepat penyampaian usul layanan kepegawaian dari SKPD ke BKPSDM dengan Pemanfaatan teknologi&nbsp;&nbsp;informasi secara elektronik,&nbsp;Terbangunnya &ldquo;bankdata&rdquo; berupa tersedianya data elektronik pada setiap SKPD yang dapat digunakan oleh setiap ASN untuk seluruh layanan kepegawaian selama menjadi ASN dan&nbsp;Mempermudah pengelolaan arsip kepegawaian dalam bentuk digital sehingga diharapkan dapat mengefektifkan dan mengefisiensikan penelusuran dokumen dan penggunaan tempat penyimpanan tata naskah dinas.</p>\r\n', '', 'Selasa', '2020-12-22', '13:44:29', 'sosialisasi_dinamis_ok.jpg', 6161, '', 'Y', '');
INSERT INTO `berita` VALUES (51, 3, 'admin', 'Pemberitahuan Seleksi Terbuka Jabatan Pimpinan Tinggi Pratama di Lingkungan Pemerintah Kabupaten Cia', '', '', 'pemberitahuan-seleksi-terbuka-jabatan-pimpinan-tinggi-pratama-di-lingkungan-pemerintah-kabupaten-cia', 'Y', 'N', 'Y', '<p>Berdasarkan Undang-Undang Nomor 5 Tahun 2014 tentang Aparatur Sipil Negara, Peraturan Pemerintah No 11 Tahun 2017 tentang Manajemen Pegawain Negeri Sipil sebagaimana telah diubah dengan Peraturan Pemerintah Nomor 17 Tahun 2020 tentang Perubahan Peraturan Pemerintah Nomor 11 Tahun 2017 tentang Manajemen Pegawai Negeri Sipil, Peraturan Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Republik Nomor 15 Tahun &nbsp;2019 tentang Pengisian Jabatan Pimpinan Tinggi secara terbuka dan kompetitif di Lingkungan Instansi Pemerintah dan Surat Ketua Komisi Aparatur Sipil Negara Nomor B-778/KASN/2/2021 tanggal 17 Februari 2021 hal Rekomendasi Rencana Seleksi Terbuka Jabatan Pimpinan Tinggi (JPT) Pratama di Lingkungan Pemerintah Kabupaten Ciamis, kami memberikan kesempatan kepada Pegawai Negeri Sipil yang berminat dan memenuhi persyaratan yang ditentukan untuk mengikuti Seleksi Terbuka Jabatan Pimpinan Tinggi Pratama.</p>\r\n\r\n<p>Pengumunan Seleksi Terbuka JPT Pratama Kabupaten Ciamis 2021&nbsp; &nbsp;&nbsp;<a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Pengumunan_Seleksi_Terbuka_JPT_Pratama_Kabupaten_Ciamis_2021.pdf\" target=\"_blank\"><input type=\"button\" value=\"Download\" /></a></p>\r\n\r\n<p>Formulir Pengumuman Selter 2021&nbsp; &nbsp;<a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Formulir_Pengumuman_Selter_2021_FIX.docx\" target=\"_blank\"><input type=\"button\" value=\"Download\" /></a></p>\r\n', '', 'Senin', '2021-02-22', '09:04:05', 'BACKGROUND2.JPG', 1493, '', 'Y', '');
INSERT INTO `berita` VALUES (52, 3, 'admin', 'Hasil Seleksi Administrasi Seleksi Terbuka JPT Pratama Di Kabupaten Ciamis Tahun 2021', '', '', 'hasil-seleksi-administrasi-seleksi-terbuka-jpt-pratama-di-kabupaten-ciamis-tahun-2021', 'Y', 'N', 'Y', '<p>Berdasarkan hasil pemeriksaan dan verifikasi terhadap berkas persyaratan pelamar sesuai ketentuan dalam Pengumuman Panitia Seleksi Terbuka Jabatan Pimpinan Tinggi Pratama Nomor : 811.1 /02 - Pansel/2021 dan Berita Acara Panitia Seleksi Terbuka Jabatan Pimpinan Tinggi Pratama di Lingkungan Pemerintah Kabupaten Ciamis Nomor : 800/ 04 -Pansel/ 2021 tentang Penetapan Hasil Seleksi Administrasi Seleksi Terbuka Jabatan Pimpinan Tinggi Pratama di Lingkungan Pemerintah Kabupaten Ciamis Tahun 2021.</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Pengumuman_Hasil_Seleksi_Administrasi_Selter_JPTP_Kab_Ciamis.pdf\"><input type=\"button\" value=\"DOWNLOAD\" /></a></p>\r\n', '', 'Selasa', '2021-03-02', '09:24:44', 'BACKROUN_JADI.jpg', 1980, '', 'Y', '');
INSERT INTO `berita` VALUES (53, 2, 'admin', 'Penyerahan SK CPNS Formasi Ikatan Dinas Tahun 2020', '', '', 'penyerahan-sk-cpns-formasi-ikatan-dinas-tahun-2020', 'Y', 'N', 'Y', '<p>Ciamis ,03 maret 2021 bertempat di kantor Badan Kepegawaian dan Pengembangan Sumber Daya Manusia Kabupaten Ciamis diadakan penyerahaan SK CPNS Formasi ikatan Dinas dari Lulusan&nbsp;Sekolah Tinggi Transportasi Darat sebanyak 1 (satu) Orang Berdasarkan Keputusan Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Nomor : 806 Tahun 2020 Tentang Penetapan Kebutuhan Pegawai Negeri Sipil dari Lulusan Sekolah Tinggi Transportasi Darat di Lingkungan Pemerintah Kabupaten Ciamis Tahun Anggaran 2020,Penyerahan SK oleh Bapak PLT Kepala Dinas Perhubungan di dampingi Oleh Bapak Sekretaris Badan Kepegawaian Dan Pengembangan Sumber Daya Manusia Beserta Bapak Kepala Bidang Pengadaan dan Pemberhentian dan Informasi Kepegawaian dan Bapak Kasubid Pengadaan dan Pemberhentian.</p>\r\n', '', 'Rabu', '2021-03-03', '14:20:10', 'penyerahan_sk.jpg', 1339, '', 'Y', '');
INSERT INTO `berita` VALUES (54, 3, 'admin', 'Pengumuman Penetapan Hasil Akhir JPT Pratama Kabupaten Ciamis Tahun 2021', '', '', 'pengumuman-penetapan-hasil-akhir-jpt-pratama-kabupaten-ciamis-tahun-2021', 'Y', 'N', 'Y', '<p>Berdasarkan Berita Acara Sidang Panitia Seleksi dalam rangka Penetapan Hasil Akhir Seleksi Terbuka Jabatan Pimpinan Tinggi Pratama di Lingungan Pemerintah Kabupaten Kabupaten Ciamis Nomor 800/09/Pansel/2021 tanggal 12 Maret 2021 bersama ini kami umumkan sebagai berikut:</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Pengumuman_hasil_akhir_Seleksi_Terbuka_Jabatan_Pimpinan_Tinggi_Pratama_Kab_Ciamis_2021_03.pdf\" target=\"_blank\"><input type=\"button\" value=\"Download\" /></a></p>\r\n', '', 'Senin', '2021-03-15', '15:05:59', 'pengumuman_jpt_15_03_2021.jpg', 2681, '', 'Y', '');
INSERT INTO `berita` VALUES (55, 2, 'admin', 'Latsar CPNS Gol III Angkatan I DAN II DI Lingkungan Pemerintah Kab. Ciamis TH 2021', '', '', 'latsar-cpns-gol-iii-angkatan-i-dan-ii-di-lingkungan-pemerintah-kab-ciamis-th-2021', 'Y', 'N', 'Y', '<p>Ciamis 5 April 2021 hari senin bertempat di Aula Badan Kepegawaian dan Pengembangan Sumber Daya Manusia di adakan Pembukaan Pelatihan Dasar (Latsar) CPNS Pemerintah Kabupaten Ciamis Tahun 2021 Golongan III Angkatan I dan II Yang di buka langsung oleh Bapak Bupati Ciamis Dr.H.Herdiat Sunarya Kegiatan Pelatihan Dasar Cpns ini di mulai Tanggal 5 April sampai dengan 24 April 2021,Off Campus Tanggal 25 April sampai dengan 8 Juni 2021 dan On Campus Tanggal 9 Juni sampai dengan 11 Juni 2021. Pelatihan Dasar CPNS ini dilaksanakan secara Klasikal selama kurang lebih 21 (Dua Puluh Satu) hari dan diasramakan di BKPSDM Kabupaten Ciamis Jl. Sadananya No.27 serta Non Klasikal selama kurang lebih 30 (Tiga Puluh) hari kerja di tempat kerja masing-masing , Jumlah Peserta Pelatihan Dasar CPNS Golongan III Angkatan I Dan II di Lingkungan Pemerintah Kabupaten Ciamis sebanyak 80 (Delapan Puluh) orang yang telah di tes Swab.</p>\r\n', '', 'Senin', '2021-04-05', '16:11:17', 'UPLOAD_LATSAR.jpg', 2449, 'informasi', 'Y', '');
INSERT INTO `berita` VALUES (56, 2, 'admin', 'Pembukaan Bimtek Dan Ujian Nasional Sertifikasi Pengadaan Barjas Kab.Ciamis ', '', '', 'pembukaan-bimtek-dan-ujian-nasional-sertifikasi-pengadaan-barjas-kabciamis-', 'Y', 'N', 'Y', '<p>Ciamis,&nbsp;8 Juni 2021 hari selasa bertempat di Aula Badan Kepegawaian dan Pengembangan Sumber Daya Manusia Kabupaten Ciamis diadakan Pembukaan Bimbingan Teknis Dan Ujian Nasional Sertifikasi Pengadaan Barang dan Jasa Pemerintah di Lingkungan Pemerintah Kabupaten Ciamis oleh Bapak Bupati Ciamis Dr. H. Herdiat Sunarya yang di ikuti sebanyak 41 (Empat Puluh Satu ) Orang Peserta Bimtek dan ujian dilaksanakan dari tanggal 8 sampai dengan 24 Juni 2021 dengan jadwal&nbsp;<br />\r\ntanggal 8 Juni 2021 pembukaan, pembekalan dan e-learning di BKPSDM Kabupaten Ciamis,<br />\r\ntanggal 9 sampai dengan 17 Juni 2021 e-learning di unit kerja masing-masing,<br />\r\ntanggal 21 sampai dengan 23 Juni 2021 pembelajaran tatap muka di BKPSDM Kabupaten Ciamis,<br />\r\ntanggal 24 Juni 2021 ujian di BKPSDM Kabupaten Ciamis.</p>\r\n', '', 'Selasa', '2021-06-08', '11:18:32', 'update_barjas1.jpg', 1018, 'informasi', 'Y', '');
INSERT INTO `berita` VALUES (57, 2, 'admin', 'Surat Edaran Libur Nasional dan Cuti Bersama 2021', '', '', 'surat-edaran-libur-nasional-dan-cuti-bersama-2021', 'Y', 'N', 'Y', '<p>Surat Edaran Nomor : 800/873/BKPSDM.5/2021 Tentang Perubahan Kedua Atas Keputusan Bersama Menteri Agama, Menteri Ketenagakerjaan dan Menteri Pendayagunaan Aparatur Negera dan reformasi Birokrasi Nomor 642 Tahun 2020, Nomor 4 Tahun 2020, nomor 4 Tahun 2020 tentang Hari Libur Nasional dan Cuti Bersama Tahun 2021.&nbsp;<a href=\"https://bkpsdm.ciamiskab.go.id/download/file/PERUBAHAN_CUTI_BERSAMA_TAHUN_2021.pdf\" target=\"_blank\">Download</a><br />\r\n&nbsp;</p>\r\n', '', 'Rabu', '2021-06-30', '11:31:31', 'cover_cuti_bersama_2021.jpg', 2116, 'informasi', 'Y', '');
INSERT INTO `berita` VALUES (58, 3, 'admin', 'Pengumuman Penerimaan Pegawai ASN Tahun 2021', '', '', 'pengumuman-penerimaan-pegawai-asn-tahun-2021', 'Y', 'N', 'Y', '<p>Pengumuman Bupati Ciamis Nomor :821/600/BKPSDM.5/2021 Tentang Penerimaan Pegawai Aparatur Sipil Negara di Lingkungan Pemerintah Kabupaten Ciamis Tahun Anggaran 2021<br />\r\nBerdasarkan Keputusan Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Nomor 499 Tahun 2021 tanggal 21 April 2021 tentang Penetapan Kebutuhan Pegawai Aparatur Sipil Negara di Lingkungan Pemerintah Kabupaten Ciamis Tahun Anggaran 2021 dan Keputusan Bupati Ciamis Nomor 599 Tanggal 28 Juni 2021 Tentang Penetapan Kebutuhan Pegawai Aparatur Sipil Negara di Lingkungan Pemerintah Kabupaten Ciamis Tahun Anggaran 2021, dibuka kesempatan bagi Putra/Putri terbaik Warga Negara Republik Indonesia yang berminat menjadi Pegawai Aparatur Sipil Negara (ASN).</p>\r\n\r\n<p><strong><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/PENGUMUMAN_PEGAWAI_ASN_2021.pdf\" target=\"_blank\">Pengumuman</a>&nbsp; &nbsp; atau <a href=\"https://bit.ly/3xaIu0g\" target=\"_blank\">Pengumuman</a></strong></p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/PENGUMUMAN_PEGAWAI_ASN_2021_-_LAMPIRAN_opt.pdf\" target=\"_blank\"><strong>Lampiran</strong></a>&nbsp; &nbsp;atau&nbsp; &nbsp;<strong><a href=\"https://bit.ly/3jte9WT\" target=\"_blank\">Lampiran</a></strong></p>\r\n\r\n<p><a href=\"https://bit.ly/3wdxMop\" target=\"_blank\"><strong>Contoh Surat Lamaran, Surat Pernyataan dan Surat Disabilitas</strong></a></p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Kepmenpan_RB_No__980_Tahun_2021.pdf\" target=\"_blank\"><strong>Kepmenpan RB No. 980 Tahun 2021 tentang Persyaratan STR</strong></a>&nbsp; atau&nbsp;&nbsp;<a href=\"https://bit.ly/3AdS7NO\" target=\"_blank\"><strong>Unduh</strong></a></p>\r\n', '', 'Senin', '2021-08-02', '07:49:40', 'cover_sscasn.jpg', 16920, 'informasi', 'Y', '');
INSERT INTO `berita` VALUES (59, 3, 'admin', ' Pelantikan  Di Lingkungan Pemerintah Kabupaten Ciamis Tahun 2021', '', '', '-pelantikan--di-lingkungan-pemerintah-kabupaten-ciamis-tahun-2021', 'Y', 'Y', 'Y', '<p>Ciamis 02 Agustus 2021 hari senin bertempat di Aula Badan Kepegawaian dan Pengembangan Sumber Daya Manusia di adakan acara Pelantikan Sesuai Lampiran Keputusan Bupati Ciamis Nomor 821.2/Kpts.661/Bkpsdm.3/2021 Tanggal 30 Juli 2021 Tentang Pengangkatan, Pemindahan Dan Pengukuhan Dalam Jabatan Administrator Dan Jabatan Pengawas Di Lingkungan Pemerintah Kabupaten Ciamis.</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/PELANTIKAN_TGL_02-08-2021.pdf\">Download</a></p>\r\n', 'Pelantikan', 'Senin', '2021-08-02', '12:14:59', 'photo_pelantikan_bahan_upload_web.jpg', 2054, 'aparatur,informasi', 'Y', '');
INSERT INTO `berita` VALUES (60, 3, 'admin', 'Pengumuman Hasil Seleksi Administrasi Pegawai ASN Tahun 2021', '', '', 'pengumuman-hasil-seleksi-administrasi-pegawai-asn-tahun-2021', 'Y', 'N', 'Y', '<p>Pengumuman Nomor : 821/001/Panselda.1/2021 Tentang Hasil Seleksi Administrasi Pelaksanaan Kegiatan Penerimaan Pegawai Aparatur Sipil Negara (ASN) Kabupaten Ciamis Tahun Anggaran 2021. Berdasarkan Peraturan Menteri Pendayagunaan Aparatur Sipil Negara dan Reformasi Birokrasi Republik Indonesia Nomor 27 Tahun 2021 Tentang Pengadaan Pegawai Negeri Sipil Pasal 32 Ayat (3) menyatakan bahwa Panitia seleksi instansi harus mengumumkan hasil seleksi administrasi secara terbuka.</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Pengumuman_Seleksi_Administrasi_2021.pdf\" target=\"_blank\">Pengumuman</a></p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Daftar_Pelamar_Seleksi_Administrasi_Lulus.pdf\" target=\"_blank\">Lampiran Hasil Seleksi&nbsp; Administrasi Lulus</a></p>\r\n', '', 'Senin', '2021-08-02', '15:12:25', 'PENGUMUMAN_SELEKSI_ADMINISTRASI.jpg', 20444, '', 'Y', '');
INSERT INTO `berita` VALUES (61, 3, 'admin', 'Pengumuman Hasil Masa Sanggah CASN Ciamis 2021', '', '', 'pengumuman-hasil-masa-sanggah-casn-ciamis-2021', 'Y', 'N', 'Y', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">PENGUMUMAN</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">NOMOR : 821/002/Panselda.1/2021</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">TENTANG</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">HASIL MASA SANGGAH</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">PENERIMAAN PEGAWAI APARATUR SIPIL NEGARA (ASN) </span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12.0pt\"><span style=\"color:black\">KABUPATEN CIAMIS TAHUN ANGGARAN 2021</span></span></p>\r\n\r\n<p><span style=\"font-size:12.0pt\"><span style=\"color:black\">Menindaklanjuti Pengumuman Nomor : 821/001/Panselda.1/2021 tentang Hasil Seleksi Administrasi Pelaksanaan Penerimaan Pegawai Aparatur Sipil Negara (ASN) Kabupaten Ciamis Tahun Anggaran 2021. Berkenaan hal tersebut, dengan ini kami umumkan hasil Masa Sanggah Penerimaan Pegawai Aparatur Sipil Negara (ASN) Kabupaten Ciamis Tahun Anggaran 2021 sebagai berikut :</span></span></p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Pengumuman_Hasil_Masa_Sanggah.pdf\" target=\"_blank\"><span style=\"color:#0000ff\"><span style=\"font-size:12.0pt\">Pengumuman</span></span></a></p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Daftar_Pelamar_MS.pdf\" target=\"_blank\"><span style=\"color:#0000ff\"><span style=\"font-size:12.0pt\">Lampiran</span></span></a></p>\r\n', '', 'Minggu', '2021-08-15', '15:50:34', 'Hasil_masa_sanggah.jpg', 8653, '', 'Y', '');
INSERT INTO `berita` VALUES (62, 3, 'admin', 'Jadwal Seleksi Kompetensi Dasar ASN Kabupaten Ciamis 2021', '', '', 'jadwal-seleksi-kompetensi-dasar-asn-kabupaten-ciamis-2021', 'Y', 'N', 'Y', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"color:black\">PENGUMUMAN</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:black\">NOMOR : 821/003/Panselda.1/2021</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:black\">TENTANG</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:black\">JADWAL SELEKSI KOMPETENSI DASAR (SKD)</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:black\">PENGADAAN PEGAWAI APARATUR SIPIL NEGARA (ASN) </span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:11.0pt\"><span style=\"color:black\">KABUPATEN CIAMIS TAHUN ANGGARAN 2021</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:black\">Berdasarkan</span><span style=\"color:black\"> Pengumuman Panitia Pelaksana Kegiatan Seleksi Penerimaan Pegawai Aparatur Sipil Negara (ASN) Kabupaten Ciamis Tahun Anggaran 2021 Nomor 821/001/Panselda.1/2021 Tanggal 2 Agustus 2021 tentang Hasil Seleksi Administrasi Pelaksanaan Kegiatan Penerimaan Pegawai Aparatur Sipil Negara (ASN) Kabupaten Ciamis Tahun Anggaran 2021, serta Pengumuman Panitia Pelaksana Kegiatan Seleksi Penerimaan Pegawai Aparatur Sipil Negara (ASN) Kabupaten Ciamis Tahun Anggaran 2021 Nomor 821/002/Panselda.1/2021 Tanggal 15 Agustus 2021 tentang Hasil Masa Sanggah Penerimaan Pegawai Aparatur Sipil Negara (ASN) Kabupaten Ciamis Tahun Anggaran 2021, antara lain disampaikan bahwa peserta lulus seleksi administrasi dan berhak mengikuti Seleksi Kompetensi Dasar (SKD) setelah selesai masa sanggah sebanyak 4.181 orang.</span></p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"https://bit.ly/2X2fESz\" target=\"_blank\"><span style=\"color:black\">PENGUMUMAN</span></a></p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"https://bit.ly/3l5TRBU\" target=\"_blank\"><span style=\"color:black\">LAMPIRAN I</span></a></p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"https://bit.ly/3ncJ8bG\" target=\"_blank\"><span style=\"color:black\">LAMPIRAN II</span></a></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n', '', 'Rabu', '2021-09-08', '10:23:27', 'PENGUMUMAN_SKD.jpg', 21729, '', 'Y', '');
INSERT INTO `berita` VALUES (63, 3, 'admin', 'Pengumuman Pembagian Meja Registrasi SKD ASN Tahun 2021', '', '', 'pengumuman-pembagian-meja-registrasi-skd-asn-tahun-2021', 'Y', 'N', 'Y', '<p>Pengumuman&nbsp;pembagian meja registrasi bagi peserta SKD Penerimaan Aparatus Sipil Negara (ASN) Kabupaten Ciamis Tahun Anggaran 2021</p>\r\n\r\n<p>Pengumuman&nbsp;<a href=\"https://bit.ly/3zHVU4A\" target=\"_blank\"><input type=\"button\" value=\"Download\" /></a></p>\r\n\r\n<p>Catatan:&nbsp;</p>\r\n\r\n<p>Membawa Kartu Peserta Ujian CASN Tahun 2021 berwarna&nbsp;<br />\r\nMembawa e-KTP asli / Suket pengganti e-KTP yang masih berlaku<br />\r\nMembawa hasil cetak berwarna formulir Deklarasi Sehat<br />\r\nMembawa Dokumen asli Hasil Swab Test PCR kurun waktu 2x24 jam atau anti Gen 1x24 jam dengan hasil Negatif/Non Reaktif<br />\r\nMembawa Hasil cetak berwarna sertifikat Vaksin Covid 19<br />\r\nBagi yang tidak diperkenankan di vaksin dengan alasan tertentu wajib membawa surat keterangan dari dokter Pemerintah<br />\r\nMembawa Pensil kayu bukan pensil mekanik<br />\r\n&nbsp;</p>\r\n\r\n<p>Peserta diharuskan menulis nomor urut peserta dan meja registrasi pada kartu peserta menggunakan pensil</p>\r\n\r\n<p>Tidak Membawa barang berlebihan ke lokasi Test SKD</p>\r\n', '', 'Senin', '2021-09-27', '11:43:28', 'Pembagian_Meja_Registrasi_SKD.jpg', 9082, '', 'Y', '');
INSERT INTO `berita` VALUES (64, 3, 'admin', 'Penguman Hasil SKD CPNS Kabupaten Ciamis Tahun 2021', '', '', 'penguman-hasil-skd-cpns-kabupaten-ciamis-tahun-2021', 'Y', 'Y', 'Y', '<p style=\"text-align:justify\">Menindaklanjuti surat Kepala Badan Kepegawaian Negara Nomor : 14602/B-KS.04.03/SD/K/2021 Tanggal 8 November 2021 Perihal Penyampaian Hasil SKD CPNS Tahun 2021 dan sesuai Keputusan Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Nomor 1023 Tahun 2021 Tentang Nilai Ambang Batas Seleksi Kompetensi Dasar Pengadaan Pegawai Negeri Sipil Tahun 2021, dengan ini kami sampaikan bahwa hasil Seleksi Kompetensi Dasar (SKD) Calon Pegawai Negeri Sipil (CPNS) Kabupaten Ciamis Tahun Anggaran 2021 dapat dilihat dibawah ini.</p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Pengumuman_Hasil_SKD_2021.pdf\" target=\"_blank\">Pengumuman</a></p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"https://bit.ly/3nak4l6\" target=\"_blank\">Hasil Nilai SKD CPNS 2021</a></p>\r\n', '', 'Sabtu', '2021-11-13', '09:35:33', 'Pengumuman_Hasil_SKD_CPNS_2021.jpg', 13221, '', 'Y', '');
INSERT INTO `berita` VALUES (66, 2, 'admin', 'Waspada Penipuan ', '', '', 'waspada-penipuan-', 'Y', 'Y', 'Y', '<p>Wasapada banyaknya penipuan mengatasnamakan BKPSDM</p>\r\n', '', 'Kamis', '2021-11-18', '14:22:09', 'waspada.png', 1089, 'informasi', 'Y', '');
INSERT INTO `berita` VALUES (67, 3, 'admin', 'Jadwal SKB CPNS Kabupaten Ciamis Tahun Anggaran 2021', '', '', 'jadwal-skb-cpns-kabupaten-ciamis-tahun-anggaran-2021', 'Y', 'Y', 'Y', '<p style=\"text-align:justify\"><span style=\"font-size:10.0pt\"><span style=\"color:black\">Sesuai dengan surat Kepala Kantor Regional III BKN Bandung Nomor 1443/I/KR.III/VIII/2021 Tanggal 22 Nopember 2021 Hal Penyampaian Jadwal SKB CPNS Tahun 2021 Tahap 2 serta hasil Seleksi Kompetensi Dasar sebagaimana telah diumumkan dalam Pengumuman Panitia Pelaksana Kegiatan Seleksi Pengadaan CPNS Kabupaten Ciamis Tahun Anggaran 2021 Nomor 821/004/Panselda.1/2021 Tanggal </span></span><span style=\"font-size:10.0pt\">12 Nopember 2021 Tentang Hasil Seleksi Kompetensi Dasar Pengadaan Calon Pegawai Negeri Sipil (CPNS) Kabupaten Ciamis Tahun Anggaran 2021 <span style=\"color:black\">bahwa terdapat 414 orang peserta yang dinyatakan lulus Seleksi Kompetensi Dasar. </span></span></p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Pengumuman_SKB.pdf\" target=\"_blank\">Pengumuman SKB</a></p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Lampiran_I_Tata_Tertib.pdf\" target=\"_blank\">Lampiran I Tata Tertib</a></p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Jadwal_SKB_Ciamis_2021.pdf\" target=\"_blank\">Jadwal SKB Ciamis 2021</a></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n', '', 'Rabu', '2021-11-24', '08:43:38', 'Pengumuman_JADWAL_SKB_CPNS_2021.jpg', 3547, '', 'Y', '');
INSERT INTO `berita` VALUES (68, 2, 'admin', 'Pengambilan Sumpah dan Penyerahan SK PNS Secara Simbolis di Lingkungan Pemerintah Kabupaten Ciamis', '', '', 'pengambilan-sumpah-dan-penyerahan-sk-pns-secara-simbolis-di-lingkungan-pemerintah-kabupaten-ciamis', 'Y', 'Y', 'Y', '<p style=\"text-align:justify\">Ciamis 06 Desember 2021 hari senin bertempat di Halaman Pendopo, telah dilaksanakan acara Pengambilan Sumpah dan Penyerahan SK PNS Secara Simbolis oleh Bupati Ciamis Di Lingkungan Pemerintah Kabupaten Ciamis Formasi Tahun 2019.<br />\r\nDari 277 formasi yang telah ditetapkan oleh MENPAN RB Nomor 475 tahun 2019, sebanyak 265 orang yang telah lulus dan telah diangkat menjadi CPNS serta telah selesai mengikuti&nbsp; masa percobaan selama 1 (satu) tahun dan telah lulus Pendidikan Dasar serta Tes Kesehatan, yang terdiri dari :<br />\r\nTenaga guru 156 orang, Tenaga kesehatan 30 orang dan Tenaga Tekhnis/Administrasi 79 orang.</p>\r\n', '', 'Senin', '2021-12-06', '12:05:37', 'WhatsApp_Image_2021-12-06_at_11_55_00_AM_11zon.jpg', 1308, 'informasi', 'Y', '');
INSERT INTO `berita` VALUES (69, 3, 'admin', 'Pengumuman Hasil Seleksi Kompetensi PPPK Guru Kabupaten Ciamis Tahun 2021', '', '', 'pengumuman-hasil-seleksi-kompetensi-pppk-guru-kabupaten-ciamis-tahun-2021', 'Y', 'N', 'Y', '<p style=\"text-align:justify\">Memperhatikan surat Kepala Badan Kepegawaian Negara Nomor 12010/B-KS.04.01/SD/K/2021 Tanggal 28 Oktober 2021 Perihal Penyampaian Hasil Seleksi Kompetensi CPPPK Guru Tahun 2021 dan Surat Kepala Badan Kepegawaian Negara Nomor 140882/B-MP.01.01/SD/D/2021 Tanggal 2 November 2021 Perihal Usul Penetapan Ni PPPK Tahun 2021 secara elekstonik, dengan ini kami sampaikan bahwa hasil seleksi Kompetensi CPPPK Guru Tahun 2021.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/PENGUMUMAN_HASIL_PPPK_GURU_2021.pdf\" target=\"_blank\">Pengumuman</a></p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Hasil_Seleksi_Kompetensi_Pengadaan_PPPK_Guru_2021.pdf\" target=\"_blank\">Lampiran Hasil Seleksi PPPK Guru</a>&nbsp;</p>\r\n', '', 'Kamis', '2021-12-23', '10:50:55', 'Pengumuman_Hasil_PPPk_Guru.jpg', 2640, '', 'Y', '');
INSERT INTO `berita` VALUES (70, 3, 'admin', 'Hasil Seleksi Pengadaan CPNS Ciamis Tahun Anggaran 2021', '', '', 'hasil-seleksi-pengadaan-cpns-ciamis-tahun-anggaran-2021', 'Y', 'Y', 'Y', '<p style=\"text-align:justify\">Berdasarkan Surat Kepala Badan Kepegawaian Negara selaku Ketua Tim Pelaksana Seleksi Nasional Pengadaan CASN 2021 Nomor : 18407.1/B-KS.04.03/SD/K/2021 Tanggal 21 Desember 2021 perihal Penyampaian Hasil Integrasi Nilai SKD-SKB CPNS Tahun 2021 Pemerintah Kabupaten Ciamis Tahun Anggaran 2021.</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Pengumuman_Hasil_Seleksi_Pengadaan_CPNS_Kabupaten_Ciamis_2021.pdf\" target=\"_blank\">Pengumuman</a></p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Rekap_Hasil_Integrasi_SKD_dan_SKB_CPNS_Ciamis_2021.pdf\" target=\"_blank\">Rekap HasilIntegrasi SKD dan SKB Pengadaan CPNS 2021</a></p>\r\n', '', 'Jumat', '2021-12-24', '15:23:19', 'Pengumuman_Hasil_Seleksi_CPNS_2021.jpg', 3774, '', 'Y', '');
INSERT INTO `berita` VALUES (71, 3, 'admin', 'Pengumuman Pasca Sanggah CPNS 2021', '', '', 'pengumuman-pasca-sanggah-cpns-2021', 'Y', 'N', 'Y', '<p style=\"text-align:justify\">Menindaklanjuti Pengumuman Nomor : 821/008/Panselda.1/2021 Tanggal 22 Desember 2021 Tentang Hasil Akhir Seleksi Pengadaan Calon Pegawai Negeri Sipil di Lingkungan Pemerintah Kabupaten Ciamis Tahun Anggaran 2021. Berkenan hal tersebut, dengan ini kami umumkan hasil Pasca Sanggah Pengadaan Calon Pegawai Negeri Sipil Pemerintah Kabupaten Ciamis Tahun Anggaran 2021.</p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Pengumuman_Pasca_Sanggah_CPNS_2021.pdf\" target=\"_blank\">Pengumuman</a><br />\r\n<a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Rekap_Hasil_Integrasi_SKD_SKB_CPNS_Ciamis_2021.pdf\" target=\"_blank\">Rekap Hasil Integrasi SKD SKB CPNS Ciamis 2021</a><br />\r\n<a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Rincian_Hasil_Integrasi_SKD_SKB_CPNS_Ciamis_2021.pdf\" target=\"_blank\">Rincian Hasil Integrasi SKD SKB CPNS Ciamis 2021</a></p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Contoh_Surat_Pernyataan_5_poin_cpns_2021.pdf\" target=\"_blank\">Contoh Surat Pernyataan 5 Poin CPNS&nbsp;2021</a></p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Contoh_Surat_Pernyataan_Intansi_CPNS_2021.pdf\" target=\"_blank\">Contoh Surat Pernyataan Intansi CPNS 2021</a></p>\r\n', '', 'Kamis', '2022-01-06', '15:11:13', 'Pengumuman_Pasca_Sanggah_CPNS_2021.jpg', 1347, '', 'Y', '');
INSERT INTO `berita` VALUES (72, 3, 'admin', 'PENGUMUMAN HASIL SELEKSI KOMPETENSI TAHAP II PPPK GURU  DI LINGKUNGAN PEMERINTAH KABUPATEN CIAMIS ', '', '', 'pengumuman-hasil-seleksi-kompetensi-tahap-ii-pppk-guru--di-lingkungan-pemerintah-kabupaten-ciamis-', 'Y', 'Y', 'Y', '<p style=\"text-align:justify\">Memperhatikan Surat Kepala Badan Kepegawaian Negara Nomor 302.2/B-KS.04.03/SD/K/2022 &nbsp;Tanggal &nbsp;6 &nbsp;Januari &nbsp;2022 &nbsp;Perihal &nbsp;Penyampaian &nbsp;Hasil &nbsp;Seleksi &nbsp;Kompetensi &nbsp;II&nbsp;<br />\r\nCPPPK &nbsp;Guru &nbsp;Tahun &nbsp;2021 &nbsp;dan &nbsp;surat &nbsp;Kepala &nbsp;Badan &nbsp;Kepegawaian &nbsp;Negara &nbsp;Nomor &nbsp;140882/B-&nbsp;<br />\r\nMP.01.01/SD/D/2021 &nbsp;Tanggal &nbsp;2 &nbsp;November &nbsp;2021 &nbsp;Perihal &nbsp;Usui &nbsp;Penetapan &nbsp;NI &nbsp;PPPK &nbsp;Tahun &nbsp;2021&nbsp;<br />\r\nsecara &nbsp;elektronik, &nbsp;dengan &nbsp;ini &nbsp;kami &nbsp;sampaikan &nbsp;hasil &nbsp;Seleksi &nbsp;Kompetensi &nbsp;tahap &nbsp;II &nbsp;CPPPK &nbsp;Guru&nbsp;<br />\r\nFormasi Tahun 2021 .</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Surat Pengumuman:</p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"https://drive.google.com/file/d/1BXSWDQszuU2wb3l8lBC146jugXPD6WkH/view?usp=sharing\" target=\"_blank\"><input name=\"Download\" type=\"button\" value=\"Download\" /></a></p>\r\n\r\n<p style=\"text-align:justify\">Hasil Seleksi :</p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"https://drive.google.com/file/d/1JAk0-NNlYX7Uw_5pweOcEn3vC5nBcZM8/view?usp=sharing\" target=\"_blank\"><input name=\"Download\" type=\"button\" value=\"Hasil Seleksi\" /></a></p>\r\n\r\n<p style=\"text-align:justify\"><a href=\"https://drive.google.com/file/d/1JU8WdFZjx9qrFISjWHmpPSMfGFywhD0z/view?usp=sharing\" target=\"_blank\"><input name=\"Hasil Seleksi\" type=\"button\" value=\"Hasil Seleksi\" /></a></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n', '', 'Rabu', '2022-01-19', '14:36:10', 'Pengumuman_Hasil_PPPk_Guru.png', 961, 'informasi', 'Y', '');
INSERT INTO `berita` VALUES (73, 3, 'admin', 'SELEKSI TERBUKA JABATAN PIMPINAN TINGGI PRATAMA DI LINGKUNGAN PEMERINTAH KABUPATEN CIAMIS', '', '', 'seleksi-terbuka-jabatan-pimpinan-tinggi-pratama-di-lingkungan-pemerintah-kabupaten-ciamis', 'Y', 'Y', 'Y', '<p>Berdasarkan Undang-Undang Nomor 5 Tahun 2014 tentang Aparatur Sipil Negara,&nbsp; Peraturan Pemerintah Nomor&nbsp; 11&nbsp; Tahun 2017 tentang Manajemen Pegawai Negeri&nbsp;&nbsp; Sipil&nbsp;&nbsp; sebagaimana&nbsp; telah&nbsp; diubah&nbsp; dengan&nbsp; Peraturan&nbsp;&nbsp; Pemerintah&nbsp; Nomor&nbsp;&nbsp; 17 Tahun&nbsp; 2020&nbsp; tentang&nbsp; Perubahan&nbsp;&nbsp; Peraturan&nbsp;&nbsp; Pemerintah&nbsp; Nomor&nbsp;&nbsp; 11&nbsp;&nbsp; Tahun&nbsp;&nbsp; 2017 tentang&nbsp; Manajemen&nbsp;&nbsp;&nbsp; Pegawai&nbsp;&nbsp; Negeri&nbsp;&nbsp;&nbsp; Sipil,&nbsp;&nbsp;&nbsp; Peraturan&nbsp;&nbsp;&nbsp; Menteri&nbsp;&nbsp;&nbsp; Pendayagunaan<br />\r\nAparatur&nbsp;&nbsp; Negara&nbsp; dan&nbsp; Reformasi&nbsp;&nbsp; Birokrasi&nbsp;&nbsp; Republik&nbsp; Indonesia&nbsp;&nbsp; Nomor&nbsp;&nbsp; 15&nbsp;&nbsp; Tahun 2019 tentang Pengisian Jabatan Pimpinan&nbsp; Tinggi secara terbuka dan kompetitif di Lingkungan&nbsp; Instansi&nbsp; Pemerintah&nbsp; dan&nbsp; Surat&nbsp;&nbsp;&nbsp;&nbsp; Edaran&nbsp;&nbsp;&nbsp; Menteri&nbsp;&nbsp;&nbsp;&nbsp; Pendayagunaan Aparatur&nbsp;&nbsp; Negara&nbsp;&nbsp; dan&nbsp; Reformasi Birokrasi&nbsp; Republik Indonesia Nomor&nbsp;&nbsp;&nbsp; 52&nbsp;&nbsp;&nbsp; Tahun 2020&nbsp;&nbsp;&nbsp;&nbsp; tentang&nbsp;&nbsp;&nbsp;&nbsp; Pelaksanaan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pengisian&nbsp;&nbsp;&nbsp; Jabatan&nbsp; Pimpinan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tinggi&nbsp;&nbsp;&nbsp;&nbsp; secara terbuka&nbsp;&nbsp;&nbsp; dan&nbsp;&nbsp;&nbsp; kompetitif&nbsp;&nbsp; di&nbsp;&nbsp;&nbsp;&nbsp; Lingkungan&nbsp;&nbsp;&nbsp;&nbsp; Instansi Pemerintah&nbsp; dalam Kondisi Kedaruratan&nbsp; Kesehatan&nbsp; Masyarakat Corona&nbsp; Virus Disease 2019&nbsp; (Covid-19), kami memberikan&nbsp;&nbsp;&nbsp; kesempatan&nbsp;&nbsp;&nbsp; kepada&nbsp;&nbsp;&nbsp; Pegawai&nbsp;&nbsp; Negeri&nbsp;&nbsp;&nbsp;&nbsp; Sipil&nbsp;&nbsp;&nbsp; yang&nbsp;&nbsp; berminat&nbsp;&nbsp; dan memenuhi persyaratan yang ditentukan untuk mengikuti&nbsp; Seleksi Terbuka Jabatan Pimpinan Tinggi Pratama dengan kekosongan formasi jabatan sebagai berikut :<br />\r\n1.&nbsp;&nbsp;&nbsp;&nbsp; Staf Ahli Bidang&nbsp; Hukum,&nbsp; Pemerintahan dan Kesejahteraan&nbsp; Rakyat;<br />\r\n2.&nbsp;&nbsp;&nbsp;&nbsp; Kepala Dinas&nbsp; Komunikasi dan Informatika;<br />\r\n3.&nbsp;&nbsp;&nbsp;&nbsp; Kepala Dinas&nbsp; Pariwisata;<br />\r\n4.&nbsp;&nbsp;&nbsp;&nbsp; Kepala Dinas Tenaga Kerja;<br />\r\n5.&nbsp;&nbsp;&nbsp;&nbsp; Kepala Dinas&nbsp; Koperasi, Usaha Kecil&nbsp; Menengah dan Perdagangan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pengumuman Selter JPTP Kab. Ciamis Tahun 2022</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Pengumuman_Selter_JPTP_Kab_Ciamis_2022.pdf\" target=\"_blank\"><input name=\"Download\" type=\"button\" value=\"Download\" /></a></p>\r\n\r\n<p>Format Berkas Kelengkapan Administrasi Selter JPTP</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Format_berkas_kelengkapan_administrasi_Selter_JPT_2022.docx\" target=\"_blank\"><input name=\"Download\" type=\"button\" value=\"Download\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 'Selasa', '2022-02-08', '08:30:32', 'Ilustrasi-ASN.png', 650, 'informasi', 'Y', '');
INSERT INTO `berita` VALUES (74, 3, 'admin', 'PENGUMUMAN SELEKSI ADMINISTRASI SELTER JPT PRATAMA TAHUN 2022', '', '', 'pengumuman-seleksi-administrasi-selter-jpt-pratama-tahun-2022', 'Y', 'Y', 'Y', '<p>Hasil Seleksi Administrasi SELTER JPT Pratama di Lingkungan Pemerintah Kabupaten Ciamis Tahun 2022</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/PENGUMUMAN_SELEKSI_ADMINISTRASI_SELTER_JPT_PRATAMA_2022.pdf\" target=\"_blank\"><input name=\"DOWNLOAD\" type=\"button\" value=\"DOWNLOAD\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 'Kamis', '2022-02-17', '09:11:12', 'Ilustrasi-ASN1.png', 524, 'informasi', 'Y', '');
INSERT INTO `berita` VALUES (75, 3, 'admin', 'PEMBERITAHUAN SELEKSI JPTP KAB. SUBANG TAHUN 2022', '', '', 'pemberitahuan-seleksi-jptp-kab-subang-tahun-2022', 'Y', 'Y', 'Y', '<p>PEMBERITAHUAN SELEKSI JPTP KAB. SUBANG TAHUN 2022</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/PEMBERITAHUAN_SELEKSI_JPTP_KAB__SUBANG.pdf\" target=\"_blank\"><input name=\"Download\" type=\"button\" value=\"Download\" /></a></p>\r\n', '', 'Senin', '2022-02-21', '10:01:16', 'cpns.png', 247, 'informasi', 'Y', '');
INSERT INTO `berita` VALUES (76, 2, 'admin', 'Rapat koordinasi evaluasi kinerja 2021 dan penyelarasan Program / Kegiatan 2022', '', '', 'rapat-koordinasi-evaluasi-kinerja-2021-dan-penyelarasan-program--kegiatan-2022', 'Y', 'Y', 'Y', '<p>RAPAT KOORDINASI<br />\r\n&nbsp;<br />\r\nEVALUASI KINERJA 2021 DAN PENYELARASAN &nbsp;PROGRAM/KEGIATAN 2022<br />\r\nPENYELENGGARAAN MANAJEMEN APARATUR SIPIL NEGARA (M-ASN)<br />\r\nDI LINGKUNGAN WILAYAH KERJA KANTOR REGIONAL III BKN<br />\r\nZONA JAWA BARAT II<br />\r\n(Kabupaten Garut, Kabupaten Tasikmalaya, Kota Tasikmalaya<br />\r\nKota Banjar, Kabupaten Ciamis dan Kabupaten Pangandaran)</p>\r\n', '', 'Rabu', '2022-02-23', '10:36:39', 'Whats-App-Image-2022-02-23-at-10-16-48-AM.jpg', 233, 'informasi', 'Y', '');
INSERT INTO `berita` VALUES (77, 3, 'admin', 'Pengumuman Hasil Akhir Selter JPT Pratama Kab. Ciamis Tahun 2022', '', '', 'pengumuman-hasil-akhir-selter-jpt-pratama-kab-ciamis-tahun-2022', 'Y', 'Y', 'Y', '<p>Penetapan Hasil Akhir Selter JPT Pratama di Lingkungan Pemerintah Kabupaten Ciamis Tahun 2022</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Pengumuman_Hasil_Akhir_Selter_JPT_Pratama_Kabupaten_Ciamis_tahun_2022_Feb.pdf\" target=\"_blank\"><input name=\"Download\" type=\"button\" value=\"Download\" /></a></p>\r\n', '', 'Senin', '2022-03-07', '11:27:48', 'cpns1.png', 640, 'informasi', 'Y', '');

-- ----------------------------
-- Table structure for download
-- ----------------------------
DROP TABLE IF EXISTS `download`;
CREATE TABLE `download`  (
  `id_download` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL,
  PRIMARY KEY (`id_download`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 118 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of download
-- ----------------------------
INSERT INTO `download` VALUES (9, 'Pengumuman', 'Surat_Pengumuman.pdf', '2020-03-23', 1155);
INSERT INTO `download` VALUES (10, 'Rekapitulasi Hasil SKD CPNS Kabupaten Ciamis 2019', 'REKAPITULASI_HASIL_SKD_CPNS_KABUPATEN_CIAMIS_2019.pdf', '2020-03-23', 10425);
INSERT INTO `download` VALUES (5, 'Hasil CAT Hari Jumat 14 Februari 2020', 'Jumat_14_02_2020_compressed.pdf', '2020-02-21', 6156);
INSERT INTO `download` VALUES (6, 'Hasil CAT Hari Sabtu 15 Februari 2020 ', 'Sabtu_15_02_2020_compressed.pdf', '2020-02-21', 5186);
INSERT INTO `download` VALUES (7, 'Hasil CAT Hari Minggu 16 Februari 2020', 'Minggu_16_02_2020_compressed.pdf', '2020-02-21', 6084);
INSERT INTO `download` VALUES (8, 'Hasil CAT Hari Senin 17 Februari 2020', 'Senin_17_02_2020_compressed.pdf', '2020-02-21', 3781);
INSERT INTO `download` VALUES (11, 'Daftar Peserta P1TL', 'DAFTAR_PESERTA_P1TL_SKD_KABUPATEN_CIAMIS_2019.pdf', '2020-03-23', 2798);
INSERT INTO `download` VALUES (12, 'Perubahan Hari Libur Nasional dan Cuti Bersama Tahun 2020', 'SE_CUTI_BERSAMA_2020.pdf', '2020-03-27', 906);
INSERT INTO `download` VALUES (13, 'Perubahan Kedua Hari Libur Nasional dan Cuti Bersama Tahun 2020', 'PERUBAHAN_KEDUA_HARI_LIBUR_DAN_CUTI_BERSAMA_2020.pdf', '2020-04-21', 1412);
INSERT INTO `download` VALUES (14, 'Seleksi Penerimaan Calon Praja IPDN Tahun 2020', 'SE_Penerimaan_Praja_IPDN_Tahun_2020.pdf', '2020-06-03', 149);
INSERT INTO `download` VALUES (15, 'Pelaksanaan Seleksi (SKB) CPNS Kabupaten Ciamis 2019', 'pengumuman_SKB_2020.pdf', '2020-07-30', 2087);
INSERT INTO `download` VALUES (16, 'Pengumuman Jadwal SKB Tahun 2020', 'Pengumuman_Jadwal_SKB_.pdf', '2020-08-18', 1439);
INSERT INTO `download` VALUES (17, 'Lampiran I Tata Tertib Pelaksanaan SKB', 'Lampiran_I_Tata_Tertib_SKB.pdf', '2020-08-18', 1189);
INSERT INTO `download` VALUES (18, 'Lampiran II Jadwal SKB', 'Lampiran_II_Jadwal_SKB_.pdf', '2020-08-18', 4428);
INSERT INTO `download` VALUES (19, 'Lampiran III Jadwal SKB', 'Lampiran_III_Jadwal_SKB.pdf', '2020-08-18', 1140);
INSERT INTO `download` VALUES (21, 'Formulir Persyaratan Selter JPT Sekda Kabupaten Ciamis 2020', 'Formulir_selter_jpt_Sekda_2020_September_2020_FIX.docx', '2020-09-28', 205);
INSERT INTO `download` VALUES (26, 'Pengumuman Seleksi Terbuka JPT Pratama Sekda Kab Ciamis 2020', 'Pengumuman_Seleksi_Terbuka_JPT_Pratama_Sekda_Kab_Ciamis_2020.pdf', '2020-09-29', 157);
INSERT INTO `download` VALUES (23, 'Sarana dan Prasarana BKPSDM', 'Sarana_dan_Prasarana.pdf', '2020-09-28', 123);
INSERT INTO `download` VALUES (24, 'Pengumuman SKB pada Masa Pandemi Covid-19', 'Pengumuman_SKB_pada_Masa_Pandemi_Covid-19.pdf', '2020-09-28', 612);
INSERT INTO `download` VALUES (25, 'Pembagian Peserta SKB Per Meja Regsitrasi', 'Pembagian_Peserta_SKB_Per_Meja_Regsitrasi.pdf', '2020-09-28', 764);
INSERT INTO `download` VALUES (27, 'Penyampaian Scan Berkas Persyaratan Secara Online Seleksi Terbuka JPT Pratama Sekda Kabupaten Ciamis', 'Pengumuman_Pansel_JPT_Kab__Ciamis_No__05_.pdf', '2020-10-02', 130);
INSERT INTO `download` VALUES (28, 'Perpanjangan Waktu Penerimaan Lamaran Selekesi Terbuka JPT Pratama Sekretaris Daerah Kabupaten Ciami', 'Perpanjangan_masa_pendaftaran_Selter_JPT_Pratama_Sekda_Kab__Ciamis.pdf', '2020-10-05', 229);
INSERT INTO `download` VALUES (29, 'Rencana Strategis Tahun 2019-2024 BKPSDM Ciamis', 'Rencana_Strategis_Tahun_2019-2024_BKPSDM_Ciamis.pdf', '2020-10-08', 322);
INSERT INTO `download` VALUES (30, 'Rencana Kerja BKPSDM Ciamis Tahun 2020', 'Rencana_Kerja_Tahun_2020_BKPSDM_Ciamis.pdf', '2020-10-08', 443);
INSERT INTO `download` VALUES (31, 'Hasil Nilai SKB Sesi 1', 'HASIL_SKB_SESI_1.pdf', '2020-10-09', 1150);
INSERT INTO `download` VALUES (32, 'Hasil Nilai SKB Sesi 2', 'HASIL_SKB_SESI_2.pdf', '2020-10-09', 1078);
INSERT INTO `download` VALUES (33, 'Hasil Nilai SKB Sesi 3', 'HASIL_SKB_SESI_3.pdf', '2020-10-09', 885);
INSERT INTO `download` VALUES (34, 'pelantikan jabatan administrator dan pengawas rsud kawali', 'pelantikan_jabatan_administrator_dan_pengawas_rsud_kawali.pdf', '2020-10-12', 280);
INSERT INTO `download` VALUES (35, 'Hasil SKB Tilok Luar Kota Tasikmalaya', 'Hasil_SKB_Tilok_Luar_Kota_Tasikmalaya.pdf', '2020-10-22', 297);
INSERT INTO `download` VALUES (36, 'Pengumuman Hasil Akhir Penerimaan CPNS Kabupaten Ciamis Formasi Tahun 2019', 'Pengumuman_Hasil_Akhir_Penerimaan_CPNS_Kabupaten_Ciamis_Formasi_Tahun_2019.pdf', '2020-10-30', 2352);
INSERT INTO `download` VALUES (37, 'Hasil Integrasi SKD dan SKB Pengadaan CPNS 2019', 'HASIL_INTEGRASI_SKD_DAN_SKB_PENGADAAN_CPNS_2019.pdf', '2020-10-30', 4218);
INSERT INTO `download` VALUES (38, 'Hasil Integrasi SKD dan SKB (Rincian) Pengadaan CPNS 2019', 'HASIL_INTEGRASI_SKD_DAN_SKB_PENGADAAN_CPNS_2019_RINCIAN.pdf', '2020-10-30', 3103);
INSERT INTO `download` VALUES (39, 'Penetapan Hasil Akhir Seleksi Pengisian JPT Pratama Sekretaris Daerah Kab. Ciamis', 'Penetapan_Hasil_Akhir_Seleksi_Pengisian_JPT_Pratama_Sekretaris_Daerah_Kab__Ciamis.pdf', '2020-11-10', 540);
INSERT INTO `download` VALUES (40, 'Laporan Kinerja Instansi Pemerintah BKPSDM Tahun 2019', 'LKIP_2019_opt.pdf', '2020-11-13', 371);
INSERT INTO `download` VALUES (41, 'Himbauan dan Larangan Menghadapi Cuti Bersama', 'himbauan_larangan.pdf', '2020-12-08', 137);
INSERT INTO `download` VALUES (42, 'Hari Libur Nasional dan Perubahan Cuti Bersama Tahun 2020', 'Surat_Edaran_Hari_Libur_Nasional_dan_Cuti.pdf', '2020-12-08', 156);
INSERT INTO `download` VALUES (43, 'Hari Libur Nasional dan Cuti Bersama Tahun 2021', 'LIBUR_NASIONAL_DAN_CUTI_BERSAMA_2021.pdf', '2020-12-17', 304);
INSERT INTO `download` VALUES (44, 'Formulir Pengumuman Selter 2021 ', 'Formulir_Pengumuman_Selter_2021_FIX.docx', '2021-02-22', 221);
INSERT INTO `download` VALUES (45, 'Pengumunan Seleksi Terbuka JPT Pratama Kabupaten Ciamis 2021', 'Pengumunan_Seleksi_Terbuka_JPT_Pratama_Kabupaten_Ciamis_2021.pdf', '2021-02-22', 325);
INSERT INTO `download` VALUES (46, 'Pengumuman  Hasil Seleksi Administrasi Seleksi Terbuka JPT Kabupaten Ciamis 2021', 'Pengumuman_Hasil_Seleksi_Administrasi_Selter_JPTP_Kab_Ciamis.pdf', '2021-03-02', 667);
INSERT INTO `download` VALUES (47, 'Pengumuman Penetapan Hasil Akhir JPT Pratama Kabupaten Ciamis Tahun 2021', 'Pengumuman_hasil_akhir_Seleksi_Terbuka_Jabatan_Pimpinan_Tinggi_Pratama_Kab_Ciamis_2021_03.pdf', '2021-03-15', 955);
INSERT INTO `download` VALUES (48, 'Surat Edaran Libur Nasional dan Cuti Bersama 2021', 'PERUBAHAN_CUTI_BERSAMA_TAHUN_2021.pdf', '2021-06-30', 255);
INSERT INTO `download` VALUES (49, 'Pengumuman Penerimaan Pegawai ASN Kabupaten Ciamis 2021', 'PENGUMUMAN_PEGAWAI_ASN_2021.pdf', '2021-06-30', 24756);
INSERT INTO `download` VALUES (52, 'Pengumuman Penerimaan Pegawai ASN Kabupaten Ciamis 2021 Lampiran', 'PENGUMUMAN_PEGAWAI_ASN_2021_-_LAMPIRAN_opt.pdf', '2021-06-30', 11339);
INSERT INTO `download` VALUES (51, 'Kemenpan RB No. 980 Tahun 2021', 'Kepmenpan_RB_No__980_Tahun_2021.pdf', '2021-06-30', 2298);
INSERT INTO `download` VALUES (53, 'pelantikan tanggal 02 Agustus 2021 ', 'PELANTIKAN_TGL_02-08-2021.pdf', '2021-08-02', 328);
INSERT INTO `download` VALUES (54, 'Pengumuman Seleksi Administrasi ASN Tahun 2021', 'Pengumuman_Seleksi_Administrasi_2021.pdf', '2021-08-02', 1993);
INSERT INTO `download` VALUES (55, 'Daftar Pelamar Seleksi Administrasi Lulus', 'Daftar_Pelamar_Seleksi_Administrasi_Lulus.pdf', '2021-08-02', 8343);
INSERT INTO `download` VALUES (56, 'Pengumuman Hasil Masa Sanggah', 'Pengumuman_Hasil_Masa_Sanggah.pdf', '2021-08-15', 2598);
INSERT INTO `download` VALUES (57, 'Daftar Pelamar MS Setelah Masa Sanggah', 'Daftar_Pelamar_MS.pdf', '2021-08-15', 3483);
INSERT INTO `download` VALUES (62, 'Pengumuman Hasil SKD 2021', 'Pengumuman_Hasil_SKD_2021.pdf', '2021-11-13', 1672);
INSERT INTO `download` VALUES (61, 'Pembagian Meja Registrasi SKD ASN 2021', 'Pembagian_Meja_Registrasi_SKD.xls', '2021-09-27', 339);
INSERT INTO `download` VALUES (71, 'Jadwal SKB Ciamis 2021', 'Jadwal_SKB_Ciamis_2021.pdf', '2021-11-24', 2783);
INSERT INTO `download` VALUES (70, 'Rekapitulasi Hasil SKD CPNS 2021', 'Rekapitulasi_Hasil_SKD_CPNS_2021.pdf', '2021-11-15', 206);
INSERT INTO `download` VALUES (72, 'Lampiran I Tata Tertib', 'Lampiran_I_Tata_Tertib.pdf', '2021-11-24', 993);
INSERT INTO `download` VALUES (73, 'Pengumuman SKB', 'Pengumuman_SKB.pdf', '2021-11-24', 1242);
INSERT INTO `download` VALUES (74, 'PENGUMUMAN HASIL PPPK GURU 2021', 'PENGUMUMAN_HASIL_PPPK_GURU_2021.pdf', '2021-12-23', 735);
INSERT INTO `download` VALUES (75, 'Hasil Seleksi Kompetensi Pengadaan PPPK Guru 2021', 'Hasil_Seleksi_Kompetensi_Pengadaan_PPPK_Guru_2021.pdf', '2021-12-23', 1717);
INSERT INTO `download` VALUES (76, 'Pengumuman Hasil Seleksi Pengadaan CPNS Kabupaten Ciamis 2021', 'Pengumuman_Hasil_Seleksi_Pengadaan_CPNS_Kabupaten_Ciamis_2021.pdf', '2021-12-24', 1041);
INSERT INTO `download` VALUES (77, 'Rekap Hasil Integrasi SKD dan SKB CPNS Ciamis 2021', 'Rekap_Hasil_Integrasi_SKD_dan_SKB_CPNS_Ciamis_2021.pdf', '2021-12-24', 3580);
INSERT INTO `download` VALUES (78, 'Pengumuman Pasca Sanggah CPNS 2021', 'Pengumuman_Pasca_Sanggah_CPNS_2021.pdf', '2022-01-06', 480);
INSERT INTO `download` VALUES (79, 'Rekap Hasil Integrasi SKD SKB CPNS Ciamis 2021', 'Rekap_Hasil_Integrasi_SKD_SKB_CPNS_Ciamis_2021.pdf', '2022-01-06', 674);
INSERT INTO `download` VALUES (80, 'Rincian Hasil Integrasi SKD SKB CPNS Ciamis 2021', 'Rincian_Hasil_Integrasi_SKD_SKB_CPNS_Ciamis_2021.pdf', '2022-01-06', 558);
INSERT INTO `download` VALUES (81, 'Contoh Surat Pernyataan', 'Contoh_Surat_Pernyataan_CPNS_2021.pdf', '2022-01-06', 271);
INSERT INTO `download` VALUES (82, 'Contoh Surat Pernyataan 5 poin cpns 2021', 'Contoh_Surat_Pernyataan_5_poin_cpns_2021.pdf', '2022-01-07', 268);
INSERT INTO `download` VALUES (83, 'Contoh Surat Pernyataan Intansi CPNS 2021', 'Contoh_Surat_Pernyataan_Intansi_CPNS_2021.pdf', '2022-01-07', 258);
INSERT INTO `download` VALUES (84, 'Pengumuman Selter JPTP Kab. Ciamis Tahun 2022', 'Pengumuman_Selter_JPTP_Kab_Ciamis_2022.pdf', '2022-02-08', 206);
INSERT INTO `download` VALUES (85, 'Format Berkas Kelengkapan Administrasi Selter JPTP', 'Format_berkas_kelengkapan_administrasi_Selter_JPT_2022.docx', '2022-02-08', 130);
INSERT INTO `download` VALUES (86, 'PENGUMUMAN SELEKSI ADMINISTRASI SELTER JPT PRATAMA 2022', 'PENGUMUMAN_SELEKSI_ADMINISTRASI_SELTER_JPT_PRATAMA_2022.pdf', '2022-02-17', 281);
INSERT INTO `download` VALUES (87, 'PEMBERITAHUAN SELEKSI JPTP KAB. SUBANG TAHUN 2022', 'PEMBERITAHUAN_SELEKSI_JPTP_KAB__SUBANG.pdf', '2022-02-21', 81);
INSERT INTO `download` VALUES (88, 'Pengumuman Hasil Akhir Selter JPT Pratama Kab. Ciamis Tahun 2022', 'Pengumuman_Hasil_Akhir_Selter_JPT_Pratama_Kabupaten_Ciamis_tahun_2022_Feb.pdf', '2022-03-07', 417);
INSERT INTO `download` VALUES (89, 'Rekap dan Info Koin Kepuasan Masyarakat', 'rekap_dan_info_koin_kepuasan_masyarakat_januari_-mei_2022.pdf', '2022-06-24', 10);
INSERT INTO `download` VALUES (90, 'Pemberian Bantuan Pendidikan Lanjutan', '01_Pemberian_Bantuan_Pendidikan_.pdf', '2022-06-24', 10);
INSERT INTO `download` VALUES (91, 'Fasilitasi Izin Seleksi Tugas Belajar', '02_Fasilitasi_Izin_Seleksi_Tugas_Belajar.pdf', '2022-06-24', 8);
INSERT INTO `download` VALUES (92, 'Fasilitasi Tugas Belajar', '03_Fasilitasi_Tugas_Belajar.pdf', '2022-06-24', 6);
INSERT INTO `download` VALUES (93, 'Pemberian Informasi Pendidikan dan Pelatihan serta Beasiswa', '04_Pemberian_Informasi_Pendidikan_dan_Pelatihan_serta_Beasiswa.pdf', '2022-06-24', 3);
INSERT INTO `download` VALUES (94, 'Pelatihan Teknis dan Sosio Kultural', '05_Pelatihan_Teknis_dan_Sosio_Kultural.pdf', '2022-06-24', 6);
INSERT INTO `download` VALUES (95, 'Pelatihan Kepemimpinan', '06_Pelatihan_Kepemimpinan.pdf', '2022-06-24', 8);
INSERT INTO `download` VALUES (96, 'Pelatihan Dasar CPNS', '07_Pelatihan_Dasar_CPNS.pdf', '2022-06-24', 13);
INSERT INTO `download` VALUES (97, 'Pelatihan Manajerial dan Fungsional', '08_Pelatihan_Manajerial_dan_Fungsional_.pdf', '2022-06-24', 12);
INSERT INTO `download` VALUES (98, 'Penerbitan SK pengangkatan, pemindahan dan pemberhentian jabatan fungsional PNS', '09_Penerbitan_SK_pengangkatan,_pemindahan_dan_pemberhentian_jabatan_fungsional_PNS.pdf', '2022-06-24', 0);
INSERT INTO `download` VALUES (99, 'Penerbitan SK kenaikan dan alih kategori jabatan fungsional PNS', '10_Penerbitan_SK_kenaikan_dan_alih_kategori_jabatan_fungsional_PNS.pdf', '2022-06-24', 3);
INSERT INTO `download` VALUES (100, 'Penerbitan SK pengangkatan, pemindahan dan pemberhentian jabatan pimpinan tinggi pratama, jabatan ad', '11_Penerbitan_SK_pengangkatan,_pemindahan_dan_pemberhentian_JPTP,_administrator_dan_pengawas.pdf', '2022-06-24', 0);
INSERT INTO `download` VALUES (101, 'Penerbitan SK pengangkatan dan penugasan PNS di lingkungan pemerintah kabupaten ciamis (perpindahan ', '12_Penerbitan_SK_pengangkatan_dan_penugasan_PNS_di_pemerintah_kab_ciamis.pdf', '2022-06-24', 3);
INSERT INTO `download` VALUES (102, 'Penerbitan surat persetujuan mutasi PNS', '13_Penerbitan_surat_persetujuan_mutasi_PNS.pdf', '2022-06-24', 5);
INSERT INTO `download` VALUES (103, 'Penerbitan surat permintaan persetujuan mutasi PNS', '14_Penerbitan_surat_permintaan_persetujuan_mutasi_PNS.pdf', '2022-06-24', 3);
INSERT INTO `download` VALUES (104, 'Penerbitan Surat PLT dan PLH (kepala SKPD)', '15_Penerbitan_Surat_PLT_dan_PLH_(kepala_SKPD)).pdf', '2022-06-24', 0);
INSERT INTO `download` VALUES (105, 'Penerbitan SK nomenklatur jabatan pelaksana', '16_Penerbitan_SK_nomenklatur_jabatan_pelaksana.pdf', '2022-06-24', 4);
INSERT INTO `download` VALUES (106, 'Penerbitan SK kenaikan pangkat PNS (golongan I, II dan III)', '17_Penerbitan_SK_kenaikan_pangkat_PNS_(golongan_I,_II_dan_III).pdf', '2022-06-24', 0);
INSERT INTO `download` VALUES (107, 'Penerbitan surat kenaikan gaji berkala PNS (jabatan pimpinan tinggi, jabatan administrasi)', '18_Penerbitan_surat_kenaikan_gaji_berkala_PNS_(jabatan_pimpinan_tinggi,_jabatan_administrasi).pdf', '2022-06-24', 0);
INSERT INTO `download` VALUES (108, 'Penerbitan surat tanda lulus UDIN dan UPKP', '19_Penerbitan_surat_tanda_lulus_UDIN_dan_UPKP.pdf', '2022-06-24', 8);
INSERT INTO `download` VALUES (109, 'Penerbitan Surat Pencantuman gelar/Pangkat Pendidikan', '20_Penerbitan_Surat_Pencantuman_gelarPangkat_Pendidikan.pdf', '2022-06-24', 3);
INSERT INTO `download` VALUES (110, 'Penerbitan Surat Izin Pencalonan Kepala Desa', '21_Penerbitan_Surat_Izin_Pencalonan_Kepala_Desa.pdf', '2022-06-24', 6);
INSERT INTO `download` VALUES (111, 'Fasilitasi Pensiun/Pemberhentian', '22_Fasilitasi_PensiunPemberhentian.pdf', '2022-06-24', 4);
INSERT INTO `download` VALUES (112, 'Fasilitasi penerbitan Kartu Pegawai (KARPEG)', '23_Fasilitasi_penerbitan_Kartu_Pegawai_(KARPEG).pdf', '2022-06-24', 0);
INSERT INTO `download` VALUES (113, 'Fasilitasi Kartu Istri/suami', '24_Fasilitasi_Kartu_Istrisuami.pdf', '2022-06-24', 7);
INSERT INTO `download` VALUES (114, 'Fasilitasi pengadaan ASN', '25_Fasilitasi_pengadaan_ASN.pdf', '2022-06-24', 7);
INSERT INTO `download` VALUES (115, 'Penerbitan Surat Izin Cuti', '26_Penerbitan_Surat_Izin_Cuti.pdf', '2022-06-24', 4);
INSERT INTO `download` VALUES (116, 'Penerbitan Izin Cerai PNS/Izin Pernikahan Kedua dan seterusnya bagi PNS pria', '27_Penerbitan_Izin_Cerai_PNSIzin_Pernikahan_Kedua_dan_seterusnya_bagi_PNS_pria.pdf', '2022-06-24', 7);
INSERT INTO `download` VALUES (117, 'Fasilitasi penganugerahan SLKS (Satya Lencana Karya Satya) kepada PNS', '28_Fasilitasi_penganugerahan_SLKS_(Satya_Lencana_Karya_Satya)_kepada_PNS.pdf', '2022-06-24', 0);

-- ----------------------------
-- Table structure for gallery
-- ----------------------------
DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery`  (
  `id_gallery` int(5) NOT NULL AUTO_INCREMENT,
  `id_album` int(5) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_gallery`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gallery
-- ----------------------------

-- ----------------------------
-- Table structure for halamanstatis
-- ----------------------------
DROP TABLE IF EXISTS `halamanstatis`;
CREATE TABLE `halamanstatis`  (
  `id_halaman` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `judul_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `isi_halaman` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `berkas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_halaman`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 95 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of halamanstatis
-- ----------------------------
INSERT INTO `halamanstatis` VALUES (52, 'Selayang Pandang BKPSDM Kabupaten Ciamis', 'selayang-pandang-bkpsdm-kabupaten-ciamis', '<h3 style=\"text-align:center\"><strong>SELAYANG PANDANG</strong><br />\r\n<strong>BADAN KEPEGAWAIAN DAN PENGEMBANGAN SUMBER DAYA MANUSIA</strong></h3>\r\n\r\n<h3 style=\"text-align:center\"><strong>KABUPATEN CIAMIS</strong></h3>\r\n\r\n<p>Badan Kepegawaian dan Pengembangan Sumber Daya Manusia disingkat BKPSDM Daerah Kabupaten Ciamis dibentuk berdasarkan Peraturan Daerah Nomor 8 Tahun 2016 Tentang Pembentukan dan Susunan Perangkat Daerah yang melaksanakan fungsi penunjang urusan pemerintahan bidang kepegawaian serta pendidikan dan pelatihan, sebelumnya BKPSDM bernama BKDD sesuai dengan Peraturan Daerah Nomor 1 Tahun 2002 tentang Perangkat Daerah Kabupaten Ciamis. Sebelumnya juga fungsi kepegawaian berada di Sekretariat Daerah yaitu di bagian kepegawaian yang dibentuk berdasarkan Peraturan Daerah Kabupaten Ciamis Nomor&nbsp; 2 Tahun 2001 tentang Perangkat Daerah.<br />\r\nBerdasarkan Peraturan Bupati Nomor 36 Tahun 2016 tentang Kedudukan, Tugas, Fungsi, Susunan Organisasi dan TataKerja Perangkat Daerah mengalami penyempurnaan sehingga menjadi :</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>1.</strong></td>\r\n			<td colspan=\"2\"><strong>Kedudukan</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td colspan=\"2\">Badan Kepegawaian dan Pengembangan Sumber&nbsp; Daya Manusia dipimpin oleh Kepala Badan yang berkedudukan di&nbsp; bawah dan bertanggungjawab kepada Bupati melalui Sekretaris Daerah.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2.</strong></td>\r\n			<td colspan=\"2\"><strong>Tugas Pokok</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td colspan=\"2\">Badan Kepegawaian dan Pengembangan Sumber Daya Manusia mempunyai tugas melaksanakan fungsi penunjang urusan pemerintahan bidang kepegawaian serta pendidikan dan pelatihan.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>3.</strong></td>\r\n			<td colspan=\"2\"><strong>Fungsi</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td colspan=\"2\">Badan Kepegawaian dan Pengembangan Sumber Daya Manusia dalam melaksanakan tugas&nbsp; sebagaimana&nbsp; dimaksud pada ayat (2) menyelenggarakan fungsi:</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>a.</td>\r\n			<td>penyusunan kebijakan teknis&nbsp; fungsi penunjang urusan&nbsp; bidang kepegawaian serta pendidikan dan pelatihan&nbsp; sesuai dengan lingkup tugasnya;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>b.</td>\r\n			<td>pelaksanaan tugas dukungan teknis&nbsp; fungsi penunjang urusan&nbsp; bidang kepegawaian serta pendidikan dan pelatihan&nbsp; sesuai dengan lingkup tugasnya;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>c.</td>\r\n			<td>pemantauan, evaluasi, dan pelaporan pelaksanaan tugas dukungan teknis fungsi penunjang urusan&nbsp; bidang&nbsp; kepegawaian serta pendidikan dan pelatihan sesuai dengan lingkup tugasnya;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>d.</td>\r\n			<td>pembinaan teknis penyelenggaraan fungsi penunjang urusan bidang kepegawaian serta pendidikan dan pelatihan&nbsp; sesuai dengan lingkup tugasnya; dan&nbsp; pelaksanaan fungsi&nbsp; lain yang diberikan oleh Bupati terkait dengan tugas dan fungsinya.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>4.</strong></td>\r\n			<td colspan=\"2\"><strong>Susunan Organisasi</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td colspan=\"2\">Susunan Organisasi Badan Kepegawaian dan Pengembangan Sumber Daya Manusia terdiri dari :</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>a.</td>\r\n			<td>Kepala Badan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>b.</td>\r\n			<td>Sekretariat</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>1.&nbsp; Sub Bagian Perencanaan; &nbsp;<br />\r\n			2.&nbsp; Sub Bagian Keuangan; dan<br />\r\n			3.&nbsp; Sub Bagian Umum dan Kepegawaian. .</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>c.</td>\r\n			<td>Bidang&nbsp; Pengadaan, Pemberhentian dan Informasi Kepegawaian, membawahkan:</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>1.&nbsp; Sub Bidang Pengadaan dan Pemberhentian; dan<br />\r\n			2.&nbsp; Sub Bidang Data, Informasi dan Fasilitasi Profesi ASN.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>d.</td>\r\n			<td>Bidang Pengembangan Karier, Mutasi dan Kepangkatan, membawahkan:</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>1.&nbsp; Sub Bidang Pengembangan Karier dan Mutasi; dan<br />\r\n			2.&nbsp; Sub Bidang Kepangkatan.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>e.</td>\r\n			<td>Bidang Pengembangan Kompetensi Aparatur, membawahkan:</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>1.&nbsp; Sub Bidang Pengembangan Kompetensi Manajerial dan Sertifikasi; dan<br />\r\n			2.&nbsp; Sub Bidang Pengembangan Kompetensi Teknis dan Sosial.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>f.</td>\r\n			<td>Bidang Penilaian Kinerja dan Pembinaan Disiplin Aparatur, membawahkan:</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>1.&nbsp; Sub Bidang Penilaian Kinerja Aparatur; dan<br />\r\n			2.&nbsp; Sub Bidang Pembinaan Disiplin Aparatur.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>g.</td>\r\n			<td>Kelompok Jabatan Fungsional</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Sejak pembentukannya berdasarkan Peraturan Daerah Nomor 1 Tahun 2002, Badan Kepegawaian dan Pengembangan Sumber Daya Manusia Kabupaten Ciamis telah dipimpin oleh :</p>\r\n\r\n<p>1.&nbsp; &nbsp;H. Kasman Marto Subrata (Periode 2002-2003)</p>\r\n\r\n<p>2.&nbsp; &nbsp;Drs. H. Tahyadi Ahmad Satibie, MM (Periode 2003-2004)</p>\r\n\r\n<p>3.&nbsp; &nbsp;Drs. H.D. Hidayat K., MM (Periode 2004-2005)</p>\r\n\r\n<p>4.&nbsp; &nbsp;Drs. H. Edi Sukirman (Periode 2005-2007)</p>\r\n\r\n<p>5.&nbsp; &nbsp;Dwiana Agustina, SH, MM (Periode 2007-2009)</p>\r\n\r\n<p>6.&nbsp; &nbsp;Drs. H. Soekiman (Periode 2009-2012)</p>\r\n\r\n<p>7.&nbsp; &nbsp;Drs. H. Yonni Kuswardiono, MH (Periode 2012-2013)</p>\r\n\r\n<p>8.&nbsp; &nbsp;H. Deden Wahidin, SE, MM (Periode 2013- 2014)&nbsp;</p>\r\n\r\n<p>9.&nbsp; &nbsp;H. Tatang, S.Ag, M.Pd (Periode 2014- 2016)&nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>10. Agus Kurnia Kosasih, SH, MS.i (Periode 2016 -2019)</p>\r\n\r\n<p>11. Dra. Hj. Yeyet&nbsp;Trisnayati&nbsp;Trisno&nbsp;(Periode 2019 sampai sekarang)</p>\r\n', '2019-12-08', '', 'admin', 2119, '22:39:38', 'Minggu', '');
INSERT INTO `halamanstatis` VALUES (53, 'Struktur Organisasi BKPSDM Kabupaten Ciamis', 'struktur-organisasi-bkpsdm-kabupaten-ciamis', '<p>.</p>\r\n', '2019-12-08', 'Struktur_Organisasi_Bkpsdm_19_07_2021.jpg', 'admin', 5265, '22:54:03', 'Minggu', '');
INSERT INTO `halamanstatis` VALUES (73, 'Jumlah PNS Oktober 2021', 'jumlah-pns-oktober-2021', '<p>JUMLAH PNS Oktober 2021 = 8.701</p>\r\n', '2020-09-16', 'Grafik_jumlah_pns_10_2021.jpg', 'admin', 781, '13:07:37', 'Rabu', '');
INSERT INTO `halamanstatis` VALUES (54, 'Visi dan Misi Kabupaten Ciamis', 'visi-dan-misi-kabupaten-ciamis', '<p><strong>VISI</strong><br />\r\nMANTAPNYA KEMANDIRIAN EKONOMI SEJAHTERA UNTUK SEMUA<br />\r\n<br />\r\n<strong>MISI</strong></p>\r\n\r\n<p>Meningkatkan Kualitas Sumber Daya Manusia.</p>\r\n\r\n<p>Meningkatkan Ketersediaan Infrastruktur Yang Mendukung Pengembangan Wilayah.</p>\r\n\r\n<p>Mengembangkan Perekonomian Yang Berbasis Ekonomi Kerakyatan, Potensi Unggulan Lokal Dan Pemberdayaan Masyarakat.</p>\r\n\r\n<p>Meningkatkan Kualitas Daya Dukung Lingkungan Untuk Mendukung Pembangunan Berkelanjutan.</p>\r\n\r\n<p>Meningkatkan Tata Kelola Pemerintahan Yang Efektif Dan Efisien.</p>\r\n\r\n<p>Memperkuat Otonomi Desa Dalam Rangka Mewujudkan Kemandirian Masyarakat Dan Desa.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2019-12-08', '', 'admin', 3443, '22:54:53', 'Minggu', '');
INSERT INTO `halamanstatis` VALUES (55, 'Program dan Kegiatan BKPSDM Kabupaten Ciamis', 'program-dan-kegiatan-bkpsdm-kabupaten-ciamis', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>1.</strong></td>\r\n			<td><strong>Program Pengembangan Kompetensi Aparatur</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<ul>\r\n				<li>Pendidikan dan pelatihan prajabatan bagi calon ASN</li>\r\n				<li>Pendidikan dan Pelatihan Struktural bagi ASN</li>\r\n				<li>Diklat Manajerial</li>\r\n				<li>Uji Kompetensi Aparatur</li>\r\n				<li>Diklat Teknis Tugas dan Fungsi Bagi ASN</li>\r\n				<li>Perencanaan Pengembangan kompetensi aparatur</li>\r\n				<li>Pemberian Bantuan Tugas Belajar dan Ikatan Dinas</li>\r\n				<li>Pengelolaan Ijin Belajar dan Tugas Belajar</li>\r\n				<li>Pengelolaan Penawaran Diklat dan Beasiswa Bagi ASN</li>\r\n				<li>Sosialisasi Perundang-undangan</li>\r\n				<li>Koordinasi Penyelenggaraan Diklat</li>\r\n				<li>Monitoring, Evaluasi dan Pelaporan</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2.</strong></td>\r\n			<td><strong>Program Penilaian Kinerja dan Pembinaan Disiplin Aparatur</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<ul>\r\n				<li>Pemberian Penghargaan Bagi ASN yang berprestasi</li>\r\n				<li>Penilaian Prestasi Kerja Pegawai</li>\r\n				<li>Evaluasi dan Pelaporan Hasil Penilaian Kinerja Aparatur</li>\r\n				<li>Pengelolaan Cuti ASN</li>\r\n				<li>Pengelolaan Sistem E-Kinerja</li>\r\n				<li>Proses Penanganan Kasus - Kasus Pelanggaran Disiplin Pegawai</li>\r\n				<li>Pembinaan Disiplin Aparatur</li>\r\n				<li>Pemberian Ijin Perceraian Bagi ASN Di Lingkungan Pemkab Ciamis</li>\r\n				<li>Monitoring dan Evaluasi Pelaksanaan Disiplin Aparatur Pemerintah</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>3.</strong></td>\r\n			<td><strong>Program Pengembangan Karier, Mutasi dan Kepangkatan</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<ul>\r\n				<li>Penataan Sistem Administrasi Kenaikan Pangkat Otomatis ASN</li>\r\n				<li>Pelaksanaan Ujian Dinas dan Ujian Penyesuaian Kenaikan Pangkat</li>\r\n				<li>Penataan Sistem Administrasi PAK Fungsional</li>\r\n				<li>Palantikan Jabatan</li>\r\n				<li>Seleksi Terbuka Jabatan Pimpinan Tinggi</li>\r\n				<li>Penyusunan Rencana Pembinaan Karier ASN</li>\r\n				<li>Pemindahan Tugas ASN</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;<strong>4.&nbsp;&nbsp;</strong></td>\r\n			<td><strong>Program Pengadaan, Pemberhentian dan Informasi Kepegawaian</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<ul>\r\n				<li>Pengadaan Pegawai</li>\r\n				<li>Formasi ASN</li>\r\n				<li>Pengelolaan Pensiun Pegawai</li>\r\n				<li>Pengembangan Media Informasi Kepegawaian</li>\r\n				<li>Pembangunan / Pengembangan Sistem Informasi Kepegawaian Daerah</li>\r\n				<li>Penataan dan Pengolahan Sistem Tata Naskah Pegawai ASN</li>\r\n				<li>Pengumpulan Data / Informasi atau Pendataan</li>\r\n				<li>Pelayanan administrasi kesejahteraan pegawai</li>\r\n				<li>Lembaga Profesi ASN</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>5.&nbsp; &nbsp;</strong></td>\r\n			<td><strong>Program Pelayanan Administrasi Perkantoran&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<ul>\r\n				<li>Penyediaan jasa Komunikasi, Sumber Daya Air dan Listrik</li>\r\n				<li>Penyediaan Jasa Kebersihan kantor</li>\r\n				<li>Penyediaan alat tulis kantor</li>\r\n				<li>Penyediaan barang cetakan dan penggandaan</li>\r\n				<li>Penyediaan komponen Instalasi listrik/ penerangan bangunan kantor</li>\r\n				<li>Penyediaan peralatan dan perlengkapan kantor</li>\r\n				<li>Penyediaan bahan bacaan dan peraturan perundang-undangan</li>\r\n				<li>Penyediaan makan dan minum</li>\r\n				<li>Rapat-rapat koordinasi dan konsultasi keluar daerah</li>\r\n				<li>Rapat-rapat koordinasi di dalam daerah</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>6.&nbsp; &nbsp;</strong></td>\r\n			<td><strong>Program peningkatan sarana dan prasarana aparatur&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<ul>\r\n				<li>Pengadaan Kendaraan Dinas Operasional</li>\r\n				<li>Pengadaan perlengkapan gedung kantor</li>\r\n				<li>Pembangunan Gedung Kantor</li>\r\n				<li>Pengadaan peralatan gedung kantor</li>\r\n				<li>Pengadaan Perlengkapan Kantor</li>\r\n				<li>Pengadaan Peralatan Kantor</li>\r\n				<li>Pengadaan mebeuler</li>\r\n				<li>Pemeliharaan rutin/berkala gedung kantor</li>\r\n				<li>Pemeliharaan rutin/berkala kendaraan dinas/kantor</li>\r\n				<li>Pemeliharaan rutin/berkala peralatan gedung kantor</li>\r\n				<li>Pemeliharaan rutin/berkala peralatan &nbsp;kantor</li>\r\n				<li>Peningkatan Sarana dan Prasarana kantor</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;<strong>7.</strong></td>\r\n			<td><strong>Program Peningkatan &nbsp;Disiplin Aparatur</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<ul>\r\n				<li>Pengadaan pakaian dinas beserta perlengkapannya</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>&nbsp;8.&nbsp;&nbsp;</strong></td>\r\n			<td><strong>Program Peningkatan Kapasitas Sumber daya Aparatur</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<ul>\r\n				<li>Pendidikan dan Pelatihan Formal</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>&nbsp;9.&nbsp;&nbsp;</strong></td>\r\n			<td><strong>Program peningkatan pengembangan sistem pelaporan capaian kinerja keuangan</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<ul>\r\n				<li>Penyusunan laporan capaian kinerja dan ikhtisar realisasi kinerja SKPD</li>\r\n				<li>Penyusunan Laporan Keuangan Semesteran</li>\r\n				<li>Penyusunan Pelaporan Keuangan Akhir &nbsp;Tahun</li>\r\n				<li>Penyusunan Pelaporan Barang Perangkat Daerah</li>\r\n				<li>Penyelenggaraan Sistem Pengendalian Internal Perangkat Daerah</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>&nbsp;10.&nbsp;</strong></td>\r\n			<td><strong>Program Perencanaan dan Penganggaran Perangkat Daerah</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<ul>\r\n				<li>Penyusunan Rencana Kerja Anggaran</li>\r\n				<li>Penyusunan Perencanaan Program dan Kegiatan SKPD</li>\r\n				<li>Penyusunan Rencana Strategis</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2019-12-08', '', 'admin', 1366, '22:55:32', 'Minggu', '');
INSERT INTO `halamanstatis` VALUES (56, 'syarat ijin brlajar', 'syarat-ijin-brlajar', '<p style=\"text-align:center\"><br />\r\n<strong>Hal yang harus diperhatikan</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"table table-striped\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"height:15pt; text-align:center; width:307pt\"><strong>IZIN BELAJAR</strong></td>\r\n			<td colspan=\"2\" style=\"text-align:center; width:306pt\"><strong>TUGAS BELAJAR</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt\">1</td>\r\n			<td>MINIMAL 1 TAHUN SEJAK PNS</td>\r\n			<td>1</td>\r\n			<td>MINIMAL 1 TAHUN SEJAK PNS, (SEJAK PNS U/ PEND. LANGKA)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt\">2</td>\r\n			<td>SKP SEKURANG2NYA BERNILAI BAIK</td>\r\n			<td>2</td>\r\n			<td>SKP SEKURANG2NYA BERNILAI BAIK</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt\">3</td>\r\n			<td>TIDAK HUKDIS DAN PEMBERHENTIAN DR JABATAN</td>\r\n			<td>3</td>\r\n			<td>TIDAK HUKDIS DAN PEMBERHENTIAN DR JABATAN</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt\">4</td>\r\n			<td>PROGRAM STUDI TERAKREDITASI</td>\r\n			<td>4</td>\r\n			<td>PROGRAM STUDI TERAKREDITASI B</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt\">5</td>\r\n			<td>PROGRAM STUDI TIDAK :</td>\r\n			<td>5</td>\r\n			<td>BIDANG ILMU SESUAI ANJAB DAN PERENCANAAN SDM</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt\">&nbsp;</td>\r\n			<td>KELAS JAUH</td>\r\n			<td>&nbsp;</td>\r\n			<td>DI OPD</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt\">&nbsp;</td>\r\n			<td>KELAS SABTU-MINGGU</td>\r\n			<td>6</td>\r\n			<td>USIA MAKSIMAL</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt\">&nbsp;</td>\r\n			<td>KELAS EKSEKUTIF</td>\r\n			<td>&nbsp;</td>\r\n			<td>D1-S1 25 Th&nbsp; 37 Th U/ pendidikan langka</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt\">&nbsp;</td>\r\n			<td>JARAK JAUH (KECUALI UNIVERSITAS TERBUKA)</td>\r\n			<td>&nbsp;</td>\r\n			<td>S2 37 Th&nbsp; 42 Th U/ pendidikan langka</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt\">6</td>\r\n			<td>DILAKSANAKAN DILUAR JAM KERJA</td>\r\n			<td>&nbsp;</td>\r\n			<td>S3 40 Th&nbsp; 47 Th U/ pendidikan langka</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt\">&nbsp;</td>\r\n			<td>5 HARI KERJA :</td>\r\n			<td>7</td>\r\n			<td>JANGKA WAKTU</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt\">&nbsp;</td>\r\n			<td>SENIN-KAMIS DI ATAS PUKUL 15.15 WIB</td>\r\n			<td>&nbsp;</td>\r\n			<td>D1 = 1 TAHUN</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt\">&nbsp;</td>\r\n			<td>JUMAT DIATAS PUKUL 15.30 WIB</td>\r\n			<td>&nbsp;</td>\r\n			<td>D2 = 2 TAHUN</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt\">&nbsp;</td>\r\n			<td>6 HARI KERJA :</td>\r\n			<td>&nbsp;</td>\r\n			<td>D3 = 3 TAHUN</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt\">&nbsp;</td>\r\n			<td>SENIN-KAMIS SETELAH PUKUL 14.00 WIB</td>\r\n			<td>&nbsp;</td>\r\n			<td>D4-S1 =&nbsp; 4 TAHUN</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt\">&nbsp;</td>\r\n			<td>JUMAT SETELAH PUKUL 13.30 WIB</td>\r\n			<td>&nbsp;</td>\r\n			<td>S2 = 2 TAHUN</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt\">&nbsp;</td>\r\n			<td>SABTU SETELAH PUKUL 12.00 WIB</td>\r\n			<td>&nbsp;</td>\r\n			<td>S3 = 4 TAHUN</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt\">7</td>\r\n			<td>ADA PROSES IZIN SELEKSI</td>\r\n			<td>8</td>\r\n			<td>ADA PROSES IZIN SELEKSI</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:15.0pt\">&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>9</td>\r\n			<td>KEWAJIBAN BEKERJA 2 KALI MASA TUGAS BELAJAR</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>A. MASIH KULIAH DAN SUDAH PUNYA IZIN BELAJAR</strong></p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify\">MEMBUAT LAPORAN KEMAJUAN PENDIDIKAN TIAP 1 TAHUN</li>\r\n	<li style=\"text-align:justify\">SETELAH LULUS DAPAT MENGIKUTI UJIAN KENAIKAN<br />\r\n	&nbsp;&nbsp;&nbsp; PANGKAT PENYESUAIAN IJAZAH (BILA BUKAN FUNGSIONAL,<br />\r\n	&nbsp; &nbsp; BILA BELUM PANGKAT PUNCAK)</li>\r\n	<li style=\"text-align:justify\">SETELAH LULUS DAPAT&nbsp; KENAIKAN PANGKAT PENYESUAIAN IJAZAH<br />\r\n	&nbsp;&nbsp;&nbsp; (BILA BELUM PANGKAT PUNCAK)</li>\r\n</ol>\r\n\r\n<p><br />\r\n<strong>B. MASIH KULIAH TETAPI TIDAK PUNYA IZIN BELAJAR</strong></p>\r\n\r\n<ol>\r\n	<li>MENGAJUKAN IZIN BELAJAR (PALING LAMBAT 31 OKT 2014)</li>\r\n	<li>MEMBUAT LAPORAN KEMAJUAN PENDIDIKAN TIAP 1 TAHUN</li>\r\n	<li>SETELAH LULUS DAPAT MENGIKUTI UJIAN KENAIKAN PANGKAT<br />\r\n	&nbsp; &nbsp; PENYESUAIAN IJAZAH(BILA BUKAN FUNGSIONAL,<br />\r\n	&nbsp; &nbsp; BILA BELUM PANGKAT PUNCAK)</li>\r\n	<li>SETELAH LULUS DAPAT&nbsp; KENAIKAN PANGKAT PENYESUAIAN IJAZAH<br />\r\n	&nbsp; &nbsp; (BILA BELUM PANGKAT PUNCAK)</li>\r\n</ol>\r\n\r\n<p><br />\r\n<strong>C. SUDAH LULUS TETAPI TIDAK PUNYA IZIN BELAJAR</strong></p>\r\n\r\n<ol>\r\n	<li>SETELAH LULUS DAPAT MENGIKUTI UJIAN KENAIKAN PANGKAT<br />\r\n	&nbsp; &nbsp; PENYESUAIAN IJAZAH(BILA BUKAN FUNGSIONAL,<br />\r\n	&nbsp;&nbsp;&nbsp; BILA BELUM PANGKAT PUNCAK)</li>\r\n	<li>SETELAH LULUS DAPAT&nbsp; KENAIKAN PANGKAT PENYESUAIAN IJAZAH<br />\r\n	&nbsp;&nbsp; (BILA BELUM PANGKAT PUNCAK)</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n', '2019-12-11', 'about-extra-1.png', 'admin', 1179, '11:23:59', 'Rabu', '');
INSERT INTO `halamanstatis` VALUES (57, 'Syarat Ijin Cerai', 'syarat-ijin-cerai', '<h2>PERSYARATAN PERCERAIAN BAGI PEGAWAI NEGERI SIPIL</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>1.</td>\r\n			<td>Foto Copy Surat Nikah</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2.</td>\r\n			<td>Foto Copy SK Pangkat Terakhir</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3.</td>\r\n			<td>Surat Permintaan Izin Untuk Melakukan Perceraian</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4.</td>\r\n			<td>Surat Pemberitahuan Adanya Gugatan Perceraian Yang Di Tandatangani Pihak Tergugat (Apabila Tergugat PNS)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5.</td>\r\n			<td>Berita Acara Penasehatan Dari BP4 Kecamatan Setempat</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6.</td>\r\n			<td>Surat Pernyataan Bersama Bermaterai Yang Menyatakan Pihak Suami Dan Istri Sepakat Untuk Melakukan Perceraian Yang Diketahui Oleh Pimpinan Unit Kerja</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7.</td>\r\n			<td>Surat Keterangan Dari Lingkungan RT, RW Yang Diketahui Oleh Kepala Desa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8.</td>\r\n			<td>Surat Pengantar Dari Unit Kerja</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><em>*) Persyaratan Dibuat Rangkap 2</em></p>\r\n\r\n<p><em>&nbsp;</em></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2019-12-11', 'about_img.png', 'admin', 1788, '11:26:17', 'Rabu', '');
INSERT INTO `halamanstatis` VALUES (58, 'Jumlah PNS', 'jumlah-pns', '<p style=\"text-align:center\">Jumlah PNS</p>\r\n', '2020-01-13', 'Grafik_PNS_All_12_20191.jpg', 'admin', 1243, '12:45:46', 'Senin', '');
INSERT INTO `halamanstatis` VALUES (59, 'Statistik Golongan Ruang 12 2019', 'statistik-golongan-ruang-12-2019', '<p>.</p>\r\n', '2020-01-13', 'Grafik_gol_ruang_12_20191.jpg', 'admin', 553, '12:50:37', 'Senin', '');
INSERT INTO `halamanstatis` VALUES (61, 'Grafik Eselon 12 2019', 'grafik-eselon-12-2019', '<p>.</p>\r\n', '2020-01-13', 'Grafik_eselon_12_2019.jpg', 'admin', 1064, '12:55:27', 'Senin', '');
INSERT INTO `halamanstatis` VALUES (62, 'Grafik Agama 12 2019', 'grafik-agama-12-2019', '<p>.</p>\r\n', '2020-01-13', 'Grafik_agama_12_2019.jpg', 'admin', 427, '12:55:51', 'Senin', '');
INSERT INTO `halamanstatis` VALUES (63, 'Garfik Jenis Kelamin 12 2019', 'garfik-jenis-kelamin-12-2019', '<p>.</p>\r\n', '2020-01-13', 'Grafik_jenis_kelamin12_2019.jpg', 'admin', 475, '12:56:21', 'Senin', '');
INSERT INTO `halamanstatis` VALUES (64, 'Grafik Usia 12 2019', 'grafik-usia-12-2019', '<p>.</p>\r\n', '2020-01-13', 'Grafik_usia12_2019.jpg', 'admin', 842, '12:56:46', 'Senin', '');
INSERT INTO `halamanstatis` VALUES (65, 'Grafik Pendidikan 12 2019', 'grafik-pendidikan-12-2019', '<p>.</p>\r\n', '2020-01-13', 'Grafik_pendidikan_12_20192.jpg', 'admin', 1061, '13:06:20', 'Senin', '');
INSERT INTO `halamanstatis` VALUES (66, 'Persyaratan Pensiun', 'persyaratan-pensiun', '<h2><strong>Persyaratan Pensiun</strong></h2>\r\n\r\n<p><strong>Bahan administrasi yang harus disiapkan :</strong></p>\r\n\r\n<p>1. Surat permohonan pensiun<br />\r\n2. Foto Copy Kartu Pegawai<br />\r\n3. Foto Copy SK Pertama / SK Calon Pegawai Negeri Sipil<br />\r\n4. Foto Copy SK Pegawai Negeri Sipil<br />\r\n5. Foto Copy SK Pangkat terakhir<br />\r\n6. Foto Copy Gaji berkala terakhir<br />\r\n7. Foto Copy perincian gaji terakhir<br />\r\n8. Surat Pernyataan tidak pernah dijatuhi hukuman disiplin tingkat sedang/berat<br />\r\n9. Surat Pernyataan tidak menyimpan barang-barang milik negara<br />\r\n10.Daftar Riwayat Pekerjaan<br />\r\n11.Daftar Keluarga<br />\r\n12.Foto Copy Karis / Karsu<br />\r\n13.Foto Copy Surat Nikah<br />\r\n14.Foto Copy Surat kelahiran anak<br />\r\n15.Surat Keterangan anak masih sekolah / kuliah<br />\r\n16.Pas poto ukuran 4 x 6 cm sebanyak 5 lembar<br />\r\n17.DPCP (Daftar Perorangan Calon Penerima Pensiun)<br />\r\n18. SKP&nbsp; 2 tahun terakhir</p>\r\n', '2020-01-16', '', 'admin', 1682, '11:27:23', 'Kamis', '');
INSERT INTO `halamanstatis` VALUES (67, 'Surat Ijin Cuti', 'surat-ijin-cuti', '<h2>Contoh Format Surat izin cuti</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>KOP SURAT</p>\r\n\r\n<table style=\"width:692px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Kepada</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Yth.</td>\r\n			<td>Bapak Bupati Ciamis</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Melalui :</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Kepala Badan Kepegawaian dan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Pengembangan Sumber Daya Manusia</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Di</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp; C I A M I S</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Yang bertanda tangan dibawah ini :</p>\r\n\r\n<table style=\"width:692px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Nama</td>\r\n			<td>:</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nip</td>\r\n			<td>:</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pangkat/Gol. Ruang</td>\r\n			<td>:</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jabatan</td>\r\n			<td>:</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Satuan Organisasi</td>\r\n			<td>:</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Dengan ini mengajukan permintaan Cuti untuk .................... tahun ..... hari ...., terhitung mulai tanggal ........... sampai dengan tanggal ...................<br />\r\nSelama menjalankan Cuti alamat saya adalah ...........................</p>\r\n\r\n<p>Demikian permintaan ini saya buat untuk dapat dipertmbangkan sebagaimana mestinya.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Hormat saya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (......................................)</p>\r\n', '2020-01-16', '', 'admin', 1033, '11:29:17', 'Kamis', '');
INSERT INTO `halamanstatis` VALUES (68, 'Revisi NIP', 'revisi-nip', '<ol>\r\n	<li>FHOTOCOPY KONVERSI NIP</li>\r\n	<li>FHOTOCOPY SK CPNS</li>\r\n	<li>FHOTOCOPY SK PNS</li>\r\n	<li>FHOTOCOPY IJASAH WAKTU PENGANGKATAN CPNS</li>\r\n</ol>\r\n', '2020-01-16', '', 'admin', 3, '12:24:58', 'Kamis', '');
INSERT INTO `halamanstatis` VALUES (69, 'Simpeg', 'simpeg', '<h2>Kelengkapan Berkas Data Pegawai Yang Harus Dilengkapi / Disertakan Bersama Dengan Pengisian FORM_1 SIMPEG</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>1.</td>\r\n			<td>FHOTOCOPY KARTU PEGAWAI (KARPEG)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2.</td>\r\n			<td>FHOTOCOPY KARTU PEGAWAI ELEKTRONIK (KPE)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3.</td>\r\n			<td>FHOTOCOPY KARTU TASPEN</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4.</td>\r\n			<td>FHOTOCOPY KARIS/ KARSU</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5.</td>\r\n			<td>FHOTOCOPY SK PERTAMA (CPNS)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6.</td>\r\n			<td>FHOTOCOPY SK PNS (100%)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7.</td>\r\n			<td>FHOTOCOPY SK PANGKAT PERTAMA SAMPAI TERAKHIR</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8.</td>\r\n			<td>FHOTOCOPY KTP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9.</td>\r\n			<td>FHOTOCOPY SASARAN KERJA PEGAWAI (SKP)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10.</td>\r\n			<td>FHOTOCOPY PAK LAMA (Bagi Jabatan Fungsional)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11.</td>\r\n			<td>FHOTOCOPY STTPL KEDINASAN SESUAI JUMLAH YANG DIUSULKAN (Bagi Jabatan Fungsional)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12.</td>\r\n			<td>FHOTOCOPY IJAZAH TERAKHIR</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13.</td>\r\n			<td>FHOTOCOPY SK PENGANGKATAN dalam JABATAN STRUKTURAL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14.</td>\r\n			<td>FHOTOCOPY SK PELANTIKAN BAGI PEJABAT ESSELON V,IV,III, DAN II</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15.</td>\r\n			<td>FHOTOCOPY STTPL DIKLAT PENJENJANGAN</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16.</td>\r\n			<td>FHOTOCOPY SK JABATAN LAMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17.</td>\r\n			<td>FHOTOCOPY SK KGB TERAKHIR</td>\r\n		</tr>\r\n		<tr>\r\n			<td>18.</td>\r\n			<td>FHOTOCOPY PIAGAM PENGHARGAAN (SATYALANCANA dll)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>19.</td>\r\n			<td>FHOTOCOPY STTPL KURSUS, DIKLAT TEKNIS/FUNGSIONAL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20.</td>\r\n			<td>DAFTAR RIWAYAT PEKERJAAN (Bagi Yang Akan Naik Tingkat)</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>Catatan :</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Berkas/ Dokumen tersebut dibuat Rangkap 1 (Satu)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Dimasukan ke Dalam Map, diberi Nama dan NIP</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><a href=\"https://drive.google.com/open?id=123cBDOFo8M0DwvairZ1ydY2mrupRjSlT\"><strong>Download blangko Form&nbsp;Simpeg</strong></a></p>\r\n', '2020-01-16', '', 'admin', 3218, '12:29:50', 'Kamis', '');
INSERT INTO `halamanstatis` VALUES (72, 'Statistik Golongan Ruang 08 2020', 'statistik-golongan-ruang-08-2020', '', '2020-09-16', 'PNS_GOL_RUANG_08_20201.jpg', 'admin', 748, '13:03:18', 'Rabu', '');
INSERT INTO `halamanstatis` VALUES (71, 'Informasi Publik', 'informasi-publik', '', '2020-03-27', '', 'admin', 4, '09:22:37', 'Jumat', '');
INSERT INTO `halamanstatis` VALUES (74, 'Grafik Pendidikan Agustus 2020', 'grafik-pendidikan-agustus-2020', '<p>-</p>\r\n', '2020-09-16', 'PNS_PENDIDIKAN_08_2020.jpg', 'admin', 964, '13:13:20', 'Rabu', '');
INSERT INTO `halamanstatis` VALUES (75, 'Grafik Eselon Agustus 2020', 'grafik-eselon-agustus-2020', '<p>-</p>\r\n', '2020-09-16', 'PNS_ESELON_08_2020.jpg', 'admin', 833, '13:29:05', 'Rabu', '');
INSERT INTO `halamanstatis` VALUES (76, 'Grafik Agama Agustus 2020', 'grafik-agama-agustus-2020', '<p>-</p>\r\n', '2020-09-16', 'PNS_AGAMA_08_2020.jpg', 'admin', 849, '14:29:08', 'Rabu', '');
INSERT INTO `halamanstatis` VALUES (77, 'Grafik Usia Agustus 2020', 'grafik-usia-agustus-2020', '<p>-</p>\r\n', '2020-09-16', 'PNS_USIA_08_2020.jpg', 'admin', 975, '14:32:21', 'Rabu', '');
INSERT INTO `halamanstatis` VALUES (78, 'Grafik Jenis Kelamin Agustus 2020', 'grafik-jenis-kelamin-agustus-2020', '<p>-</p>\r\n', '2020-09-16', 'PNS_JENIS_KELAMIN_08_2020.jpg', 'admin', 1005, '14:35:01', 'Rabu', '');
INSERT INTO `halamanstatis` VALUES (79, 'Bagian Perencanaan ', 'bagian-perencanaan-', '<p>Rencana Strategis (RENSTRA) Badan Kepegawaian dan Pengembangan Sumber Daya Manusia Kabupaten Ciamis , Tahun 2019-2024&nbsp;</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Rencana_Strategis_Tahun_2019-2024_BKPSDM_Ciamis.pdf\" target=\"_blank\"><input type=\"button\" value=\"Download\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Rencana Kerja&nbsp;Badan Kepegawaian dan Pengembangan Sumber Daya Manusia Kabupaten Ciamis,&nbsp;Tahun 2020</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Rencana_Kerja_Tahun_2020_BKPSDM_Ciamis.pdf\" target=\"_blank\"><input type=\"button\" value=\"Download\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Laporan Kinerja Instansi Pemerintah Badan Kepegawaian dan Pengembangan Sumber Daya Manusia Tahun 2019&nbsp;</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/LKIP_2019_opt.pdf\" target=\"_blank\"><input type=\"button\" value=\"Download\" /></a></p>\r\n', '2020-09-24', '', 'admin', 770, '10:07:12', 'Kamis', '');
INSERT INTO `halamanstatis` VALUES (80, 'Bagian Keuangan', 'bagian-keuangan', '<p>LRA&nbsp;Badan Kepegawaian dan Pengembangan Sumber Daya Manusia Kabupaten Ciamis, tahun</p>\r\n\r\n<p>DOWNLOAD</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NERACA&nbsp;Badan Kepegawaian dan Pengembangan Sumber Daya Manusia Kabupaten Ciamis, tahun</p>\r\n\r\n<p>DOWNLOAD</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>CALK&nbsp;Badan Kepegawaian dan Pengembangan Sumber Daya Manusia Kabupaten Ciamis, tahun</p>\r\n\r\n<p>DOWNLOAD</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-09-24', '', 'admin', 587, '10:10:59', 'Kamis', '');
INSERT INTO `halamanstatis` VALUES (81, 'Bagian Kepegawaian dan Umum', 'bagian-kepegawaian-dan-umum', '<p>Sarana dan Prasarana&nbsp;Badan Kepegawaian dan Pengembangan Sumber Daya Manusia Kabupaten Ciamis, September 2020</p>\r\n\r\n<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/Sarana_dan_Prasarana.pdf\" target=\"_blank\"><input type=\"button\" value=\"Download\" /></a></p>\r\n', '2020-09-24', '', 'admin', 1006, '10:11:32', 'Kamis', '');
INSERT INTO `halamanstatis` VALUES (82, 'Kepala BKPSDM 1', 'kepala-bkpsdm-1', '<p>.</p>\r\n', '2020-09-24', 'Tupoksi_kepala_BKPSDM_02.png', 'admin', 1315, '12:48:20', 'Kamis', '');
INSERT INTO `halamanstatis` VALUES (84, 'Sekretaris BKPSDM', 'sekretaris-bkpsdm', '<p>.</p>\r\n', '2020-09-24', 'tupoksi_sekretaris_2021.png', 'admin', 987, '14:22:26', 'Kamis', '');
INSERT INTO `halamanstatis` VALUES (83, 'Kepala BKPSDM', 'kepala-bkpsdm', '<h2>Kepala Badan Kepegawaian dan Pengembangan Sumber Daya Manusia Kabupaten Ciamis</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Nama</td>\r\n			<td>:</td>\r\n			<td><strong>Dra. Hj. YEYET TRISNAYATI TRISNO</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pangkat (Golongan/Ruang)</td>\r\n			<td>:</td>\r\n			<td>Pembina Utama Muda, IV/c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NIP</td>\r\n			<td>:</td>\r\n			<td>19611228 198703 2 003</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Jabatan</td>\r\n			<td>:</td>\r\n			<td>Kepala Badan Kepegawaian dan Pengembangan Sumber Daya Manusia</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>(Berdasarkan Peraturan Bupati Ciamis Nomor 61 Tahun 2016 tentang Tugas, Fungsi dan Tata Kerja Unsur Organisasi Badan Kepegawaian dan Pengembangan Sumber Daya Manusia)</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>(1)</td>\r\n			<td colspan=\"2\">Badan Kepegawaian dan Pengembangan Sumber Daya Manusia merupakan unsur pelaksana fungsi penunjang urusan pemerintahan bidang kepegawaian serta pendidikan dan pelatihan.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>(2)</td>\r\n			<td colspan=\"2\">Kepala&nbsp;&nbsp; &nbsp;Badan&nbsp;&nbsp; &nbsp;Kepegawaian&nbsp;&nbsp; &nbsp;dan&nbsp;&nbsp; &nbsp;Pengembangan&nbsp;&nbsp; &nbsp;Sumber&nbsp;&nbsp; &nbsp;Daya&nbsp;&nbsp; &nbsp;Manusia<br />\r\n			mempunyai tugas membantu Bupati melaksanakan fungsi penunjang urusan pemerintahan bidang kepegawaian serta pendidikan dan pelatihan.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>(3)</td>\r\n			<td colspan=\"2\">Kepala&nbsp; Badan&nbsp; Kepegawaian&nbsp; dan Pengembangan Sumber Daya Manusia dalam melaksanakan tugas sebagaimana dimaksud pada ayat (2) menyelenggarakan fungsi:</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>a.</td>\r\n			<td>penyusunan kebijakan teknis fungsi penunjang urusan bidang kepegawaian serta pendidikan dan pelatihan&nbsp; sesuai dengan lingkup tugasnya;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>b.</td>\r\n			<td>pelaksanaan tugas dukungan teknis fungsi penunjang urusan bidang kepegawaian serta pendidikan dan pelatihan&nbsp; sesuai dengan&nbsp; lingkup tugasnya;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>c.</td>\r\n			<td>pemantauan, evaluasi, dan pelaporan pelaksanaan tugas dukungan teknis fungsi penunjang urusan bidang&nbsp; kepegawaian serta pendidikan dan pelatihan sesuai dengan lingkup tugasnya;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>d.</td>\r\n			<td>pembinaan teknis penyelenggaraan fungsi penunjang urusan bidang kepegawaian serta pendidikan dan pelatihan&nbsp; sesuai dengan lingkup tugasnya dan pelaksanaan fungsi&nbsp; lain yang diberikan oleh Bupati terkait dengan tugas dan fungsinya;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2020-09-24', '', 'admin', 19, '12:59:31', 'Kamis', '');
INSERT INTO `halamanstatis` VALUES (85, 'Standar Pelayanan Publik BKPSDM', 'standar-pelayanan-publik-bkpsdm', '<p><strong>STANDAR PELAYANAN PUBLIK</strong> <a href=\"https://drive.google.com/file/d/1PNASY8yVPzJgSsYWcJt22y36SV8hbC58/view?usp=sharing\" target=\"_blank\"><input name=\"Download\" type=\"button\" value=\"Download\" /></a></p>\r\n\r\n<p><strong>JENIS/PRODUK LAYANAN</strong></p>\r\n\r\n<ol>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/01_Pemberian_Bantuan_Pendidikan_.pdf\" target=\"_blank\">Pemberian Bantuan Pendidikan Lanjutan</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/02_Fasilitasi_Izin_Seleksi_Tugas_Belajar.pdf\" target=\"_blank\">Fasilitasi Izin Seleksi Tugas Belajar</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/03_Fasilitasi_Tugas_Belajar.pdf\" target=\"_blank\">Fasilitasi Tugas Belajar</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/04_Pemberian_Informasi_Pendidikan_dan_Pelatihan_serta_Beasiswa.pdf\" target=\"_blank\">Pemberian Informasi Pendidikan dan Pelatihan serta Beasiswa</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/05_Pelatihan_Teknis_dan_Sosio_Kultural.pdf\" target=\"_blank\">Pelatihan Teknis dan Sosio Kultural</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/06_Pelatihan_Kepemimpinan.pdf\" target=\"_blank\">Pelatihan Kepemimpinan</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/07_Pelatihan_Dasar_CPNS.pdf\" target=\"_blank\">Pelatihan Dasar CPNS</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/08_Pelatihan_Manajerial_dan_Fungsional_.pdf\" target=\"_blank\">Pelatihan Manajerial dan Fungsional</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/09_Penerbitan_SK_pengangkatan,_pemindahan_dan_pemberhentian_jabatan_fungsional_PNS.pdf\" target=\"_blank\">Penerbitan SK pengangkatan, pemindahan dan pemberhentian jabatan fungsional PNS</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/10_Penerbitan_SK_kenaikan_dan_alih_kategori_jabatan_fungsional_PNS.pdf\" target=\"_blank\">Penerbitan SK kenaikan dan alih kategori jabatan fungsional PNS</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/11_Penerbitan_SK_pengangkatan,_pemindahan_dan_pemberhentian_JPTP,_administrator_dan_pengawas.pdf\" target=\"_blank\">Penerbitan SK pengangkatan, pemindahan dan pemberhentian jabatan pimpinan tinggi pratama, jabatan administrator dan jabatan pengawas</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/12_Penerbitan_SK_pengangkatan_dan_penugasan_PNS_di_pemerintah_kab_ciamis.pdf\" target=\"_blank\">Penerbitan SK pengangkatan dan penugasan PNS di lingkungan pemerintah kabupaten ciamis (perpindahan antar instansi)</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/13_Penerbitan_surat_persetujuan_mutasi_PNS.pdf\" target=\"_blank\">Penerbitan surat persetujuan mutasi PNS</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/14_Penerbitan_surat_permintaan_persetujuan_mutasi_PNS.pdf\">Penerbitan surat permintaan persetujuan mutasi PNS</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/15_Penerbitan_Surat_PLT_dan_PLH_(kepala_SKPD)).pdf\">Penerbitan Surat PLT dan PLH (kepala SKPD)</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/16_Penerbitan_SK_nomenklatur_jabatan_pelaksana.pdf\">Penerbitan SK nomenklatur jabatan pelaksana</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/17_Penerbitan_SK_kenaikan_pangkat_PNS_(golongan_I,_II_dan_III).pdf\">Penerbitan SK kenaikan pangkat PNS (golongan I, II dan III)</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/18_Penerbitan_surat_kenaikan_gaji_berkala_PNS_(jabatan_pimpinan_tinggi,_jabatan_administrasi).pdf\">Penerbitan surat kenaikan gaji berkala PNS (jabatan pimpinan tinggi, jabatan administrasi)</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/19_Penerbitan_surat_tanda_lulus_UDIN_dan_UPKP.pdf\">Penerbitan surat tanda lulus UDIN dan UPKP</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/20_Penerbitan_Surat_Pencantuman_gelarPangkat_Pendidikan.pdf\">Penerbitan Surat Pencantuman gelar/Pangkat Pendidikan</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/21_Penerbitan_Surat_Izin_Pencalonan_Kepala_Desa.pdf\">Penerbitan Surat Izin Pencalonan Kepala Desa</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/22_Fasilitasi_PensiunPemberhentian.pdf\">Fasilitasi Pensiun/Pemberhentian</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/23_Fasilitasi_penerbitan_Kartu_Pegawai_(KARPEG).pdf\">Fasilitasi penerbitan Kartu Pegawai (KARPEG)</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/24_Fasilitasi_Kartu_Istrisuami.pdf\">Fasilitasi Kartu Istri/suami</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/25_Fasilitasi_pengadaan_ASN.pdf\">Fasilitasi pengadaan ASN</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/26_Penerbitan_Surat_Izin_Cuti.pdf\">Penerbitan Surat Izin Cuti</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/27_Penerbitan_Izin_Cerai_PNSIzin_Pernikahan_Kedua_dan_seterusnya_bagi_PNS_pria.pdf\">Penerbitan Izin Cerai PNS/Izin Pernikahan Kedua dan seterusnya bagi PNS pria</a></li>\r\n	<li><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/28_Fasilitasi_penganugerahan_SLKS_(Satya_Lencana_Karya_Satya)_kepada_PNS.pdf\">Fasilitasi penganugerahan SLKS (Satya Lencana Karya Satya) kepada PNS</a></li>\r\n</ol>\r\n', '2021-06-08', 'standar_pelayanan_publik.jpg', 'admin', 727, '11:17:51', 'Selasa', '');
INSERT INTO `halamanstatis` VALUES (93, 'REFORMASI BIROKRASI', 'reformasi-birokrasi', '<p>ISI HALAMAN REFORMASI BIROKRASI</p>\r\n', '2022-06-09', '', 'admin', 30, '21:09:40', 'Kamis', '');
INSERT INTO `halamanstatis` VALUES (94, 'rekap dan info koin kepuasan masyarakat', 'rekap-dan-info-koin-kepuasan-masyarakat', '<p><a href=\"https://bkpsdm.ciamiskab.go.id/download/file/rekap_dan_info_koin_kepuasan_masyarakat_januari_-mei_2022.pdf\" target=\"_blank\"><input name=\"Download\" type=\"button\" value=\"Download\" /></a></p>\r\n', '2022-06-24', 'rekap.png', 'admin', 34, '14:32:22', 'Jumat', '');
INSERT INTO `halamanstatis` VALUES (86, 'Maklumat Pelayanan', 'maklumat-pelayanan', '<p><strong>MAKLUMAT PELAYANAN</strong></p>\r\n\r\n<p>&quot;KAMI SELURUH ASN BADAN KEPEGAWAIAN DAN PENGEMBANGAN SUMBER DAYA MANUSIA KABUPATEN CIAMIS SIAP MENYELENGGARAKAN PELAYANAN KEPEGAWAIAN SESUAI DENGAN STANDAR PELAYANAN YANG TELAH DITETAPKAN DAN APABILA TIDAK MENEPATI JANJI INI, KAMI SIAP MENERIMA SANKSI SESUAI PERATURAN PERUNDANG-UNDANGAN YANG BERLAKU&quot;</p>\r\n', '2021-06-10', 'maklumat.png', 'admin', 464, '08:25:20', 'Kamis', '');
INSERT INTO `halamanstatis` VALUES (87, 'Pengelola Pengaduan', 'pengelola-pengaduan', '<p>&nbsp;</p>\r\n\r\n<p><strong>SARANA PENGADUAN&nbsp; &nbsp;</strong><a href=\"https://drive.google.com/file/d/1xT0xfjj2dzoDRLQEmKUYPAib9ghuyPvK/view?usp=sharing\" target=\"_blank\"><u>DOWNLOAD</u></a></p>\r\n\r\n<p><strong>PEJABAT PENGELOLA PENGADUAN&nbsp; &nbsp;&nbsp;</strong><a href=\"https://drive.google.com/file/d/1h2SlipSabIyL2CpAbXKwTLVXKx3nr7Tu/view?usp=sharing\" target=\"_blank\"><u>DOWNLOAD</u></a></p>\r\n\r\n<p><strong>SISTEM/MEKANISME PENGELOLAAN PENGADUAN&nbsp; &nbsp;&nbsp;</strong><a href=\"https://drive.google.com/file/d/1QjQd6AWkPYzIDlnBjA_a73TTmlgknXGr/view?usp=sharing\" target=\"_blank\"><u>DOWNLOAD</u></a></p>\r\n', '2021-06-10', 'cover.jpg', 'admin', 391, '08:45:05', 'Kamis', '');
INSERT INTO `halamanstatis` VALUES (88, 'Sarana, Prasarana dan Fasilitas', 'sarana-prasarana-dan-fasilitas', '<p>&nbsp;</p>\r\n\r\n<p>RUANG TUNGGU&nbsp; &nbsp;<a href=\"https://drive.google.com/file/d/1glsFUsOypcLtvfttevxTc6dyPyJi5vEH/view?usp=sharing\" target=\"_blank\"><u>DOWNLOAD</u></a></p>\r\n\r\n<p>TOILET&nbsp; &nbsp; &nbsp;<a href=\"https://drive.google.com/file/d/1qtKlb087q96vc-8cAwEOloP4CX2vjc3S/view?usp=sharing\" target=\"_blank\"><u>DOWNLOAD</u></a></p>\r\n\r\n<p>LOKET/MEJA LAYANAN&nbsp; &nbsp;&nbsp;<a href=\"https://drive.google.com/file/d/1oigfTiL_Na9VeNqSKe5vU1s16n8lA_ju/view?usp=sharing\" target=\"_blank\"><u>DOWNLOAD</u></a></p>\r\n', '2021-06-10', 'cover1.jpg', 'admin', 384, '09:14:47', 'Kamis', '');
INSERT INTO `halamanstatis` VALUES (89, 'Pelayayan Khusus Disabilitas ', 'pelayayan-khusus-disabilitas-', '<p>.</p>\r\n', '2021-06-10', 'pelayayan_khusus_disabilitas2.jpg', 'admin', 347, '11:17:43', 'Kamis', '');
INSERT INTO `halamanstatis` VALUES (90, 'Penilaian Kinerja Pelayanan Publik', 'penilaian-kinerja-pelayanan-publik', '<p>.</p>\r\n', '2021-06-10', 'PENILAIAN_KINERJA1.jpg', 'admin', 497, '12:57:30', 'Kamis', '');
INSERT INTO `halamanstatis` VALUES (91, 'Visi, Misi dan Moto Pelayanan', 'visi-misi-dan-moto-pelayanan', '<p>.</p>\r\n', '2021-06-10', 'visi_dan_misi2.jpg', 'admin', 492, '13:26:44', 'Kamis', '');
INSERT INTO `halamanstatis` VALUES (92, 'Pencegahan Penyebaran Covid-19 di Lokasi Layanan', 'pencegahan-penyebaran-covid19-di-lokasi-layanan', '<p>.</p>\r\n', '2021-06-10', 'pencegahan_covid_19.jpg', 'admin', 360, '14:04:59', 'Kamis', '');

-- ----------------------------
-- Table structure for header
-- ----------------------------
DROP TABLE IF EXISTS `header`;
CREATE TABLE `header`  (
  `id_header` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_header`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 34 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of header
-- ----------------------------
INSERT INTO `header` VALUES (31, 'Header3', '', 'header3.jpg', '2011-04-06');
INSERT INTO `header` VALUES (32, 'Header2', '', 'header1.jpg', '2011-04-06');
INSERT INTO `header` VALUES (33, 'Header1', '', 'header2.jpg', '2011-04-06');

-- ----------------------------
-- Table structure for hubungi
-- ----------------------------
DROP TABLE IF EXISTS `hubungi`;
CREATE TABLE `hubungi`  (
  `id_hubungi` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `pesan` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `lampiran` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_hubungi`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hubungi
-- ----------------------------

-- ----------------------------
-- Table structure for identitas
-- ----------------------------
DROP TABLE IF EXISTS `identitas`;
CREATE TABLE `identitas`  (
  `id_identitas` int(5) NOT NULL AUTO_INCREMENT,
  `nama_website` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `meta_keyword` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `favicon` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `maps` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_identitas`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of identitas
-- ----------------------------
INSERT INTO `identitas` VALUES (1, 'Portal BKPSDM Kabupaten Ciamis', 'bkpsdm.ciamis@gmail.com', 'http://bkpsdm.ciamiskab.go.id', 'https://www.facebook.com/bkpsdm.ciamis, https://twitter.com/bkpsdm_ciamis, https://www.instagram.com/bkpsdmciamis, https://plus.google.com/,', '', '0265776659', 'Menyajikan berita terbaru, tercepat, dan terpercaya seputar informasi Ciamis.', 'Selamat datang di Portal Web BKPSDM Ciamis, adalah penyempurnaan dan perbaikan dari portal web sebelumnya.', 'logo-ciamis.png', 'https://goo.gl/maps/WspQ2GHZrteAYZ8XA');

-- ----------------------------
-- Table structure for iklanatas
-- ----------------------------
DROP TABLE IF EXISTS `iklanatas`;
CREATE TABLE `iklanatas`  (
  `id_iklanatas` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `source` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_iklanatas`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 41 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of iklanatas
-- ----------------------------
INSERT INTO `iklanatas` VALUES (40, 'Portal Website BKPSDM Kabupaten Ciamis', 'admin', 'http://bkpsdm.ciamiskab.go.id', '', 'banner_bupati_baru.png', '2022-07-13');

-- ----------------------------
-- Table structure for iklantengah
-- ----------------------------
DROP TABLE IF EXISTS `iklantengah`;
CREATE TABLE `iklantengah`  (
  `id_iklantengah` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `source` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `posisi` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_iklantengah`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of iklantengah
-- ----------------------------

-- ----------------------------
-- Table structure for katajelek
-- ----------------------------
DROP TABLE IF EXISTS `katajelek`;
CREATE TABLE `katajelek`  (
  `id_jelek` int(11) NOT NULL AUTO_INCREMENT,
  `kata` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NULL DEFAULT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ganti` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_jelek`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of katajelek
-- ----------------------------
INSERT INTO `katajelek` VALUES (4, 'sex', '', 's**');
INSERT INTO `katajelek` VALUES (2, 'bajingan', '', 'b*******');
INSERT INTO `katajelek` VALUES (3, 'bangsat', '', 'b******');
INSERT INTO `katajelek` VALUES (5, 'fuck', 'admin', 'f**k');
INSERT INTO `katajelek` VALUES (6, 'pantat', 'admin', 'p****t');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int(10) NOT NULL,
  `gambar_utama` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_kategori`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (1, 'Teknologi Informasi', 'admin', 'teknologi-informasi', 'Y', 0, '');
INSERT INTO `kategori` VALUES (2, 'Berita', 'admin', 'berita', 'Y', 0, '');
INSERT INTO `kategori` VALUES (3, 'Pengumuman', 'admin', 'pengumuman', 'Y', 0, '');
INSERT INTO `kategori` VALUES (4, 'Event', 'admin', 'event', 'Y', 0, '');
INSERT INTO `kategori` VALUES (5, 'Kesehatan', 'admin', 'kesehatan', 'Y', 0, '');
INSERT INTO `kategori` VALUES (6, 'Organisasi', 'admin', 'organisasi', 'Y', -5, '');

-- ----------------------------
-- Table structure for komentar
-- ----------------------------
DROP TABLE IF EXISTS `komentar`;
CREATE TABLE `komentar`  (
  `id_komentar` int(5) NOT NULL AUTO_INCREMENT,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_komentar`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1184 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of komentar
-- ----------------------------
INSERT INTO `komentar` VALUES (1, 5, 'Rifki', '', 'Berita tentang jadwal tes dan tgl serta jam tes nya kapan min untuk cpns 2019 kab.ciamis', '2020-01-21', '17:32:54', 'N', 'Rifkimrf016@gmail.com');
INSERT INTO `komentar` VALUES (2, 4, 'Dian purnama Sari', 'dianpurnamasari2911@gmail.com', 'Pak pengumuman jadwal skd SDH ada?', '2020-01-22', '04:13:11', 'N', 'dianpurnamasari2911@gmail.com');
INSERT INTO `komentar` VALUES (27, 22, 'wiyah', '', 'hasil SKD CAT tgl 17 Februari tahun 2020 sudah ada? info yang di atas link nya masih kosong.', '2020-02-18', '11:50:19', 'N', 'sitirubaeahadawiyah@gmail.com');
INSERT INTO `komentar` VALUES (28, 22, 'Fauzi', '', 'Alhamdulillaah..', '2020-02-18', '13:05:59', 'N', 'fanelfauzi@gmail.com');
INSERT INTO `komentar` VALUES (29, 22, 'Alya', '', 'Belum bisa didownload, Min.. ', '2020-02-18', '15:25:12', 'N', 'alyahendayana04@gmail.com');
INSERT INTO `komentar` VALUES (30, 22, 'SITI SOPIAH', '', 'hasil tes cpns', '2020-02-18', '15:25:22', 'N', 'sopiahsiti229@gmail.com');
INSERT INTO `komentar` VALUES (32, 22, 'Budianto', '', 'Sabar..  Semua ada waktunya. \r\nHasilnya masih d proses. \r\nSemangat para pejuang NIP', '2020-02-19', '09:12:27', 'N', 'Dianbudaianto22@gmail.com');
INSERT INTO `komentar` VALUES (33, 22, 'Eva', 'Eva octavia', 'File nya belum bisa di buka ya', '2020-02-19', '09:18:36', 'N', 'Octaviaeva06@gmail.com');
INSERT INTO `komentar` VALUES (36, 22, 'Meri Siti Maryam', 'Merismaryam@blogspot.com', 'Min , yang tanggal 16 Februari , gak bisa di download . Kenapa yah ?', '2020-02-21', '03:14:57', 'N', 'merimaryam34@gmail.com');
INSERT INTO `komentar` VALUES (64, 22, 'TS', '', 'Pengumuman yg lolos SKB kapan min?', '2020-03-23', '07:20:57', 'N', 'triasartika4@gmail.co.');
INSERT INTO `komentar` VALUES (43, 22, 'Ira', '', 'Kok nama saya ga ada ya di hasil CAT tgl 16 Februari, padahal nilai saya di atas ambang batas. Waktu lihat setelah tes di Tasik saya ada di peringkat 23, tapi disini ga ada', '2020-02-27', '07:43:23', 'N', 'iramiranthy85@gmail.com');
INSERT INTO `komentar` VALUES (39, 22, 'Fitria', '-', 'kok nama saya di hasil seleksi gak ada yaa ? tgl 16 Februari..\r\nitu knapa yaa ?', '2020-02-24', '11:03:00', 'N', 'gophytlaa@gmail.com');
INSERT INTO `komentar` VALUES (61, 5, 'Aep', '', 'Mohon maaf mau bertanya, mau donlod format laporan penilaian prestasi kerja dmn ya?', '2020-03-19', '14:15:21', 'N', 'aepsaepul17@gmail.com');
INSERT INTO `komentar` VALUES (62, 18, 'Ade arie a', 'Haloww', 'Belum juga di posting pak hasil skd yang masuk ke tqhap skb', '2020-03-22', '17:01:02', 'N', 'adearieariansyah79@gmail.com');
INSERT INTO `komentar` VALUES (45, 22, 'Yuli maria', '', 'Pengumuman yang test SKB nya kapan?', '2020-02-27', '09:59:59', 'N', 'Indriegaya18@yahoo.com');
INSERT INTO `komentar` VALUES (65, 28, 'Randi Firman Sidiq', 'randifs944@gmail.com ', 'Baik', '2020-03-23', '07:58:04', 'N', 'randifs944@gmail.com ');
INSERT INTO `komentar` VALUES (161, 22, 'Purwokerto', 'https://www.mitsubishi-jateng.rumahmobil.com', 'Oke, makasih untuk informasinya', '2020-05-30', '12:53:30', 'N', 'Purwokerto@yahoo.com');
INSERT INTO `komentar` VALUES (162, 30, 'Purwokerto', 'https://www.mitsubishi-jateng.rumahmobil.com', 'Waduww libur panjangnya berganti', '2020-05-30', '12:54:46', 'N', 'Purwokerto@yahoo.com');
INSERT INTO `komentar` VALUES (163, 27, 'Purwokerto', 'https://www.mitsubishi-jateng.rumahmobil.com', 'Moga saja pelatihan ini mampu merubah pradigma dan mental terutama di kalangan asn', '2020-05-30', '12:56:53', 'N', 'Purwokerto@yahoo.com');
INSERT INTO `komentar` VALUES (14, 13, 'Taufik', '', 'A.n taufik darmawansyah no peserta 19-6112-1130-0002019 tidakterdaftar jadwal skd.. Dari sscn sudah ada ket lulus administrasi.. Mohon bantuannya.. Trmksih', '2020-01-31', '06:12:51', 'N', 'Taufikdarmawansyah@gmail.co.id');
INSERT INTO `komentar` VALUES (49, 22, 'Reni sukmahayati', '', 'Saya mau melihat hasil tes SKD yang lolos ke tahap SKB', '2020-03-02', '21:27:56', 'N', 'reni@gmail.com');
INSERT INTO `komentar` VALUES (50, 22, 'Reni sukmahayati', '', 'Peserta yang lolos sistem perengkingan ke tahap SKB kabupaten ciamis', '2020-03-02', '21:51:14', 'N', 'reni@gmail.com');
INSERT INTO `komentar` VALUES (164, 17, 'Purwokerto', 'https://www.mitsubishi-jateng.rumahmobil.com', 'Selamat atas pelantikannya, semoga saja amanah dan mampu bekerja dengan baik', '2020-05-30', '13:01:34', 'N', 'Purwokerto@yahoo.com');
INSERT INTO `komentar` VALUES (82, 22, 'Muthia', '-', 'Hai min, mau tanya tentang alur CPNS. Setelah pengumuman kelulusan SKD tahap selanjutnya itu apa ya min sebelum SKB? Apakah ada pengumpulan syarat-syarat tertentu?\r\n\r\nTerimakasih', '2020-03-31', '09:24:37', 'N', 'mutiadriqni@gmail.com');
INSERT INTO `komentar` VALUES (165, 29, 'Mitsubishi Pekalongan', 'https://www.mitsubishi-jateng.rumahmobil.com', 'Tetimakasih untuk informasi liburan ini', '2020-05-31', '07:32:01', 'N', 'MitsubishiPekalongan@yahoo.com');
INSERT INTO `komentar` VALUES (372, 35, 'Andri', '', 'Pa maaf untuk yg lampiran 3 jdwal ga bsa d donload', '2020-08-18', '20:44:03', 'N', 'Acuy.kusdinar@gmail.com');
INSERT INTO `komentar` VALUES (374, 35, 'ryan', '', 'mohon maaf lampiran III setelah diunduh hasilnya malah lampiran II. mohon segera dibenahi', '2020-08-18', '22:35:51', 'N', 'ryan3atmojo@gmail.com');
INSERT INTO `komentar` VALUES (423, 38, 'Yuli', '', 'Apakah untuk mengikuti SKB harus ada gasil rapid test? ', '2020-10-02', '21:19:18', 'N', 'ulyjuly20@gmail.com');
INSERT INTO `komentar` VALUES (424, 34, 'Marhumah', '', 'Ingin tau jadwal tes SKB', '2020-10-03', '17:37:18', 'N', 'marsetiyadi@gmail.com');
INSERT INTO `komentar` VALUES (438, 42, 'rifqi', '', 'BERTANYA seputar kualifikasi formasi cpns guru sekolah DASAR di kab. Ciamis. Dulu dipengumuman resmi kualifikasi S1 PGSD, Tapi ada pelamar ijazah PGMI lolos seleksi sampai ikut SKB. Apakah memang benar di pemkab ciamis menerima kualifikasi formasi PGMI until daftar di Formasi PGSD?. Mohon konfirmasi ya terkait hal tab di atas.\r\nNuwun.', '2020-10-26', '20:20:26', 'N', 'idiksanrifqi@gmail.com');
INSERT INTO `komentar` VALUES (439, 38, 'arif', '', 'pengumuman kelulusan cpns 2019 udah ada min? ', '2020-10-30', '08:53:42', 'N', 'ariefprayoga70@gmail.com');
INSERT INTO `komentar` VALUES (440, 45, 'Doni', '', 'BKPSDM Ciamis yang terhormat, mohon informasinya untuk gabung grup WA terkait tentang personal yang lulus CPNS 2019, pemberkasan dan lain - lain, karena saya belum tahu informasi kedepannya.\r\n\r\nMuhammad Doni Setiyadi\r\n082320002022\r\n\r\nTerimakasih', '2020-11-11', '12:11:55', 'N', 'setiyadi_doni@yahoo.co.id');
INSERT INTO `komentar` VALUES (441, 45, 'Doni', '', 'BKPSDM Ciamis yang terhormat, mohon informasinya untuk gabung grup WA terkait tentang personal yang lulus CPNS 2019, pemberkasan dan lain - lain, karena saya belum tahu informasi kedepannya.\r\n\r\nMuhammad Doni Setiyadi\r\n082320002022\r\n\r\nTerimakasih', '2020-11-11', '12:12:51', 'N', 'setiyadi_doni@yahoo.co.id');
INSERT INTO `komentar` VALUES (380, 35, 'Sumarno', '', 'Lampiran III berisikan Lampiran II, sehinggaa lampiran III tidak ada', '2020-08-19', '06:56:21', 'N', 'sumarnobae03@gmail.com');
INSERT INTO `komentar` VALUES (95, 28, 'Irfan Fauzi', 'fanelfauzi.blogspot.com', 'Alhamdulillah lanjut SKB. Semoga wabah ini segera berakhir.. aamiin', '2020-04-05', '13:09:39', 'N', 'fanelfauzi@gmail.com');
INSERT INTO `komentar` VALUES (381, 35, 'Firdaus fauzan', '', 'Kenapa yg lampiran ke III pas didownload keluarnya yg lampiran II ya?? Soalnya lokasi tes saya diluar ciamis, mohon untuk di perbaiki, terima kasih\r\n\r\n\r\nJawab:\r\nMohon Maaf,  Sekarang Lampiran III sudah diperbaiki dan bisa di download\r\nTerimakasih', '2020-08-19', '10:03:44', 'Y', 'falahzain86@gmail.com');
INSERT INTO `komentar` VALUES (1134, 69, 'Aceng Ruswa', 'ruswaaceng@gmail.com ', 'Ya', '2022-03-14', '14:59:45', 'N', 'Ace');
INSERT INTO `komentar` VALUES (1135, 50, 'Sri', '', 'Aplikasinya bagus untuk pengelolaan arsip2 kepegawaian', '2022-03-15', '20:58:41', 'Y', 'juraganpir@gmail.com');
INSERT INTO `komentar` VALUES (486, 45, 'Abd. Kholik', '', 'Assalamu&#039;alaikum\r\nMohon maaf Min, peserta CPNS 2019 ada yg TMS.. kira&sup2; karena apa ya?\r\nTerimakasih banyak.', '2020-12-24', '12:27:53', 'N', 'akhok29@gmail.com');
INSERT INTO `komentar` VALUES (556, 50, 'Rita', 'dekadiritas@gmail.com', 'Mau ngisi data kepegawaian, kmh cara nya?', '2021-01-21', '11:07:22', 'N', 'dejadiritas@gmail.com');
INSERT INTO `komentar` VALUES (819, 58, 'Hary rusly', '', 'Jika mau melamar harus kemana? ', '2021-07-02', '20:33:02', 'N', 'Harycengyaw10@gmail.com ');
INSERT INTO `komentar` VALUES (1132, 50, '198105172014091001', '', 'Bagus sekali', '2022-03-10', '14:20:43', 'N', 'dedepurdiana@gmail.com');
INSERT INTO `komentar` VALUES (1133, 50, '198105172014091001', '198105172014091001', 'Bagus sekali', '2022-03-10', '14:22:18', 'N', 'dedepurdiana@gmail.com');
INSERT INTO `komentar` VALUES (1144, 72, 'Reni Suarni', '', 'Assalamualaikum Bp/Ibu mf sya mau tanya tentang p3k ... sya dlu ngajar di SDN   selama 11th karna dulu ada aturan harus linieritas sy pindah ke SMK swasta karna jurusan sya PPKn nah pertama sy ikut tes tidak bisa krna khusus untuk negri lalu sya ikut gelombang 2 sya tdak llus karena sya tidak mngikuti di krnakan melahirkan nah skrang saya pindah ke SDN lagi apakah sy bisa ikut tes di gelombang 3 ? Mhon penjelasannya trimakasih', '2022-06-10', '05:19:31', 'N', 'renisuarni38@gmail.com');
INSERT INTO `komentar` VALUES (1131, 50, 'Okta', '', 'Okta', '2022-03-10', '13:59:56', 'N', 'oktanizzarniki86@gmail.com');
INSERT INTO `komentar` VALUES (833, 58, 'Ari', '', 'Selamat pagi, apakah ada kontak yang bisa dihubungi mengenai seleksi CPNS tahun 2021 kab. Ciamis ? Terimakasih', '2021-07-07', '08:17:31', 'N', 'kurniawanari254@gmaik.con');
INSERT INTO `komentar` VALUES (834, 58, 'Uung', '', 'Assalamu&#039;alaikum. Ka untuk STR jika formasi yg diambil D3 apa bisa menggunakan STR D4 untuk jabatan yg sama? ', '2021-07-10', '07:14:02', 'N', 'wulan.ratna92@gmail.com');
INSERT INTO `komentar` VALUES (835, 58, 'Febria', '', 'Asalamualaikum, maaf untuk surat lamaran di ketik atau tulis tangan? Terimakasih', '2021-07-12', '11:09:30', 'N', 'senjasenja212@gmail.com');
INSERT INTO `komentar` VALUES (845, 58, 'deswul', '', 'kak, mau tanya untuk upload pengalaman kerja disatuin nya pada saat upload berkas apa yah?\r\n\r\nterimakasih sebelumnya..', '2021-07-16', '21:59:35', 'N', 'dessywulndri@gmail.com');
INSERT INTO `komentar` VALUES (1116, 72, 'Malik', '', 'Kapan di buka lagi tahap ke 3 p3k?', '2022-01-23', '14:32:44', 'N', 'Malikmaulanaabdul6@gmaol.com');
INSERT INTO `komentar` VALUES (877, 60, 'Diana A', 'arfaniadiana@gmail.com', 'Mohon kebijakan nya untuk bpkps kab ciamis,, bahwa sanya mungkin sya mewakili..\r\nDikarnakan ijasah kami di UT belum keluar &amp; kami hanya memakai SKL ( surat keterngan lulus )  transkip sementara.\r\nMohon untuk di luluskan dalam administrasi PPPK nya. Besar harapan kami mengikuti tes ini..\r\nKarna kammi hanya terkendala di ijasah. Tetapi dlam dapodik. Insyalloh kami sudh real.\r\nTerimakasih', '2021-08-02', '17:17:44', 'N', 'Permohonan');
INSERT INTO `komentar` VALUES (880, 60, 'Dina', '', 'Min, SKDnya kapan?', '2021-08-02', '21:50:50', 'N', 'dinnaindriyani193@gmail.com');
INSERT INTO `komentar` VALUES (891, 22, 'Peterkth', '', 'Delete,please!    &lt;a href=https://cerstvy-vzduch.cz/&gt;.&lt;/a&gt;', '2021-08-17', '08:02:17', 'N', 'iam.ny.a.sh.k.a.l.o.l@gmail.com\r\n');
INSERT INTO `komentar` VALUES (896, 61, 'Neng Herti', '', 'Kalau jadwal tes SKD kabupaten Ciamis kapan ya', '2021-08-27', '18:32:52', 'N', 'nhertiawati@gmail.com');
INSERT INTO `komentar` VALUES (897, 61, 'Neng Herti', '', 'Kalau jadwal tes SKD kabupaten Ciamis kapan ya', '2021-08-27', '18:33:48', 'N', 'nhertiawati@gmail.com');
INSERT INTO `komentar` VALUES (898, 53, 'Feri Setiadi', '@ferisetiadi', 'Selamat pagi kak, ijin bertanya kak.. untuk cetak kartu ujian untuk daerah apakah sudah bisa kak?', '2021-08-29', '13:04:41', 'N', 'ferisetiadi1991@gmail.com');
INSERT INTO `komentar` VALUES (899, 53, 'Feri Setiadi', '@ferisetiadi', 'Selamat pagi kak, ijin bertanya kak.. untuk cetak kartu ujian untuk daerah apakah sudah bisa kak?', '2021-08-29', '13:05:24', 'N', 'ferisetiadi1991@gmail.com');
INSERT INTO `komentar` VALUES (900, 60, 'Ardi Ridwan ', '', 'Nama saya kok gak ada ya padahal lulus administrasi sebagai tenaga penyuluh kesahatan masyarakat di uptd puskesmas ciamis atas nama ardi ', '2021-08-30', '15:36:25', 'N', 'ardiridwan1919@gmail.com');
INSERT INTO `komentar` VALUES (901, 58, 'Messa', 'otoreading.blogspot.com', 'Assalamu&#039;alaikum Wr Wb\r\nSaya mau meminta info :\r\nKapan jadwal SKD ? Apa persyaratan SKD ? \r\nTerima kasih', '2021-09-03', '15:42:36', 'N', 'messa.fernando@gmail.com');
INSERT INTO `komentar` VALUES (1079, 71, 'Bela', '', 'Assalamualaikum. Sebelumnya terimakasih atas informasinya. Mohon ijin bertanya, untuk tes kesehatan dan tes laboratorium, jika dilakukan di RSUD Ciamis apakah dijadwal untuk masing-masing peserta atau boleh kapan saja? Terimakasih.', '2022-01-06', '15:40:25', 'N', 'bela.amalia@gmail.com');
INSERT INTO `komentar` VALUES (909, 62, 'panji ', '', 'untuk pelaksanaan tes pppk guru kab ciamis kapan pak', '2021-09-08', '15:54:46', 'N', 'panjigandara@gmail.com');
INSERT INTO `komentar` VALUES (910, 62, 'Empie', '', 'Hay Kak untuk test SKD, peserta wajib Rapid Ya kak', '2021-09-09', '11:38:30', 'N', 'empie.subejo@gmail.com');
INSERT INTO `komentar` VALUES (911, 62, 'Qinan', '-', 'Maaf,perempuan mengenakan flatshoes tidak apa apa?dan untuk pengenaan sarung tangan dan face shield wajib atau tidak,maaf karena di beberapa daerah memiliki ketentuan yg sama untuk mengenakan face shield dan sarung tangan,tapi tidak diwajibkan,yg utama masker. Terima kasih,mohon direspon', '2021-09-09', '12:37:21', 'N', 'Qinanpramudy@gmail.com');
INSERT INTO `komentar` VALUES (912, 62, 'Isti', '', 'Yang pppk guru Ciamis kapan ya diumumkannya?', '2021-09-09', '15:37:20', 'N', 'iissitiaisyah94@gmail.com');
INSERT INTO `komentar` VALUES (913, 62, 'iif', '', 'Maaf min... Untuk jadwal seleksi pppk guru kapan dirilisnya? ', '2021-09-09', '17:21:38', 'N', 'syarifahsooyani@gmail.com');
INSERT INTO `komentar` VALUES (914, 4, 'profil', 'https://www.nusantarapost.com/', 'informasi PNS kemudian PNS', '2021-09-10', '21:45:36', 'N', 'taniaha@yaho.com');
INSERT INTO `komentar` VALUES (907, 61, 'Wulan', '', 'Pagi admin mohon info untuk jadwal tes skd di stimik Tasikmalaya apa sudah ada ya?', '2021-09-06', '11:06:00', 'N', 'Lanz.sary90@gmail.com');
INSERT INTO `komentar` VALUES (908, 61, 'Yusuf', 'F', 'Kapan jadwal tes nya diumumkan min', '2021-09-07', '18:41:30', 'N', 'J');
INSERT INTO `komentar` VALUES (915, 62, 'Wulandari', '', 'Assalamualaikum, kak maaf kenapa link untuk cek lokasi ujian PPPK Guru tidak bisa login terus yah? Mohon untuk ditindak lanjuti ya kak! ', '2021-09-11', '05:34:31', 'N', 'wulandarii525@gmail.com');
INSERT INTO `komentar` VALUES (916, 62, 'DEDE SANDI', '', 'untuk tempat tesnya dimana ya, belum ada lokasinya', '2021-09-11', '18:25:42', 'N', 'dessan.abdulkarim@gmail.com');
INSERT INTO `komentar` VALUES (917, 62, 'erik', '', 'assalamualaikum, maaf mau bertanya, yang ujian pagi, jam 6.30 itu mulai ujian atau mulai cek administrasi. ujian nya jam 8. Kalau ujiannya jam 6.30, berarti harus ada di lokasi jam 5.30. Mohon pencerahannya, biar bisa menyesuaikan berangkat dari rumahnya. Terimakasih', '2021-09-14', '19:06:03', 'N', 'apryantoerik@gmail.com');
INSERT INTO `komentar` VALUES (935, 50, 'Elan Suherlan', '', 'lihat data', '2021-09-29', '07:48:28', 'N', 'elansuherlan8@gmail.com');
INSERT INTO `komentar` VALUES (942, 61, 'Esih', '', 'Assalamu&#039;alaikum, saya mau tanya tes cpns  harus swab baik antige maunpun pcr saya masih bingung mau swab Dimana?ditentukan harus dimana? Terima kasih. ', '2021-10-04', '17:10:38', 'N', 'esihkurniasih@gmail.com');
INSERT INTO `komentar` VALUES (943, 63, 'VR', '', 'Live streaming hasil tes ny ko ga ada ya? ', '2021-10-09', '20:08:03', 'N', '1vr1ritseriv@gmail.com');
INSERT INTO `komentar` VALUES (1059, 69, 'Sridini', '', 'Assalamualaikum. Izin bertanya mengenai pemberkasan . Pengumuman di atas itu berlaku untuk yang lulus di tahapa 1 dulu,  betul begitu??', '2021-12-23', '11:24:07', 'N', 'ssdini28@gmail.com');
INSERT INTO `komentar` VALUES (1060, 61, 'Nina', '', 'Pengumuman hasil', '2021-12-24', '23:08:06', 'N', 'ninaanhar442@gmail.com');
INSERT INTO `komentar` VALUES (982, 63, 'Qori', '', 'Min, sudah ada hasil yang tes yang lulus  SKD belum yah?', '2021-10-24', '17:59:11', 'N', 'qoriaina31@gmail.com');
INSERT INTO `komentar` VALUES (983, 63, 'Tari', '', 'Admin .. pengumuman hasil SKD nya kapan ya ?\r\n\r\nMohon jangan telat banget share dong,\r\n\r\nKemarin ngumumin tgl ujian SKD nya kenapa telat banget, pas admin share (tgl 27 Sept 21), aku udah ngelaksanain ujian SKD pas tgl 21 Sept 2021.\r\n\r\nKlo misal admin telat kaya gini, kita pelamar lihat update nya gimna dong ?\r\nTolooong kegercepanmu sangat sangat kita butuhkan.\r\n\r\nMohon dong, lebih di tingkatkan lagi pelayananya .. trimkasih sebelumnya ????', '2021-10-26', '18:28:44', 'N', 'ayupujilestari891@gmail.com');
INSERT INTO `komentar` VALUES (1004, 63, 'aris', '', 'Min kunaon te acan update hasil skd na?', '2021-11-12', '16:51:25', 'N', 'ariswarisman6@gmail.com');
INSERT INTO `komentar` VALUES (1005, 63, 'Intan', '', 'Maaf mau bertanya, untuk hasil cat skd kpn di umukan yah? Terimakasih', '2021-11-13', '06:58:30', 'N', 'Anestyintan05@gmail.com');
INSERT INTO `komentar` VALUES (1006, 64, 'Erin Nurpika dewi', '', 'DIII Kebidanan', '2021-11-13', '10:42:58', 'N', 'erinnurpikadewi@gmail.com');
INSERT INTO `komentar` VALUES (1007, 64, 'Eva Fitri Maria', '', 'Sip', '2021-11-13', '10:57:11', 'N', 'evafitrimaria@gmail.com');
INSERT INTO `komentar` VALUES (1008, 63, 'Muhammad Sudrajat', '', 'Maaf kok jadwal atau info ini tidak ada di sscn ya?', '2021-11-13', '13:26:22', 'N', 'sudramuh@gmail.com');
INSERT INTO `komentar` VALUES (1015, 64, 'Qori', 'QORI AINA', 'Assalamualaikum, pak maaf mau nanya untuk tes SKB buat terampil perawat bisa kan di UPT BKN Serang?\r\n\r\nJAWAB : Tilok SKB berdasarkan pemilihan titik lokasi yang diinput di akun SSCASN', '2021-11-15', '08:44:50', 'Y', 'qoriaina31@gmail.com');
INSERT INTO `komentar` VALUES (1003, 61, 'Kendio', '', 'Mau tanya pengumuman sms tahap 2 pa', '2021-11-10', '12:25:34', 'N', 'dioomara@gmail.com');
INSERT INTO `komentar` VALUES (1145, 72, 'Reni Suarni', '', 'Assalamualaikum Bp/Ibu mf sya mau tanya tentang p3k ... sya dlu ngajar di SDN   selama 11th karna dulu ada aturan harus linieritas sy pindah ke SMK swasta karna jurusan sya PPKn nah pertama sy ikut tes tidak bisa krna khusus untuk negri lalu sya ikut gelombang 2 sya tdak llus karena sya tidak mngikuti di krnakan melahirkan nah skrang saya pindah ke SDN lagi apakah sy bisa ikut tes di gelombang 3 ? Mhon penjelasannya trimakasih', '2022-06-10', '05:21:02', 'N', 'renisuarni38@gmail.com');
INSERT INTO `komentar` VALUES (1160, 77, 'Septian', '', 'Assalamualaikum Pak/bu tolong selamatkan guru honorer terutama negeri yg sudah lulus passing grade di tahap 1 dan 2 seleksi pppk tapi tidak ada formasi, supaya mendapatkan formasi, saya adalah guru honorer negeri di induk yg tergeser oleh guru lain karena kalah ranking padahal saya juga sudah lulus passing grade murni non afirmasi ( P1), dan sekarang saya tidak mengajar... Tolong ya pak adakan formasi, dengan mengajukannya ke Kemdikbudristek setidaknya sampai mereka yg sudah lulus PG mendapatkan formasi.. terimakasih', '2022-06-15', '12:14:43', 'N', 'chrstfauzy@gmail.com');

-- ----------------------------
-- Table structure for komentarvid
-- ----------------------------
DROP TABLE IF EXISTS `komentarvid`;
CREATE TABLE `komentarvid`  (
  `id_komentar` int(5) NOT NULL AUTO_INCREMENT,
  `id_video` int(5) NOT NULL,
  `nama_komentar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_komentar`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of komentarvid
-- ----------------------------

-- ----------------------------
-- Table structure for logo
-- ----------------------------
DROP TABLE IF EXISTS `logo`;
CREATE TABLE `logo`  (
  `id_logo` int(5) NOT NULL AUTO_INCREMENT,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_logo`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logo
-- ----------------------------
INSERT INTO `logo` VALUES (15, 'logo_berakhlak22.png');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id_menu` int(5) NOT NULL AUTO_INCREMENT,
  `id_parent` int(5) NOT NULL DEFAULT 0,
  `nama_menu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `aktif` enum('Ya','Tidak') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Ya',
  `position` enum('Top','Bottom') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'Bottom',
  `urutan` int(3) NOT NULL,
  PRIMARY KEY (`id_menu`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 286 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (174, 172, 'Visi dan Misi', '#', 'Ya', 'Bottom', 61);
INSERT INTO `menu` VALUES (148, 147, 'Sejarah', 'halaman/detail/selayang-pandang-bkpsdm-kabupaten-ciamis', 'Ya', 'Bottom', 3);
INSERT INTO `menu` VALUES (149, 147, 'Struktur Organisasi', 'halaman/detail/struktur-organisasi-bkpsdm-kabupaten-ciamis', 'Ya', 'Bottom', 4);
INSERT INTO `menu` VALUES (159, 156, 'Eselon', 'halaman/detail/grafik-eselon-12-2019', 'Ya', 'Bottom', 21);
INSERT INTO `menu` VALUES (158, 156, 'Pendidikan', 'halaman/detail/statistik-pendidikan-12-2019', 'Ya', 'Bottom', 20);
INSERT INTO `menu` VALUES (19, 173, 'Berita Foto', 'albums', 'Ya', 'Bottom', 67);
INSERT INTO `menu` VALUES (18, 173, 'Video', 'playlist', 'Ya', 'Bottom', 68);
INSERT INTO `menu` VALUES (155, 152, 'Pejabat', 'pejabat', 'Ya', 'Bottom', 17);
INSERT INTO `menu` VALUES (152, 0, 'Informasi', '#', 'Ya', 'Bottom', 10);
INSERT INTO `menu` VALUES (154, 152, 'Kepegawaian', '#', 'Ya', 'Bottom', 16);
INSERT INTO `menu` VALUES (8, 0, 'Berita', 'berita', 'Ya', 'Bottom', 1);
INSERT INTO `menu` VALUES (147, 0, 'Profil', '#', 'Ya', 'Bottom', 2);
INSERT INTO `menu` VALUES (118, 0, 'Agenda', 'agenda', 'Ya', 'Bottom', 84);
INSERT INTO `menu` VALUES (156, 152, 'Data Pegawai', '#', 'Ya', 'Bottom', 18);
INSERT INTO `menu` VALUES (157, 156, 'Golongan Ruang', 'pegawai/golruang', 'Ya', 'Bottom', 19);
INSERT INTO `menu` VALUES (150, 147, 'Visi dan Misi', 'halaman/detail/visi-dan-misi-kabupaten-ciamis', 'Ya', 'Bottom', 5);
INSERT INTO `menu` VALUES (151, 147, 'Program dan Kegiatan', 'halaman/detail/program-dan-kegiatan-bkpsdm-kabupaten-ciamis', 'Ya', 'Bottom', 9);
INSERT INTO `menu` VALUES (153, 152, 'Peraturan', 'download', 'Ya', 'Bottom', 15);
INSERT INTO `menu` VALUES (160, 156, 'agama', 'pegawai/agama', 'Ya', 'Bottom', 22);
INSERT INTO `menu` VALUES (161, 156, 'Jenis Kelamin', 'pegawai/kelamin', 'Ya', 'Bottom', 23);
INSERT INTO `menu` VALUES (162, 156, 'Usia', 'pegawai/usia', 'Ya', 'Bottom', 24);
INSERT INTO `menu` VALUES (163, 0, 'Statistik', '#', 'Ya', 'Bottom', 25);
INSERT INTO `menu` VALUES (164, 163, 'Jumlah PNS', 'halaman/detail/jumlah-pns-agustus-2020', 'Ya', 'Bottom', 26);
INSERT INTO `menu` VALUES (165, 163, 'Golongan Ruang', 'halaman/detail/statistik-golongan-ruang-08-2020', 'Ya', 'Bottom', 27);
INSERT INTO `menu` VALUES (166, 163, 'Pendidikan', 'halaman/detail/grafik-pendidikan-agustus-2020', 'Ya', 'Bottom', 28);
INSERT INTO `menu` VALUES (167, 163, 'Eselon', 'halaman/detail/grafik-eselon-agustus-2020', 'Ya', 'Bottom', 29);
INSERT INTO `menu` VALUES (168, 163, 'Agama', 'halaman/detail/grafik-agama-agustus-2020', 'Ya', 'Bottom', 30);
INSERT INTO `menu` VALUES (169, 163, 'Jenis Kelamin', 'halaman/detail/grafik-jenis-kelamin-agustus-2020', 'Ya', 'Bottom', 31);
INSERT INTO `menu` VALUES (170, 163, 'Usia', 'halaman/detail/grafik-usia-agustus-2020', 'Ya', 'Bottom', 32);
INSERT INTO `menu` VALUES (171, 0, 'Layanan Kepegawaian', '#', 'Ya', 'Bottom', 33);
INSERT INTO `menu` VALUES (172, 0, 'Media Center', '#', 'Ya', 'Bottom', 60);
INSERT INTO `menu` VALUES (173, 0, 'Galeri', '#', 'Ya', 'Bottom', 66);
INSERT INTO `menu` VALUES (175, 172, 'Aplikasi Layanan', '#', 'Ya', 'Bottom', 62);
INSERT INTO `menu` VALUES (176, 172, 'Mekanisme Pelayanan Informasi Kepegawaian', 'halaman/detail/layanan-informasi-kepegawaian', 'Ya', 'Bottom', 65);
INSERT INTO `menu` VALUES (177, 175, 'Survey Kepuasan Pelayanan Kepegawaian', '#', 'Ya', 'Bottom', 63);
INSERT INTO `menu` VALUES (178, 175, 'Konsultasi Kepegawaian', 'konsultasi', 'Ya', 'Bottom', 64);
INSERT INTO `menu` VALUES (180, 171, 'Bidang Pengembangan Kompetensi Aparatur', '#', 'Ya', 'Bottom', 34);
INSERT INTO `menu` VALUES (181, 171, 'Bidang Pengembangan Karir, Mutasi dan Kepangkatan', '#', 'Ya', 'Bottom', 42);
INSERT INTO `menu` VALUES (182, 171, 'Bidang Pengadaan, Pemberhentian dan Informasi Kepegawaian', '#', 'Ya', 'Bottom', 53);
INSERT INTO `menu` VALUES (183, 171, 'Bidang Penilaian Kinerja dan Pembinaan Disiplin Aparatur', '#', 'Ya', 'Bottom', 57);
INSERT INTO `menu` VALUES (184, 180, 'Ijin Belajar dan Tugas Belajar', 'halaman/detail/syarat-ijin-brlajar', 'Ya', 'Bottom', 35);
INSERT INTO `menu` VALUES (185, 180, 'Diklat Struktural', '#', 'Ya', 'Bottom', 36);
INSERT INTO `menu` VALUES (186, 185, 'Diklat Prajabatan', '', 'Ya', 'Bottom', 37);
INSERT INTO `menu` VALUES (187, 185, 'Diklat Kepemimpinan Tk. I', '', 'Ya', 'Bottom', 38);
INSERT INTO `menu` VALUES (188, 185, 'Diklat Kepemimpinan Tk. II', '', 'Ya', 'Bottom', 39);
INSERT INTO `menu` VALUES (189, 185, 'Diklat Kepemimpinan Tk. III', '', 'Ya', 'Bottom', 40);
INSERT INTO `menu` VALUES (190, 185, 'Diklat Kepemimpinan Tk. IV', '', 'Ya', 'Bottom', 41);
INSERT INTO `menu` VALUES (191, 181, 'Kenaikan Jabatan Fungsional Tertentu', '', 'Ya', 'Bottom', 43);
INSERT INTO `menu` VALUES (192, 181, 'Alih Kelompok / Jenjang Tertentu', '', 'Ya', 'Bottom', 44);
INSERT INTO `menu` VALUES (193, 181, 'Perpindahan dari Jabatan Lain kedalam Fungsional Tertentu', '', 'Ya', 'Bottom', 45);
INSERT INTO `menu` VALUES (194, 181, 'Perpindahan PNS Jabatan Tertentu', '', 'Ya', 'Bottom', 46);
INSERT INTO `menu` VALUES (195, 181, 'Izin Kepala Desa', '', 'Ya', 'Bottom', 47);
INSERT INTO `menu` VALUES (196, 181, 'UPKP', '', 'Ya', 'Bottom', 48);
INSERT INTO `menu` VALUES (197, 181, 'Ujian Dinas Tk. I', '', 'Ya', 'Bottom', 49);
INSERT INTO `menu` VALUES (198, 181, 'Ujian Dinas Tk. II', '', 'Ya', 'Bottom', 50);
INSERT INTO `menu` VALUES (199, 181, 'Kenaikan Pangkat', '', 'Ya', 'Bottom', 51);
INSERT INTO `menu` VALUES (200, 181, 'Mutasi', '', 'Ya', 'Bottom', 52);
INSERT INTO `menu` VALUES (201, 182, 'Pensiun', 'halaman/detail/persyaratan-pensiun', 'Ya', 'Bottom', 54);
INSERT INTO `menu` VALUES (202, 183, 'Cuti', 'halaman/detail/surat-ijin-cuti', 'Ya', 'Bottom', 59);
INSERT INTO `menu` VALUES (204, 182, 'Simpeg', 'halaman/detail/simpeg', 'Ya', 'Bottom', 55);
INSERT INTO `menu` VALUES (205, 182, 'Revisi NIP', '', 'Ya', 'Bottom', 56);
INSERT INTO `menu` VALUES (206, 183, 'Ijin Perceraian', 'halaman/detail/syarat-ijin-cerai', 'Ya', 'Bottom', 58);
INSERT INTO `menu` VALUES (212, 152, 'Pelayanan Informasi Publik', '', 'Ya', 'Bottom', 11);
INSERT INTO `menu` VALUES (215, 212, 'Perencanaan', 'halaman/detail/bagian-perencanaan-', 'Ya', 'Bottom', 12);
INSERT INTO `menu` VALUES (216, 212, 'Keuangan', 'halaman/detail/bagian-keuangan', 'Ya', 'Bottom', 13);
INSERT INTO `menu` VALUES (217, 212, 'Umum', 'halaman/detail/bagian-kepegawaian-dan-umum', 'Ya', 'Bottom', 14);
INSERT INTO `menu` VALUES (232, 231, 'STANDAR PELAYANAN PUBLIK', 'halaman/detail/standar-pelayanan-publik-bkpsdm', 'Ya', 'Bottom', 71);
INSERT INTO `menu` VALUES (219, 147, 'Organisasi', '', 'Ya', 'Bottom', 6);
INSERT INTO `menu` VALUES (220, 219, 'Kepala BKPSDM', 'halaman/detail/kepala-bkpsdm-1', 'Ya', 'Bottom', 7);
INSERT INTO `menu` VALUES (221, 219, 'Sekretariat BKPSDM', 'halaman/detail/sekretaris-bkpsdm', 'Ya', 'Bottom', 8);
INSERT INTO `menu` VALUES (224, 0, 'INFORMASI PELAYANAN PUBLIK', '', 'Ya', 'Bottom', 69);
INSERT INTO `menu` VALUES (231, 224, 'STANDAR PELAYANAN PUBLIK', 'halaman/detail/standar-pelayanan-publikhalaman/detail/standar-pelayanan-publik-bkpsdm', 'Ya', 'Bottom', 70);
INSERT INTO `menu` VALUES (282, 224, 'MAKLUMAT PELAYANAN', 'halaman/detail/maklumat-pelayanan', 'Ya', 'Bottom', 83);
INSERT INTO `menu` VALUES (260, 224, 'PENGELOLAAN PENGADUAN', 'halaman/detail/pengelola-pengaduan', 'Ya', 'Bottom', 73);
INSERT INTO `menu` VALUES (264, 224, 'SARANA, PRASARANA DAN FASILITAS', 'halaman/detail/sarana-prasarana-dan-fasilitas', 'Ya', 'Bottom', 75);
INSERT INTO `menu` VALUES (268, 224, 'PELAYANAN KHUSUS DISABILITAS', 'halaman/detail/pelayayan-khusus-disabilitas-', 'Ya', 'Bottom', 76);
INSERT INTO `menu` VALUES (271, 224, 'PENILAIAN KINERJA PELAYANAN PUBLIK', 'halaman/detail/penilaian-kinerja-pelayanan-publik', 'Ya', 'Bottom', 77);
INSERT INTO `menu` VALUES (274, 224, 'VISI, MISI DAN MOTO PELAYANAN', 'halaman/detail/visi-misi-dan-moto-pelayanan', 'Ya', 'Bottom', 79);
INSERT INTO `menu` VALUES (277, 224, 'PETUGAS PELAYANAN', '', 'Ya', 'Bottom', 80);
INSERT INTO `menu` VALUES (278, 224, 'REKOGNISI', '', 'Ya', 'Bottom', 81);
INSERT INTO `menu` VALUES (279, 224, 'PENCEGAHAN PENYEBARAN COVID-19 DI LOKASI LAYANAN', 'halaman/detail/pencegahan-penyebaran-covid19-di-lokasi-layanan', 'Ya', 'Bottom', 82);
INSERT INTO `menu` VALUES (283, 224, 'HASIL SKM DAN NILAI IKM', 'https://drive.google.com/file/d/1fG56koUfdPXTcy0PJU2HD4dhBFSsBe9S/view?usp=sharing', 'Ya', 'Bottom', 78);
INSERT INTO `menu` VALUES (284, 224, 'REFORMASI BIROKRASI', 'halaman/detail/reformasi-birokrasi', 'Ya', 'Bottom', 72);
INSERT INTO `menu` VALUES (285, 224, 'REKAP DAN INFO KOIN KEPUASAN MASYARAKAT', 'halaman/detail/rekap-dan-info-koin-kepuasan-masyarakat', 'Ya', 'Bottom', 74);

-- ----------------------------
-- Table structure for mod_alamat
-- ----------------------------
DROP TABLE IF EXISTS `mod_alamat`;
CREATE TABLE `mod_alamat`  (
  `id_alamat` int(5) NOT NULL AUTO_INCREMENT,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_alamat`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mod_alamat
-- ----------------------------
INSERT INTO `mod_alamat` VALUES (1, '<p><strong>Haloo!</strong>, Kami berkomitmen memberikan layanan terbaik untuk Anda,&nbsp;menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami dapat menyampaikan kritik dan saran.<br><br></p>\r\n');

-- ----------------------------
-- Table structure for mod_ym
-- ----------------------------
DROP TABLE IF EXISTS `mod_ym`;
CREATE TABLE `mod_ym`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ym_icon` int(3) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mod_ym
-- ----------------------------

-- ----------------------------
-- Table structure for modul
-- ----------------------------
DROP TABLE IF EXISTS `modul`;
CREATE TABLE `modul`  (
  `id_modul` int(5) NOT NULL AUTO_INCREMENT,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_modul`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 77 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of modul
-- ----------------------------
INSERT INTO `modul` VALUES (2, 'Manajemen User', 'admin', 'manajemenuser', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (18, 'Berita', 'admin', 'listberita', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (71, 'Background Website', 'admin', 'background', '', '', 'N', 'admin', 'N', 0, '');
INSERT INTO `modul` VALUES (10, 'Manajemen Modul', 'admin', 'manajemenmodul', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (31, 'Kategori Berita ', 'admin', 'kategorikategori', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (33, 'Jajak Pendapat', 'admin', 'jajakpendapat', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (34, 'Tag Berita', 'admin', 'tagberita', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (35, 'Komentar Berita', 'admin', 'komentarberita', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (41, 'Agenda', 'admin', 'agenda', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (43, 'Berita Foto', 'admin', 'album', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (44, 'Galeri Berita Foto', 'admin', 'gallery', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (45, 'Template Website', 'admin', 'templatewebsite', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (46, 'Sensor Kata', 'admin', 'sensorkomentar', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (61, 'Identitas Website', 'admin', 'identitaswebsite', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (57, 'Menu Website', 'admin', 'menuwebsite', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (59, 'Halaman Baru', 'admin', 'halamanbaru', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (62, 'Video', 'admin', 'video', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (63, 'Playlist Video', 'admin', 'playlist', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (64, 'Tag Video', 'admin', 'tagvideo', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (65, 'Komentar Video', 'admin', 'komentarvideo', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (66, 'Logo Website', 'admin', 'logowebsite', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (67, 'Iklan Sidebar', 'admin', 'iklansidebar', '', '', 'N', 'admin', 'N', 0, '');
INSERT INTO `modul` VALUES (68, 'Iklan Home', 'admin', 'iklanhome', '', '', 'N', 'admin', 'N', 0, '');
INSERT INTO `modul` VALUES (69, 'Iklan Atas', 'admin', 'iklanatas', '', '', 'N', 'admin', 'N', 0, '');
INSERT INTO `modul` VALUES (70, 'Pesan Masuk', 'admin', 'pesanmasuk', '', '', 'Y', 'user', 'Y', 0, '');
INSERT INTO `modul` VALUES (72, 'Sekilas Info', 'admin', 'sekilasinfo', '', '', 'N', 'admin', 'N', 0, '');
INSERT INTO `modul` VALUES (73, 'Yahoo Messanger', 'admin', 'ym', '', '', 'N', 'admin', 'N', 0, '');
INSERT INTO `modul` VALUES (74, 'Download Area', 'admin', 'download', '', '', 'Y', 'admin', 'Y', 0, '');
INSERT INTO `modul` VALUES (75, 'Alamat Kontak', 'admin', 'alamat', '', '', 'Y', 'admin', 'Y', 0, '');
INSERT INTO `modul` VALUES (76, 'Banner Link', 'admin', 'banner', '', '', 'Y', 'admin', 'Y', 0, '');

-- ----------------------------
-- Table structure for pasangiklan
-- ----------------------------
DROP TABLE IF EXISTS `pasangiklan`;
CREATE TABLE `pasangiklan`  (
  `id_pasangiklan` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `source` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_pasangiklan`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 34 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pasangiklan
-- ----------------------------

-- ----------------------------
-- Table structure for playlist
-- ----------------------------
DROP TABLE IF EXISTS `playlist`;
CREATE TABLE `playlist`  (
  `id_playlist` int(5) NOT NULL AUTO_INCREMENT,
  `jdl_playlist` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `playlist_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gbr_playlist` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_playlist`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of playlist
-- ----------------------------
INSERT INTO `playlist` VALUES (1, 'PP No. 53 Th. 2010', 'admin', 'pp-no-53-th-2010', 'cover_disiplin.jpg', 'Y');
INSERT INTO `playlist` VALUES (2, 'ALUR PROSES UJIAN CAT', 'admin', 'alur-proses-ujian-cat', '', 'Y');

-- ----------------------------
-- Table structure for poling
-- ----------------------------
DROP TABLE IF EXISTS `poling`;
CREATE TABLE `poling`  (
  `id_poling` int(5) NOT NULL AUTO_INCREMENT,
  `pilihan` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT 0,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_poling`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 36 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of poling
-- ----------------------------
INSERT INTO `poling` VALUES (18, 'Apakah website ini memenuhi kebutuhan informasi kepegawaian anda?', 'Pertanyaan', 'admin', 0, 'Y');
INSERT INTO `poling` VALUES (25, 'Sangat Memenuhi', 'Jawaban', 'admin', 169, 'Y');
INSERT INTO `poling` VALUES (31, 'Memenuhi', 'Jawaban', 'admin', 37, 'Y');
INSERT INTO `poling` VALUES (32, 'Cukup Memenuhi', 'Jawaban', 'admin', 19, 'Y');
INSERT INTO `poling` VALUES (33, 'Kurang Memenuhi', 'Jawaban', 'admin', 36, 'Y');
INSERT INTO `poling` VALUES (35, 'Tidak Memenuhi', 'Jawaban', 'admin', 51, 'Y');

-- ----------------------------
-- Table structure for sekilasinfo
-- ----------------------------
DROP TABLE IF EXISTS `sekilasinfo`;
CREATE TABLE `sekilasinfo`  (
  `id_sekilas` int(5) NOT NULL AUTO_INCREMENT,
  `info` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_sekilas`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sekilasinfo
-- ----------------------------

-- ----------------------------
-- Table structure for statistik
-- ----------------------------
DROP TABLE IF EXISTS `statistik`;
CREATE TABLE `statistik`  (
  `ip` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT 1,
  `online` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of statistik
-- ----------------------------
INSERT INTO `statistik` VALUES ('223.255.231.148', '2014-05-06', 1, '1399357334');
INSERT INTO `statistik` VALUES ('223.255.231.147', '2014-05-15', 3, '1400119147');
INSERT INTO `statistik` VALUES ('223.255.224.73', '2014-05-15', 12, '1400123797');
INSERT INTO `statistik` VALUES ('223.255.224.69', '2014-05-16', 2, '1400215103');
INSERT INTO `statistik` VALUES ('118.96.51.231', '2014-05-16', 19, '1400233044');
INSERT INTO `statistik` VALUES ('223.255.231.146', '2014-05-16', 2, '1400228049');
INSERT INTO `statistik` VALUES ('::1', '2014-06-20', 2, '1403230579');
INSERT INTO `statistik` VALUES ('::1', '2014-06-22', 8, '1403436591');
INSERT INTO `statistik` VALUES ('223.255.231.154', '2014-06-26', 1, '1403739948');
INSERT INTO `statistik` VALUES ('223.255.231.148', '2014-06-26', 6, '1403745715');
INSERT INTO `statistik` VALUES ('223.255.224.74', '2014-06-26', 1, '1403748060');
INSERT INTO `statistik` VALUES ('223.255.224.69', '2014-06-26', 1, '1403753239');
INSERT INTO `statistik` VALUES ('223.255.224.77', '2014-06-29', 1, '1404039342');
INSERT INTO `statistik` VALUES ('::1', '2014-07-02', 6, '1404277263');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-07-17', 2, '1405582494');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-07-21', 1, '1405929828');
INSERT INTO `statistik` VALUES ('36.76.60.43', '2014-07-21', 1, '1405951864');
INSERT INTO `statistik` VALUES ('223.255.231.154', '2014-07-21', 2, '1405957200');
INSERT INTO `statistik` VALUES ('223.255.227.21', '2014-07-22', 1, '1405995171');
INSERT INTO `statistik` VALUES ('223.255.231.146', '2014-07-22', 1, '1405997152');
INSERT INTO `statistik` VALUES ('223.255.227.21', '2014-07-23', 1, '1406100212');
INSERT INTO `statistik` VALUES ('223.255.227.17', '2014-07-23', 1, '1406104552');
INSERT INTO `statistik` VALUES ('223.255.227.23', '2014-07-24', 1, '1406168095');
INSERT INTO `statistik` VALUES ('223.255.231.153', '2014-07-24', 1, '1406204439');
INSERT INTO `statistik` VALUES ('223.255.231.146', '2014-07-25', 1, '1406268985');
INSERT INTO `statistik` VALUES ('180.76.5.193', '2014-08-06', 1, '1407302738');
INSERT INTO `statistik` VALUES ('180.76.5.23', '2014-08-06', 1, '1407304739');
INSERT INTO `statistik` VALUES ('202.67.36.241', '2014-08-06', 1, '1407305643');
INSERT INTO `statistik` VALUES ('198.148.27.22', '2014-08-06', 1, '1407306703');
INSERT INTO `statistik` VALUES ('180.251.170.42', '2014-08-06', 7, '1407310167');
INSERT INTO `statistik` VALUES ('128.199.171.191', '2014-08-06', 3, '1407323435');
INSERT INTO `statistik` VALUES ('223.255.231.149', '2014-08-06', 2, '1407309879');
INSERT INTO `statistik` VALUES ('223.255.227.28', '2014-08-06', 8, '1407311801');
INSERT INTO `statistik` VALUES ('103.24.49.242', '2014-08-06', 1, '1407312326');
INSERT INTO `statistik` VALUES ('223.255.231.146', '2014-08-06', 1, '1407313297');
INSERT INTO `statistik` VALUES ('180.214.233.34', '2014-08-06', 1, '1407321063');
INSERT INTO `statistik` VALUES ('66.249.77.87', '2014-08-06', 1, '1407323509');
INSERT INTO `statistik` VALUES ('223.255.227.30', '2014-08-06', 1, '1407325862');
INSERT INTO `statistik` VALUES ('180.254.207.13', '2014-08-06', 5, '1407330687');
INSERT INTO `statistik` VALUES ('114.79.13.199', '2014-08-06', 1, '1407336900');
INSERT INTO `statistik` VALUES ('202.152.199.34', '2014-08-06', 7, '1407337100');
INSERT INTO `statistik` VALUES ('180.76.6.21', '2014-08-07', 1, '1407347753');
INSERT INTO `statistik` VALUES ('114.79.13.55', '2014-08-07', 3, '1407354277');
INSERT INTO `statistik` VALUES ('114.125.41.136', '2014-08-07', 1, '1407352625');
INSERT INTO `statistik` VALUES ('180.76.6.147', '2014-08-07', 1, '1407355344');
INSERT INTO `statistik` VALUES ('180.76.6.64', '2014-08-07', 1, '1407367237');
INSERT INTO `statistik` VALUES ('69.171.247.116', '2014-08-07', 1, '1407379834');
INSERT INTO `statistik` VALUES ('69.171.247.119', '2014-08-07', 1, '1407379834');
INSERT INTO `statistik` VALUES ('69.171.247.114', '2014-08-07', 1, '1407379834');
INSERT INTO `statistik` VALUES ('69.171.247.115', '2014-08-07', 1, '1407379834');
INSERT INTO `statistik` VALUES ('202.67.34.29', '2014-08-07', 2, '1407380415');
INSERT INTO `statistik` VALUES ('36.76.52.112', '2014-08-07', 1, '1407380496');
INSERT INTO `statistik` VALUES ('223.255.231.145', '2014-08-07', 5, '1407387045');
INSERT INTO `statistik` VALUES ('223.255.231.153', '2014-08-07', 2, '1407388883');
INSERT INTO `statistik` VALUES ('223.255.227.27', '2014-08-07', 1, '1407393087');
INSERT INTO `statistik` VALUES ('180.76.5.25', '2014-08-07', 1, '1407394749');
INSERT INTO `statistik` VALUES ('223.255.231.146', '2014-08-07', 1, '1407397183');
INSERT INTO `statistik` VALUES ('157.55.39.248', '2014-08-07', 1, '1407397231');
INSERT INTO `statistik` VALUES ('180.254.200.55', '2014-08-07', 2, '1407399466');
INSERT INTO `statistik` VALUES ('110.139.67.15', '2014-08-07', 8, '1407399221');
INSERT INTO `statistik` VALUES ('180.242.17.64', '2014-08-07', 11, '1407414373');
INSERT INTO `statistik` VALUES ('141.0.8.59', '2014-08-07', 1, '1407412384');
INSERT INTO `statistik` VALUES ('110.76.149.91', '2014-08-07', 1, '1407422367');
INSERT INTO `statistik` VALUES ('223.255.231.151', '2014-08-07', 3, '1407426943');
INSERT INTO `statistik` VALUES ('82.145.209.206', '2014-08-07', 1, '1407430369');
INSERT INTO `statistik` VALUES ('223.255.227.28', '2014-08-08', 3, '1407469589');
INSERT INTO `statistik` VALUES ('66.93.156.50', '2014-08-08', 1, '1407472340');
INSERT INTO `statistik` VALUES ('202.62.17.47', '2014-08-08', 1, '1407484393');
INSERT INTO `statistik` VALUES ('36.70.135.163', '2014-08-08', 6, '1407485987');
INSERT INTO `statistik` VALUES ('173.252.74.115', '2014-08-08', 1, '1407485153');
INSERT INTO `statistik` VALUES ('118.96.58.136', '2014-08-08', 2, '1407486347');
INSERT INTO `statistik` VALUES ('114.79.29.68', '2014-08-08', 1, '1407502537');
INSERT INTO `statistik` VALUES ('66.220.156.113', '2014-08-08', 1, '1407503375');
INSERT INTO `statistik` VALUES ('112.215.66.79', '2014-08-08', 1, '1407503381');
INSERT INTO `statistik` VALUES ('125.163.113.156', '2014-08-08', 9, '1407508824');
INSERT INTO `statistik` VALUES ('180.76.5.94', '2014-08-08', 1, '1407508624');
INSERT INTO `statistik` VALUES ('120.172.9.192', '2014-08-08', 1, '1407515634');
INSERT INTO `statistik` VALUES ('202.67.41.51', '2014-08-08', 1, '1407515702');
INSERT INTO `statistik` VALUES ('180.253.243.222', '2014-08-09', 1, '1407542724');
INSERT INTO `statistik` VALUES ('36.75.224.20', '2014-08-09', 1, '1407548005');
INSERT INTO `statistik` VALUES ('180.76.5.65', '2014-08-09', 1, '1407548865');
INSERT INTO `statistik` VALUES ('66.249.77.77', '2014-08-09', 2, '1407582711');
INSERT INTO `statistik` VALUES ('180.76.6.137', '2014-08-09', 1, '1407553037');
INSERT INTO `statistik` VALUES ('66.249.77.87', '2014-08-09', 1, '1407554836');
INSERT INTO `statistik` VALUES ('66.249.77.97', '2014-08-09', 2, '1407562640');
INSERT INTO `statistik` VALUES ('120.177.44.126', '2014-08-09', 2, '1407558625');
INSERT INTO `statistik` VALUES ('223.255.231.145', '2014-08-09', 3, '1407558663');
INSERT INTO `statistik` VALUES ('36.73.64.113', '2014-08-09', 1, '1407558640');
INSERT INTO `statistik` VALUES ('36.72.187.12', '2014-08-09', 1, '1407560351');
INSERT INTO `statistik` VALUES ('202.67.41.51', '2014-08-09', 1, '1407561096');
INSERT INTO `statistik` VALUES ('114.125.60.68', '2014-08-09', 4, '1407561514');
INSERT INTO `statistik` VALUES ('202.67.40.50', '2014-08-09', 1, '1407562007');
INSERT INTO `statistik` VALUES ('180.76.6.136', '2014-08-09', 1, '1407562581');
INSERT INTO `statistik` VALUES ('110.232.81.2', '2014-08-09', 5, '1407563275');
INSERT INTO `statistik` VALUES ('146.185.28.59', '2014-08-09', 1, '1407564768');
INSERT INTO `statistik` VALUES ('120.174.157.139', '2014-08-09', 1, '1407568139');
INSERT INTO `statistik` VALUES ('223.255.227.23', '2014-08-09', 2, '1407570163');
INSERT INTO `statistik` VALUES ('193.105.210.119', '2014-08-09', 1, '1407577518');
INSERT INTO `statistik` VALUES ('125.162.57.66', '2014-08-09', 2, '1407579822');
INSERT INTO `statistik` VALUES ('180.241.163.1', '2014-08-09', 8, '1407580493');
INSERT INTO `statistik` VALUES ('36.76.44.163', '2014-08-09', 6, '1407603574');
INSERT INTO `statistik` VALUES ('180.76.5.144', '2014-08-09', 1, '1407582757');
INSERT INTO `statistik` VALUES ('107.167.103.40', '2014-08-09', 1, '1407586189');
INSERT INTO `statistik` VALUES ('36.68.48.23', '2014-08-09', 1, '1407586974');
INSERT INTO `statistik` VALUES ('192.99.218.151', '2014-08-09', 4, '1407587574');
INSERT INTO `statistik` VALUES ('36.74.55.24', '2014-08-09', 3, '1407589161');
INSERT INTO `statistik` VALUES ('118.97.212.184', '2014-08-09', 8, '1407595169');
INSERT INTO `statistik` VALUES ('36.72.114.118', '2014-08-09', 2, '1407597684');
INSERT INTO `statistik` VALUES ('180.76.5.153', '2014-08-09', 1, '1407602870');
INSERT INTO `statistik` VALUES ('180.76.5.59', '2014-08-09', 1, '1407603153');
INSERT INTO `statistik` VALUES ('180.76.5.18', '2014-08-10', 1, '1407606581');
INSERT INTO `statistik` VALUES ('180.254.155.156', '2014-08-10', 2, '1407607003');
INSERT INTO `statistik` VALUES ('180.76.6.42', '2014-08-10', 1, '1407608363');
INSERT INTO `statistik` VALUES ('36.68.242.217', '2014-08-10', 5, '1407627100');
INSERT INTO `statistik` VALUES ('66.249.77.77', '2014-08-10', 2, '1407633623');
INSERT INTO `statistik` VALUES ('202.67.44.64', '2014-08-10', 1, '1407629598');
INSERT INTO `statistik` VALUES ('180.76.6.43', '2014-08-10', 1, '1407631270');
INSERT INTO `statistik` VALUES ('118.97.212.182', '2014-08-10', 4, '1407632228');
INSERT INTO `statistik` VALUES ('139.0.102.140', '2014-08-10', 1, '1407633944');
INSERT INTO `statistik` VALUES ('66.249.77.87', '2014-08-10', 1, '1407636902');
INSERT INTO `statistik` VALUES ('66.249.77.97', '2014-08-10', 1, '1407639983');
INSERT INTO `statistik` VALUES ('180.76.6.159', '2014-08-10', 1, '1407640798');
INSERT INTO `statistik` VALUES ('118.97.212.181', '2014-08-10', 3, '1407642556');
INSERT INTO `statistik` VALUES ('36.68.46.37', '2014-08-10', 2, '1407642940');
INSERT INTO `statistik` VALUES ('180.76.5.69', '2014-08-10', 1, '1407645158');
INSERT INTO `statistik` VALUES ('180.76.5.80', '2014-08-10', 1, '1407648268');
INSERT INTO `statistik` VALUES ('180.76.5.143', '2014-08-10', 1, '1407650068');
INSERT INTO `statistik` VALUES ('223.255.231.145', '2014-08-10', 1, '1407650216');
INSERT INTO `statistik` VALUES ('180.76.6.149', '2014-08-10', 1, '1407657020');
INSERT INTO `statistik` VALUES ('36.77.183.218', '2014-08-10', 2, '1407657119');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-08-10', 2, '1407660057');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-08-11', 2, '1407725194');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-08-12', 1, '1407862185');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-08-13', 1, '1407899819');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-08-17', 44, '1408287630');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-08-18', 253, '1408372590');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-08-19', 4, '1408413702');
INSERT INTO `statistik` VALUES ('::1', '2014-08-19', 90, '1408433250');
INSERT INTO `statistik` VALUES ('::1', '2014-08-31', 1, '1409487043');
INSERT INTO `statistik` VALUES ('::1', '2015-03-11', 11, '1426061663');
INSERT INTO `statistik` VALUES ('::1', '2015-03-12', 1, '1426114982');
INSERT INTO `statistik` VALUES ('::1', '2015-03-15', 32, '1426430637');
INSERT INTO `statistik` VALUES ('::1', '2015-03-18', 137, '1426666506');
INSERT INTO `statistik` VALUES ('::1', '2015-03-19', 143, '1426751746');
INSERT INTO `statistik` VALUES ('::1', '2015-03-21', 198, '1426912294');
INSERT INTO `statistik` VALUES ('::1', '2015-03-22', 554, '1427039069');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2015-03-22', 1, '1427030317');
INSERT INTO `statistik` VALUES ('::1', '2015-03-23', 275, '1427093113');
INSERT INTO `statistik` VALUES ('::1', '2015-03-24', 42, '1427179474');
INSERT INTO `statistik` VALUES ('::1', '2015-03-25', 45, '1427251499');
INSERT INTO `statistik` VALUES ('39.225.164.2', '2015-05-14', 7, '1431584409');
INSERT INTO `statistik` VALUES ('119.110.72.130', '2015-05-14', 30, '1431595368');
INSERT INTO `statistik` VALUES ('89.145.95.2', '2015-05-14', 1, '1431582645');
INSERT INTO `statistik` VALUES ('66.220.158.118', '2015-05-14', 1, '1431582842');
INSERT INTO `statistik` VALUES ('66.220.158.115', '2015-05-14', 1, '1431582852');
INSERT INTO `statistik` VALUES ('66.220.158.112', '2015-05-14', 3, '1431595371');
INSERT INTO `statistik` VALUES ('66.220.158.119', '2015-05-14', 1, '1431582942');
INSERT INTO `statistik` VALUES ('114.125.43.185', '2015-05-14', 5, '1431602132');
INSERT INTO `statistik` VALUES ('119.110.72.130', '2015-05-15', 1, '1431673658');
INSERT INTO `statistik` VALUES ('114.125.45.206', '2015-05-16', 18, '1431741581');
INSERT INTO `statistik` VALUES ('66.220.158.116', '2015-05-16', 1, '1431741049');
INSERT INTO `statistik` VALUES ('66.220.158.118', '2015-05-16', 1, '1431741224');
INSERT INTO `statistik` VALUES ('66.220.158.114', '2015-05-16', 1, '1431741233');
INSERT INTO `statistik` VALUES ('39.229.6.148', '2015-05-16', 11, '1431791037');
INSERT INTO `statistik` VALUES ('39.225.236.155', '2015-05-17', 8, '1431862096');
INSERT INTO `statistik` VALUES ('119.110.72.130', '2015-05-19', 6, '1432006569');
INSERT INTO `statistik` VALUES ('89.145.95.42', '2015-05-19', 2, '1432006661');
INSERT INTO `statistik` VALUES ('114.121.133.117', '2015-05-19', 3, '1432046663');
INSERT INTO `statistik` VALUES ('124.195.114.65', '2015-05-28', 16, '1432832381');
INSERT INTO `statistik` VALUES ('66.220.158.119', '2015-05-28', 1, '1432831000');
INSERT INTO `statistik` VALUES ('66.220.158.115', '2015-05-28', 1, '1432831013');
INSERT INTO `statistik` VALUES ('66.220.158.116', '2015-05-28', 1, '1432832385');
INSERT INTO `statistik` VALUES ('124.195.114.65', '2015-05-29', 77, '1432836214');
INSERT INTO `statistik` VALUES ('66.220.158.113', '2015-05-29', 1, '1432835961');
INSERT INTO `statistik` VALUES ('66.249.84.178', '2015-05-29', 1, '1432836220');
INSERT INTO `statistik` VALUES ('103.246.200.14', '2015-05-29', 1, '1432851867');
INSERT INTO `statistik` VALUES ('103.246.200.59', '2015-05-29', 1, '1432851916');
INSERT INTO `statistik` VALUES ('114.124.5.250', '2015-05-29', 6, '1432852876');
INSERT INTO `statistik` VALUES ('173.252.105.114', '2015-05-29', 1, '1432852770');
INSERT INTO `statistik` VALUES ('120.180.175.150', '2015-05-29', 36, '1432864082');
INSERT INTO `statistik` VALUES ('103.246.200.50', '2015-05-29', 1, '1432863615');
INSERT INTO `statistik` VALUES ('103.246.200.1', '2015-05-29', 1, '1432863650');
INSERT INTO `statistik` VALUES ('103.246.200.33', '2015-05-29', 1, '1432863711');
INSERT INTO `statistik` VALUES ('103.246.200.44', '2015-05-29', 1, '1432863795');
INSERT INTO `statistik` VALUES ('120.174.144.115', '2015-05-29', 1, '1432908445');
INSERT INTO `statistik` VALUES ('119.110.72.130', '2015-05-29', 27, '1432912022');
INSERT INTO `statistik` VALUES ('173.252.90.117', '2015-05-29', 1, '1432910852');
INSERT INTO `statistik` VALUES ('173.252.90.116', '2015-05-29', 1, '1432910873');
INSERT INTO `statistik` VALUES ('173.252.90.118', '2015-05-29', 1, '1432911344');
INSERT INTO `statistik` VALUES ('173.252.90.122', '2015-05-29', 1, '1432911470');
INSERT INTO `statistik` VALUES ('66.249.84.190', '2015-05-30', 1, '1432945579');
INSERT INTO `statistik` VALUES ('39.254.117.222', '2015-05-30', 1, '1432991226');
INSERT INTO `statistik` VALUES ('66.249.84.178', '2015-05-31', 1, '1433037242');
INSERT INTO `statistik` VALUES ('120.176.92.190', '2015-06-01', 3, '1433128955');
INSERT INTO `statistik` VALUES ('66.102.6.210', '2015-06-01', 1, '1433134430');
INSERT INTO `statistik` VALUES ('120.164.44.28', '2015-06-01', 13, '1433149419');
INSERT INTO `statistik` VALUES ('124.195.118.227', '2015-06-01', 1, '1433170960');
INSERT INTO `statistik` VALUES ('120.177.28.244', '2015-06-02', 8, '1433220043');
INSERT INTO `statistik` VALUES ('66.249.84.190', '2015-06-02', 1, '1433247837');
INSERT INTO `statistik` VALUES ('120.190.75.179', '2015-06-03', 7, '1433302768');
INSERT INTO `statistik` VALUES ('119.110.72.130', '2015-06-03', 4, '1433302761');
INSERT INTO `statistik` VALUES ('89.145.95.2', '2015-06-03', 1, '1433302690');
INSERT INTO `statistik` VALUES ('66.249.71.147', '2015-06-07', 46, '1433696370');
INSERT INTO `statistik` VALUES ('66.249.71.130', '2015-06-07', 30, '1433696150');
INSERT INTO `statistik` VALUES ('66.249.71.164', '2015-06-07', 37, '1433696154');
INSERT INTO `statistik` VALUES ('173.252.74.113', '2015-06-07', 8, '1433694061');
INSERT INTO `statistik` VALUES ('173.252.74.117', '2015-06-07', 3, '1433676319');
INSERT INTO `statistik` VALUES ('66.249.64.57', '2015-06-07', 1, '1433674283');
INSERT INTO `statistik` VALUES ('173.252.88.89', '2015-06-07', 5, '1433677999');
INSERT INTO `statistik` VALUES ('173.252.88.86', '2015-06-07', 2, '1433677597');
INSERT INTO `statistik` VALUES ('173.252.74.119', '2015-06-07', 7, '1433694862');
INSERT INTO `statistik` VALUES ('66.249.79.117', '2015-06-07', 1, '1433674983');
INSERT INTO `statistik` VALUES ('173.252.88.84', '2015-06-07', 2, '1433676738');
INSERT INTO `statistik` VALUES ('173.252.74.115', '2015-06-07', 3, '1433676460');
INSERT INTO `statistik` VALUES ('173.252.74.114', '2015-06-07', 2, '1433694204');
INSERT INTO `statistik` VALUES ('173.252.74.118', '2015-06-07', 3, '1433676180');
INSERT INTO `statistik` VALUES ('173.252.74.112', '2015-06-07', 5, '1433695314');
INSERT INTO `statistik` VALUES ('173.252.88.85', '2015-06-07', 2, '1433677804');
INSERT INTO `statistik` VALUES ('173.252.88.90', '2015-06-07', 1, '1433676251');
INSERT INTO `statistik` VALUES ('173.252.74.116', '2015-06-07', 5, '1433695249');
INSERT INTO `statistik` VALUES ('173.252.88.87', '2015-06-07', 2, '1433677488');
INSERT INTO `statistik` VALUES ('173.252.88.88', '2015-06-07', 1, '1433677370');
INSERT INTO `statistik` VALUES ('66.249.79.130', '2015-06-07', 1, '1433694848');
INSERT INTO `statistik` VALUES ('66.220.156.116', '2015-06-07', 2, '1433696197');
INSERT INTO `statistik` VALUES ('66.249.67.104', '2015-06-07', 1, '1433696147');
INSERT INTO `statistik` VALUES ('66.220.156.112', '2015-06-07', 2, '1433696173');
INSERT INTO `statistik` VALUES ('66.220.146.22', '2015-06-07', 1, '1433696162');
INSERT INTO `statistik` VALUES ('66.249.67.117', '2015-06-07', 1, '1433696288');
INSERT INTO `statistik` VALUES ('66.220.156.114', '2015-06-07', 1, '1433696309');
INSERT INTO `statistik` VALUES ('66.220.156.117', '2015-06-08', 3, '1433711204');
INSERT INTO `statistik` VALUES ('66.249.71.164', '2015-06-08', 32, '1433779112');
INSERT INTO `statistik` VALUES ('66.220.146.25', '2015-06-08', 2, '1433736854');
INSERT INTO `statistik` VALUES ('66.220.156.116', '2015-06-08', 2, '1433709422');
INSERT INTO `statistik` VALUES ('66.249.71.147', '2015-06-08', 29, '1433748751');
INSERT INTO `statistik` VALUES ('66.220.156.112', '2015-06-08', 4, '1433715007');
INSERT INTO `statistik` VALUES ('66.220.146.20', '2015-06-08', 1, '1433696744');
INSERT INTO `statistik` VALUES ('66.249.71.130', '2015-06-08', 38, '1433777391');
INSERT INTO `statistik` VALUES ('66.220.156.118', '2015-06-08', 2, '1433712628');
INSERT INTO `statistik` VALUES ('66.220.146.27', '2015-06-08', 1, '1433712556');
INSERT INTO `statistik` VALUES ('66.220.146.26', '2015-06-08', 1, '1433712746');
INSERT INTO `statistik` VALUES ('66.249.67.104', '2015-06-08', 4, '1433746797');
INSERT INTO `statistik` VALUES ('66.220.146.22', '2015-06-08', 1, '1433714244');
INSERT INTO `statistik` VALUES ('66.220.156.115', '2015-06-08', 2, '1433714821');
INSERT INTO `statistik` VALUES ('66.249.67.117', '2015-06-08', 2, '1433780504');
INSERT INTO `statistik` VALUES ('120.176.251.49', '2015-06-08', 2, '1433737104');
INSERT INTO `statistik` VALUES ('66.220.156.119', '2015-06-08', 1, '1433737457');
INSERT INTO `statistik` VALUES ('66.249.71.147', '2015-06-09', 3, '1433836081');
INSERT INTO `statistik` VALUES ('66.249.71.130', '2015-06-09', 4, '1433835126');
INSERT INTO `statistik` VALUES ('66.249.67.104', '2015-06-09', 1, '1433788622');
INSERT INTO `statistik` VALUES ('66.249.71.164', '2015-06-09', 1, '1433823064');
INSERT INTO `statistik` VALUES ('66.249.71.130', '2015-06-10', 5, '1433953790');
INSERT INTO `statistik` VALUES ('66.249.67.117', '2015-06-10', 1, '1433911605');
INSERT INTO `statistik` VALUES ('66.249.71.164', '2015-06-10', 3, '1433954890');
INSERT INTO `statistik` VALUES ('66.249.71.147', '2015-06-10', 2, '1433953573');
INSERT INTO `statistik` VALUES ('66.249.71.147', '2015-06-11', 1, '1433957808');
INSERT INTO `statistik` VALUES ('66.249.71.164', '2015-06-11', 2, '1433990805');
INSERT INTO `statistik` VALUES ('68.180.228.104', '2015-06-11', 1, '1433975257');
INSERT INTO `statistik` VALUES ('66.249.71.130', '2015-06-11', 1, '1433991891');
INSERT INTO `statistik` VALUES ('36.68.28.19', '2015-06-14', 5, '1434224041');
INSERT INTO `statistik` VALUES ('120.164.46.127', '2015-06-14', 2, '1434239557');
INSERT INTO `statistik` VALUES ('66.249.67.248', '2015-06-15', 1, '1434362861');
INSERT INTO `statistik` VALUES ('104.193.10.50', '2015-06-15', 3, '1434372762');
INSERT INTO `statistik` VALUES ('104.193.10.50', '2015-06-16', 2, '1434454308');
INSERT INTO `statistik` VALUES ('36.80.234.114', '2015-06-16', 4, '1434443273');
INSERT INTO `statistik` VALUES ('173.252.74.115', '2015-06-16', 1, '1434443264');
INSERT INTO `statistik` VALUES ('173.252.74.114', '2015-06-16', 1, '1434443279');
INSERT INTO `statistik` VALUES ('119.110.72.130', '2015-06-16', 1, '1434467216');
INSERT INTO `statistik` VALUES ('124.195.116.71', '2015-06-17', 3, '1434551738');
INSERT INTO `statistik` VALUES ('120.184.130.21', '2015-06-27', 1, '1435386862');
INSERT INTO `statistik` VALUES ('66.249.84.246', '2015-06-27', 1, '1435387150');
INSERT INTO `statistik` VALUES ('120.176.176.106', '2015-06-28', 7, '1435461088');
INSERT INTO `statistik` VALUES ('66.220.158.114', '2015-06-28', 1, '1435461007');
INSERT INTO `statistik` VALUES ('66.249.84.129', '2015-06-28', 1, '1435466083');
INSERT INTO `statistik` VALUES ('66.249.84.246', '2015-06-29', 2, '1435563211');
INSERT INTO `statistik` VALUES ('66.249.84.252', '2015-06-29', 1, '1435563206');
INSERT INTO `statistik` VALUES ('66.249.84.246', '2015-06-30', 3, '1435677685');
INSERT INTO `statistik` VALUES ('66.249.84.252', '2015-06-30', 1, '1435645799');
INSERT INTO `statistik` VALUES ('66.249.84.252', '2015-07-01', 1, '1435710707');
INSERT INTO `statistik` VALUES ('66.249.84.129', '2015-07-01', 1, '1435711780');
INSERT INTO `statistik` VALUES ('120.177.18.200', '2015-07-02', 1, '1435824891');
INSERT INTO `statistik` VALUES ('::1', '2015-11-25', 15, '1448407930');
INSERT INTO `statistik` VALUES ('::1', '2015-12-01', 12, '1448944568');
INSERT INTO `statistik` VALUES ('::1', '2015-12-03', 9, '1449138520');
INSERT INTO `statistik` VALUES ('::1', '2015-12-05', 26, '1449279360');
INSERT INTO `statistik` VALUES ('::1', '2015-12-07', 4, '1449442678');
INSERT INTO `statistik` VALUES ('::1', '2015-12-08', 8, '1449532582');
INSERT INTO `statistik` VALUES ('::1', '2015-12-13', 31, '1449974628');
INSERT INTO `statistik` VALUES ('::1', '2015-12-18', 9, '1450418535');
INSERT INTO `statistik` VALUES ('::1', '2015-12-21', 10, '1450654644');
INSERT INTO `statistik` VALUES ('::1', '2015-12-24', 3, '1450917714');
INSERT INTO `statistik` VALUES ('::1', '2015-12-25', 4, '1451037761');
INSERT INTO `statistik` VALUES ('::1', '2015-12-26', 5, '1451086546');
INSERT INTO `statistik` VALUES ('::1', '2016-01-01', 1, '1451626224');
INSERT INTO `statistik` VALUES ('::1', '2016-01-12', 2, '1452564572');
INSERT INTO `statistik` VALUES ('::1', '2016-01-16', 7, '1452913899');
INSERT INTO `statistik` VALUES ('::1', '2016-01-17', 150, '1453036730');
INSERT INTO `statistik` VALUES ('::1', '2016-07-24', 24, '1469318037');
INSERT INTO `statistik` VALUES ('::1', '2016-07-29', 1, '1469767572');
INSERT INTO `statistik` VALUES ('::1', '2016-07-31', 1, '1469936872');
INSERT INTO `statistik` VALUES ('::1', '2016-08-01', 14, '1470019073');
INSERT INTO `statistik` VALUES ('::1', '2016-08-12', 4, '1470940786');
INSERT INTO `statistik` VALUES ('::1', '2016-08-14', 3, '1471191885');
INSERT INTO `statistik` VALUES ('::1', '2016-08-22', 5, '1471851644');
INSERT INTO `statistik` VALUES ('::1', '2016-08-26', 4, '1472207940');
INSERT INTO `statistik` VALUES ('::1', '2016-08-29', 9, '1472475500');
INSERT INTO `statistik` VALUES ('::1', '2016-08-30', 1, '1472531831');
INSERT INTO `statistik` VALUES ('::1', '2016-09-13', 4, '1473760584');
INSERT INTO `statistik` VALUES ('::1', '2016-09-16', 7, '1473998550');
INSERT INTO `statistik` VALUES ('::1', '2016-09-17', 3, '1474076080');
INSERT INTO `statistik` VALUES ('::1', '2016-09-20', 4, '1474335445');
INSERT INTO `statistik` VALUES ('::1', '2016-09-21', 5, '1474470987');
INSERT INTO `statistik` VALUES ('::1', '2016-09-26', 8, '1474866854');
INSERT INTO `statistik` VALUES ('::1', '2016-11-21', 20, '1479719811');
INSERT INTO `statistik` VALUES ('::1', '2016-11-22', 26, '1479795839');
INSERT INTO `statistik` VALUES ('::1', '2016-12-24', 1, '1482592503');
INSERT INTO `statistik` VALUES ('::1', '2016-12-23', 2, '1482451494');
INSERT INTO `statistik` VALUES ('::1', '2016-12-20', 7, '1482205377');
INSERT INTO `statistik` VALUES ('::1', '2016-12-14', 4, '1481717872');
INSERT INTO `statistik` VALUES ('::1', '2016-12-13', 24, '1481593512');
INSERT INTO `statistik` VALUES ('::1', '2016-12-09', 1, '1481243159');
INSERT INTO `statistik` VALUES ('::1', '2016-12-03', 3, '1480741491');
INSERT INTO `statistik` VALUES ('::1', '2016-11-28', 32, '1480303392');
INSERT INTO `statistik` VALUES ('::1', '2016-11-27', 2, '1480224412');
INSERT INTO `statistik` VALUES ('::1', '2016-11-24', 403, '1479984680');
INSERT INTO `statistik` VALUES ('::1', '2016-11-23', 2, '1479913316');
INSERT INTO `statistik` VALUES ('::1', '2017-01-03', 9, '1483421812');
INSERT INTO `statistik` VALUES ('::1', '2017-01-04', 2, '1483534977');
INSERT INTO `statistik` VALUES ('::1', '2017-01-05', 3, '1483627230');
INSERT INTO `statistik` VALUES ('::1', '2017-01-14', 1, '1484352852');
INSERT INTO `statistik` VALUES ('::1', '2017-01-17', 3, '1484663823');
INSERT INTO `statistik` VALUES ('::1', '2017-01-25', 12, '1485359750');
INSERT INTO `statistik` VALUES ('::1', '2017-01-26', 37, '1485414680');
INSERT INTO `statistik` VALUES ('::1', '2017-01-27', 70, '1485508785');
INSERT INTO `statistik` VALUES ('::1', '2017-01-28', 1, '1485567010');
INSERT INTO `statistik` VALUES ('::1', '2017-02-04', 1, '1486213804');
INSERT INTO `statistik` VALUES ('::1', '2017-02-09', 14, '1486659480');
INSERT INTO `statistik` VALUES ('::1', '2017-02-10', 3, '1486684650');
INSERT INTO `statistik` VALUES ('::1', '2017-02-11', 11, '1486773431');
INSERT INTO `statistik` VALUES ('::1', '2017-02-12', 6, '1486869838');
INSERT INTO `statistik` VALUES ('::1', '2017-02-13', 5, '1486995163');
INSERT INTO `statistik` VALUES ('::1', '2017-02-15', 3, '1487123924');
INSERT INTO `statistik` VALUES ('::1', '2017-02-21', 1, '1487659967');
INSERT INTO `statistik` VALUES ('::1', '2017-02-23', 7, '1487832476');
INSERT INTO `statistik` VALUES ('::1', '2017-02-26', 4, '1488064851');
INSERT INTO `statistik` VALUES ('::1', '2017-03-13', 44, '1489366890');
INSERT INTO `statistik` VALUES ('::1', '2017-03-17', 24, '1489744337');
INSERT INTO `statistik` VALUES ('::1', '2017-03-20', 1, '1489988038');
INSERT INTO `statistik` VALUES ('::1', '2017-03-25', 1, '1490413626');
INSERT INTO `statistik` VALUES ('::1', '2017-03-29', 7, '1490744633');
INSERT INTO `statistik` VALUES ('::1', '2017-04-02', 1, '1491122695');
INSERT INTO `statistik` VALUES ('::1', '2017-04-06', 56, '1491462329');
INSERT INTO `statistik` VALUES ('::1', '2017-04-07', 59, '1491524075');
INSERT INTO `statistik` VALUES ('::1', '2017-04-09', 20, '1491711058');
INSERT INTO `statistik` VALUES ('::1', '2017-04-11', 9, '1491877995');
INSERT INTO `statistik` VALUES ('::1', '2017-04-12', 124, '1492006218');
INSERT INTO `statistik` VALUES ('::1', '2017-04-13', 53, '1492088580');
INSERT INTO `statistik` VALUES ('::1', '2017-05-14', 133, '1494767093');
INSERT INTO `statistik` VALUES ('::1', '2017-05-20', 167, '1495299592');
INSERT INTO `statistik` VALUES ('::1', '2017-05-21', 234, '1495359950');
INSERT INTO `statistik` VALUES ('::1', '2018-04-19', 1, '1524111568');
INSERT INTO `statistik` VALUES ('::1', '2018-04-21', 1, '1524249582');
INSERT INTO `statistik` VALUES ('::1', '2018-04-24', 19, '1524509093');
INSERT INTO `statistik` VALUES ('::1', '2018-05-04', 13, '1525441129');
INSERT INTO `statistik` VALUES ('::1', '2018-05-05', 36, '1525494921');
INSERT INTO `statistik` VALUES ('::1', '2018-05-06', 5, '1525614861');
INSERT INTO `statistik` VALUES ('::1', '2018-05-11', 15, '1525998298');
INSERT INTO `statistik` VALUES ('::1', '2018-05-18', 4, '1526611139');
INSERT INTO `statistik` VALUES ('::1', '2018-05-19', 6, '1526701697');
INSERT INTO `statistik` VALUES ('::1', '2018-05-20', 13, '1526833607');
INSERT INTO `statistik` VALUES ('::1', '2018-05-22', 13, '1526947912');
INSERT INTO `statistik` VALUES ('::1', '2018-05-23', 16, '1527056425');
INSERT INTO `statistik` VALUES ('::1', '2018-05-31', 1, '1527743948');
INSERT INTO `statistik` VALUES ('::1', '2018-06-01', 2, '1527815549');
INSERT INTO `statistik` VALUES ('::1', '2018-06-03', 191, '1528045141');
INSERT INTO `statistik` VALUES ('::1', '2018-06-04', 100, '1528127678');
INSERT INTO `statistik` VALUES ('::1', '2019-05-18', 28, '1558141438');
INSERT INTO `statistik` VALUES ('::1', '2019-06-30', 2, '1561872220');
INSERT INTO `statistik` VALUES ('::1', '2019-07-01', 1, '1561950236');
INSERT INTO `statistik` VALUES ('::1', '2019-07-02', 1, '1562028708');
INSERT INTO `statistik` VALUES ('::1', '2019-07-08', 1, '1562544054');
INSERT INTO `statistik` VALUES ('::1', '2019-07-13', 1, '1562978601');
INSERT INTO `statistik` VALUES ('::1', '2019-07-14', 243, '1563094093');
INSERT INTO `statistik` VALUES ('::1', '2019-07-15', 213, '1563173043');
INSERT INTO `statistik` VALUES ('::1', '2019-07-16', 3, '1563231376');
INSERT INTO `statistik` VALUES ('::1', '2019-07-17', 9, '1563323606');
INSERT INTO `statistik` VALUES ('::1', '2019-07-18', 4, '1563407947');
INSERT INTO `statistik` VALUES ('::1', '2019-08-27', 2, '1566889548');
INSERT INTO `statistik` VALUES ('::1', '2019-11-14', 100, '1573723243');
INSERT INTO `statistik` VALUES ('::1', '2019-11-15', 1, '1573815541');
INSERT INTO `statistik` VALUES ('::1', '2019-11-16', 92, '1573912524');
INSERT INTO `statistik` VALUES ('::1', '2019-11-17', 14, '1573997167');
INSERT INTO `statistik` VALUES ('::1', '2019-11-18', 380, '1574068697');
INSERT INTO `statistik` VALUES ('::1', '2019-11-19', 12, '1574148729');
INSERT INTO `statistik` VALUES ('::1', '2019-11-20', 5, '1574240913');
INSERT INTO `statistik` VALUES ('::1', '2019-11-21', 1, '1574291940');
INSERT INTO `statistik` VALUES ('::1', '2019-11-24', 3, '1574552073');
INSERT INTO `statistik` VALUES ('::1', '2020-02-09', 3, '1581212463');
INSERT INTO `statistik` VALUES ('::1', '2022-07-13', 86, '1657725171');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2022-07-13', 2, '1657725013');
INSERT INTO `statistik` VALUES ('::1', '2022-07-14', 3, '1657768686');
INSERT INTO `statistik` VALUES ('::1', '2022-07-15', 5, '1657854265');
INSERT INTO `statistik` VALUES ('::1', '2022-07-18', 11, '1658128600');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2022-07-19', 3, '1658195220');
INSERT INTO `statistik` VALUES ('::1', '2022-07-19', 40, '1658199161');
INSERT INTO `statistik` VALUES ('::1', '2022-07-20', 165, '1658288797');

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag`  (
  `id_tag` int(5) NOT NULL AUTO_INCREMENT,
  `nama_tag` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL,
  PRIMARY KEY (`id_tag`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES (1, 'Informasi', 'admin', 'informasi', 0);
INSERT INTO `tag` VALUES (2, 'Perundangan', 'admin', 'perundangan', 0);
INSERT INTO `tag` VALUES (3, 'Teknologi', 'admin', 'teknologi', 0);
INSERT INTO `tag` VALUES (4, 'Komunikasi', 'admin', 'komunikasi', 0);
INSERT INTO `tag` VALUES (5, 'Aparatur', 'admin', 'aparatur', 0);

-- ----------------------------
-- Table structure for tagvid
-- ----------------------------
DROP TABLE IF EXISTS `tagvid`;
CREATE TABLE `tagvid`  (
  `id_tag` int(5) NOT NULL AUTO_INCREMENT,
  `nama_tag` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL,
  PRIMARY KEY (`id_tag`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tagvid
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_comment
-- ----------------------------
DROP TABLE IF EXISTS `tbl_comment`;
CREATE TABLE `tbl_comment`  (
  `id_komentar` int(5) NOT NULL AUTO_INCREMENT,
  `reply` int(5) NOT NULL,
  `nama_lengkap` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_email` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `isi_pesan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_komentar` date NOT NULL,
  `jam_komentar` time NOT NULL,
  PRIMARY KEY (`id_komentar`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_comment
-- ----------------------------

-- ----------------------------
-- Table structure for templates
-- ----------------------------
DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates`  (
  `id_templates` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_templates`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 26 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of templates
-- ----------------------------
INSERT INTO `templates` VALUES (22, 'BKPSDM Ciamis', 'admin', 'CORE.inc', 'bkpsdm', 'Y');
INSERT INTO `templates` VALUES (24, 'Swarakalibata Personal Template', 'admin', 'Robby Prihandaya', 'phpmu-standar', 'N');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('admin', '040329131c0a68ea1fc22cc2a52da246dbb84c1f3ce0dc57c763c62ea9635b27764ffca747de30f1fbaebd29899122fbfeb5c8113d7fe8762518b5ecbe5d3698', 'BKPSDM Ciamis', 'info@bkpsdm.ciamiskab.go.id', '62265776659', 'blank1.png', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7');

-- ----------------------------
-- Table structure for users_modul
-- ----------------------------
DROP TABLE IF EXISTS `users_modul`;
CREATE TABLE `users_modul`  (
  `id_umod` int(11) NOT NULL AUTO_INCREMENT,
  `id_session` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_modul` int(11) NOT NULL,
  PRIMARY KEY (`id_umod`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_modul
-- ----------------------------
INSERT INTO `users_modul` VALUES (1, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 70);
INSERT INTO `users_modul` VALUES (2, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 65);
INSERT INTO `users_modul` VALUES (3, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 63);
INSERT INTO `users_modul` VALUES (4, 'f76ad5ee772ac196cbc09824e24859ee', 70);
INSERT INTO `users_modul` VALUES (5, 'f76ad5ee772ac196cbc09824e24859ee', 65);
INSERT INTO `users_modul` VALUES (6, 'f76ad5ee772ac196cbc09824e24859ee', 63);
INSERT INTO `users_modul` VALUES (7, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 18);
INSERT INTO `users_modul` VALUES (8, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 66);
INSERT INTO `users_modul` VALUES (9, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 33);
INSERT INTO `users_modul` VALUES (10, '3460d81e02faa3559f9e02c9a766fcbd-20170124215625', 18);
INSERT INTO `users_modul` VALUES (11, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 41);
INSERT INTO `users_modul` VALUES (12, '6bec9c852847242e384a4d5ac0962ba0-20170406140423', 18);
INSERT INTO `users_modul` VALUES (13, 'fa7688658d8b38aae731826ea1daebb5-20170521103501', 18);
INSERT INTO `users_modul` VALUES (14, 'cfcd208495d565ef66e7dff9f98764da-20180421112213', 18);

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id_video` int(5) NOT NULL AUTO_INCREMENT,
  `id_playlist` int(5) NOT NULL,
  `username` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `jdl_video` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `video_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gbr_video` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `video` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dilihat` int(7) NOT NULL DEFAULT 1,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `tagvid` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_video`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (1, 1, 'admin', 'PP No. 53 Th. 2010', 'pp-no-53-th-2010', '', 'cover_disiplin.jpg', '', 'https://www.youtube.com/watch?v=yEJdGGuYSOU', 587, 'Senin', '2020-01-20', '13:16:31', '');
INSERT INTO `video` VALUES (2, 2, 'admin', 'ALUR PROSES UJIAN CAT', 'alur-proses-ujian-cat', '', 'Alur ujian skd.mp4', '', 'https://youtu.be/7WBeBkQlW-w', 1014, 'Senin', '2020-01-27', '14:41:30', '');
INSERT INTO `video` VALUES (3, 2, 'admin', 'PELAKSANAAN TEST SKD CASN 2021', 'pelaksanaan-test-skd-casn-2021', '<p>Pelaksanaan Seleksi Kompetensi Dasar (SKD) Test CASN tahun 2021</p>\r\n', '', '', 'https://youtu.be/PvqknqVSlVk', 723, 'Rabu', '2021-11-17', '10:49:18', '');

SET FOREIGN_KEY_CHECKS = 1;
