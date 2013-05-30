/*
Navicat MySQL Data Transfer

Source Server         : ayusfesyen.com
Source Server Version : 50168
Source Host           : ayusfesyen.com:3306
Source Database       : azaliha_order

Target Server Type    : MYSQL
Target Server Version : 50168
File Encoding         : 65001

Date: 2013-05-31 03:21:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `acknowledgeable`
-- ----------------------------
DROP TABLE IF EXISTS `acknowledgeable`;
CREATE TABLE `acknowledgeable` (
  `acknowledgeable_id` int(11) NOT NULL AUTO_INCREMENT,
  `acknowledgeable` varchar(500) NOT NULL,
  `order_my_id` int(11) NOT NULL,
  PRIMARY KEY (`acknowledgeable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acknowledgeable
-- ----------------------------
INSERT INTO `acknowledgeable` VALUES ('1', 'Google', '0');
INSERT INTO `acknowledgeable` VALUES ('2', 'Facebook', '0');
INSERT INTO `acknowledgeable` VALUES ('3', 'Friends', '0');
INSERT INTO `acknowledgeable` VALUES ('4', 'Relatives', '0');

-- ----------------------------
-- Table structure for `bank`
-- ----------------------------
DROP TABLE IF EXISTS `bank`;
CREATE TABLE `bank` (
  `bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `bank` varchar(500) NOT NULL,
  `acc_no` varchar(255) NOT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bank
-- ----------------------------
INSERT INTO `bank` VALUES ('1', 'Maybank', '152189045335');
INSERT INTO `bank` VALUES ('2', 'CIMB', '');
INSERT INTO `bank` VALUES ('3', 'Paypal', 'azaliha@gmail.com');
INSERT INTO `bank` VALUES ('4', 'Cash', '');
INSERT INTO `bank` VALUES ('7', 'CIMB AYUS', '02030001196105');
INSERT INTO `bank` VALUES ('8', 'Affin Bank', '105230001871');

-- ----------------------------
-- Table structure for `captcha`
-- ----------------------------
DROP TABLE IF EXISTS `captcha`;
CREATE TABLE `captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha
-- ----------------------------

-- ----------------------------
-- Table structure for `ci_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ci_sessions
-- ----------------------------

-- ----------------------------
-- Table structure for `client`
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client` varchar(500) NOT NULL,
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `address_client` varchar(500) NOT NULL,
  `phone_client` varchar(10) NOT NULL,
  `email_client` varchar(100) DEFAULT NULL,
  `facebook_id_client` varchar(5000) DEFAULT NULL,
  `twitter_id_client` varchar(5000) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES ('1', 'Khairatul Nainey Bt Kamaruddin', '', '', 'JKR-1655-DA1, Kuarters Klinik Kesihatan Teluk Intan, Jalan Bandar, 36000 Teluk Intan, Perak.', '0193363671', 'nicknacks82@yahoo.com', null, null, '2');
INSERT INTO `client` VALUES ('2', 'Nazirah Bt Mohamad Sham', '', '', 'No 1487, Jalan Bangau Kampung Dato Ahmad Said Tambatan 2, 30020 Ipoh, Perak.', '0174050876', 'arexy_24@yahoo.com', null, null, '2');
INSERT INTO `client` VALUES ('3', 'Aina Edura Bt Abdul Shukor', '', '', '268, Jalan F2, Fasa 5, Taman Melewati 53100, Kuala Lumpur.', '0193713150', 'fienaedura@gmail.com', null, null, '2');
INSERT INTO `client` VALUES ('4', 'Norshafiqah Bt Mohamad', '', '', 'No 7, Jalan PUJ 2/51 Taman Puncak Jalil, Bandar Putra Permai, Seri Kembangan, 43300 Selangor.', '', '', null, null, '2');
INSERT INTO `client` VALUES ('5', 'Marhayati Bt Yusoff', '', '', 'Kejuruteraan QKS SDN BHD, Block Camilia, 10 Boulevard, Lebuhraya Sprint PJU 6A, 47400 Petaling Jaya, Selangor.', '0133394851', '', null, null, '2');
INSERT INTO `client` VALUES ('6', 'Rosmawati Bt Zakaria', '', '', 'Richbill Freight SVS SDN BHD, Lot 834 Jalan Subang 7, Kawasan Perindustrian Subang, OFF Persiaran Subang, 47500 Subang Jaya, Selangor.', '0126045260', '', null, null, '2');
INSERT INTO `client` VALUES ('7', 'Haniza Bt Rahmat', '', '', '4-394, Jalan Canggang, Taman Ria Jaya, 08000 Sungai Petani, Kedah.', '0173122539', '', null, null, '2');
INSERT INTO `client` VALUES ('8', 'Amalina Bt Abdul Razak', '', '', 'No 12, Jalan Sembilang 2, Taman Teluk Pulai, 41100 Klang, Selangor.', '0164032036', 'babytomeimall@gmail.com', null, null, '2');
INSERT INTO `client` VALUES ('9', 'Hazianura Bt Haron', '', '', 'Pejabat Imigresen KUKUP, 82300 Kukup, Pontian, Johor.', '0127004200', '', null, null, '2');
INSERT INTO `client` VALUES ('10', 'Nazreen Nadia Bt Mat Isa', '', '', 'F422, Kampung Pulau Sepom, Tikam Batu, 08600 Sungai Petani, Kedah.', '0139339905', 'nad_bab87@yahoo.com', null, null, '2');
INSERT INTO `client` VALUES ('11', 'Nur Azmina Bt Paslan', '', '', '47, Solok Kampung Jawa 7, 11900 Bayan Lepas, Pulau Pinang.', '0134522903', '', null, null, '2');
INSERT INTO `client` VALUES ('12', 'Nor Ain Bt Hamzah', '', '', 'Kedai Ayam Hamzah, MR II, KM 5, Jalan Maran, Sebelah BHP Paya Pulai, 28000, Temerloh, Pahang.', '0179060809', 'rieyn_pinky@yahoo.com', null, null, '2');
INSERT INTO `client` VALUES ('13', 'Khairunnisa Bt Zulhairi', '', '', 'Institut Pendidikan Guru, Kampus Sultan Mizan, 22200 Besut, Terengganu.', '0177989083', 'khai_nisa18@yahoo.com', null, null, '2');
INSERT INTO `client` VALUES ('14', 'Jamaliah Bt Md Saad', '', '', 'Jabatan Perhilitan Daerah Sabak Bernam,Jalan Lama, Sungai Haji Dorani,45300, Sungai Besar, Selangor.', '0193893811', '', null, null, '2');
INSERT INTO `client` VALUES ('15', 'Norliza Bt Romizi', '', '', 'Advance Touch Sdn Bhd, Lot 18, Jalan T1AJ 2/5, Taman Industri Alam Jaya, 42300 Puncak Alam, Selangor.', '0193006195', '', null, null, '2');
INSERT INTO `client` VALUES ('16', 'Muneerah Bt Rohaizat', '', '', '208B, Mahallah Zainab Jahsy, Centre for Foundation Studies IIUM, Jalan Universiti 46350 Petaling Jaya, Selangor.', '0172431083', 'hanxia93@gmail.com', null, null, '2');
INSERT INTO `client` VALUES ('17', 'Shahrina Bt Jaies', '', '', 'Siacon Technology Sdn Bhd, 27B, Jalan Canggih 2, Taman Perindustrian Cemerlang, 81700 Ulu Tiram, Johor.', '0127927911', 'nurulshahrinajais@yahoo.com.my', null, null, '2');
INSERT INTO `client` VALUES ('18', 'Norhafizaton Bt Halaluddin', '', '', '693-5, Jalan Pejabat Hutan, Kampung Baru Kerteh, 24300, Terengganu.', '0199086382', '', null, null, '2');
INSERT INTO `client` VALUES ('19', 'DK Siti Rohana Pg Rajudin', '', '', 'No 7302, Jalan Seligi 5, Bandar Baru Kerteh, 24300 Kemaman Terengganu.', '0197447818', '', null, null, '2');
INSERT INTO `client` VALUES ('20', 'Noni Bt Salim', '', '', '121, Simpang 3, Teluk Kumbar, 11920, Bayan Lepas, Pulau Pinang.', '0196401662', '', null, null, '2');
INSERT INTO `client` VALUES ('21', 'Nik Aida Fazila Bt Nik Abdul Majid', '', '', 'Lot 3251, Batu 6 1/2, Jalan Puchong, 58200 Petaling, Kuala Lumpur.', '0123461592', 'wsc8454@gmail.com', null, null, '2');
INSERT INTO `client` VALUES ('22', 'Najmi B Mohamad', '', '', 'Bank Kerjasama Rakyat Malaysia Bhd, Cawangan Jerantut, 27000 Jerantut, Pahang.', '0129619282', 'najmi1978@yahoo.com', null, null, '2');
INSERT INTO `client` VALUES ('23', 'Liza Bt Sait', '', '', 'Ajinomoto (M) Bhd, No 39 Jalan Rosmerah 3/1, Taman Johor Jaya, 81100 Johor.', '0127567027', 'irliza@hotmail.com', null, null, '2');
INSERT INTO `client` VALUES ('24', 'Nur Salsabila Bt Kamarul Ariffin', '', '', 'No 7, Taman Jaya 3, 28000 Temerloh, Pahang.', '0139162432', 'ustazah_sal@yahoo.com', null, null, '2');
INSERT INTO `client` VALUES ('25', 'Norliza Bt Abu Baker', '', '', 'No 61, Jalan Muhibbah 4, Taman Muhibbah, 43000, Kajang, Selangor.', '0125048769', '', null, null, '2');
INSERT INTO `client` VALUES ('26', 'Wanis Anis', '', '', 'No 568-9-14B, Mutiara Kompleks, Batu 3 1/2, Jalan Ipoh, 05200 Kuala Lumpur.', '0174190884', '', null, null, '2');
INSERT INTO `client` VALUES ('27', 'Suhaila Bt Idris', '', '', 'Institut Pendidikan Guru Kampus Perempuan Melayu, 75400, Durian Daun, Melaka.', '0177306687', '', null, null, '2');
INSERT INTO `client` VALUES ('28', 'Melisa Bt A. Rahman', '', '', 'No 8, Jalan Ros 3, Taman Ros, Jalan Kampung Parit Haji Sidek, 83000 Batu Pahat, Johor.', '0197700901', 'omey_lisa@yahoo.com', null, null, '2');
INSERT INTO `client` VALUES ('29', 'Aida Bt Aziz', '', '', 'Matrix Flavours & Fragrances Sdn Bhd, Lot 2944, Jalan Enggang, 42500 Telok Panglima Garang, Selangor.', '0126608004', 'daniazidane@yahoo.com', null, null, '2');
INSERT INTO `client` VALUES ('30', 'Ratnawati Bt Abd Razak', '', '', 'Lot 1250, Jalan Piasau Jaya 2F, 98000 Miri, Sarawak.', '0146808480', '', null, null, '2');
INSERT INTO `client` VALUES ('31', 'Rose Marina Bt Md Zin', '', '', 'No 13, Jalan F/J2, Taman Flora Jaya PT Besar, 83000 Batu Pahat, Johor.', '0137303430', '', null, null, '2');
INSERT INTO `client` VALUES ('32', 'Sarimah Bt Mohd Don', '', '', '462, Jalan Cekal 9, Taman Sri Lambak, 86000 Kluang, Johor.', '0197966397', '', null, null, '2');
INSERT INTO `client` VALUES ('33', 'Fatin Nur Alia Bt Mohammad Sazali', '', '', 'No 161 Kampung Parit Pulai, 84400 Serom Ledang, Johor.', '0167016370', 'aliasazali_92@ymail.com', null, null, '2');
INSERT INTO `client` VALUES ('35', 'Haslinda Adila', '', '', '3-2, Jalan PJU 7/7A, Mutiara Damansara, 47810 Petaling Jaya, Selangor.', '0192289291', '', null, null, '2');
INSERT INTO `client` VALUES ('36', 'Nor Afifah Bt Mohd Baharuddin', '', '', 'No 1, Jalan 7A, Taman Bayu, 45000 Kuala Selangor, Selangor.', '0199099220', '', null, null, '2');
INSERT INTO `client` VALUES ('37', 'Norfadila Bt Kasim', '', '', 'Perpustakaan Utama Universiti Malaya, Lembah Pantai, 50603 Kuala Lumpur.', '0123591432', 'puteri_nooradiella@yahoo.com', null, null, '2');
INSERT INTO `client` VALUES ('38', 'Nursafiah Bt Yahya', '', '', 'Lot 17, Senawang Commercial Park, Phase 1 Pekan Senawang, 70450 Seremban, Negeri Sembilan.', '0136421337', '', null, null, '2');
INSERT INTO `client` VALUES ('39', 'Farah Leeza', '', '', 'No 21, Jalan Prima 7/11, Taman Puchong Prima, 47150 Puchong, Selangor.', '0196661769', '', null, null, '2');
INSERT INTO `client` VALUES ('40', 'Nor \'Aqilah Bt Abd Manas', '', '', 'Felcra Berhad Sungai Ling, Kampung Sungai Ling Baru, 28100 Chenor, Pahang.', '0147945147', '', null, null, '2');
INSERT INTO `client` VALUES ('41', 'Puteri Farihah Bt Megat Husin', '', '', 'Dell Asia Pasific Bayan Lepas, Plot P27 Bayan Lepas Industrial Zone Phase IV, 11900 Bayan Lepas, Penang.', '0124906401', 'put3farihah@yahoo.com', null, null, '2');
INSERT INTO `client` VALUES ('42', 'Muniroh Bt Abu Bakar', '', '', 'Pejabat Belia Dan Sukan Daerah Langkawi, Tingkat 1, Kompleks Sukan Perahu Layar Kebangsaan, Pokok Asam, Kuah 07000 Langkawi, Kedah.', '0194308523', 'munie_sagitterius83@yahoo.com', null, null, '2');
INSERT INTO `client` VALUES ('43', 'Linda Bt Hamzah', '', '', 'Ibu Pejabat Polis Daerah Kerian, 34300 Bagan Serai, Perak.', '0194277789', '', null, null, '2');
INSERT INTO `client` VALUES ('44', 'Maizatul Haniza Bt Ismail', '', '', '604, Blok 58, Apartment Alunan Bayu, Jalan Timun 24/1, Section 24, Shah Alam, Selangor.', '0194744182', '', null, null, '2');
INSERT INTO `client` VALUES ('45', 'Siti Nuradzra Bt Zulkafli', '', '', 'A-G-16, Alpine Village Apartment, Persiaran Lagun Sunway, Sunway City Ipoh, 31150, Ipoh, Perak.', '0129458973', 'eastkiev@gmail.com', null, null, '2');
INSERT INTO `client` VALUES ('46', 'Mariana Bt Jumari', '', '', 'Agensi Anti Dadah Kebangsaan, Jalan Maktab Perguruan Islam, 43000 Kajang, Selangor.', '0122163100', '', null, null, '2');
INSERT INTO `client` VALUES ('47', 'Hidayatul Atiqah Bt Mohd Sabri', '', '', 'No 5, Jalan Jelok Impian 6, Taman Jelok Impian, 43000 Kajang, Selangor.', '0163744203', 'atiqah_najah@yahoo.com', null, null, '2');
INSERT INTO `client` VALUES ('48', 'Nooruldila Bt Jamaludin', '', '', 'Hospital Tanjong Karang, 45500 Tanjong Karang, Selangor.', '0172114674', '', null, null, '2');
INSERT INTO `client` VALUES ('49', 'Murnie Shakilla Bt Shidan', '', '', 'B1-5A-2-A, Kolej Kediaman UTeM Bunga Raya, Pangsapuri Bunga Raya, 75450 Bukit Beruang, Melaka.', '0146383042', '', null, null, '2');
INSERT INTO `client` VALUES ('50', 'Suzana Bt Saad', '', '', 'No 15, Lorong 11/4, Taman Desa Rhu, 70490 Sikamat, Seremban, Negeri Sembilan.', '0176778915', '', null, null, '2');
INSERT INTO `client` VALUES ('51', 'Faizatul Bt Ja\'afar Sidek', '', '', 'Lot 2242 Jalan Rajawali, BT 9 Kebun Bahru, 42500 Telok Panglima Garang, Selangor.', '0126421203', '', null, null, '2');
INSERT INTO `client` VALUES ('52', 'Norazimah Bt Ismail @ Mat Daud', '', '', 'PT 477 Jalan 5 Desa Darulnaim, Pasir Tumbuh, 16150 Kota Bharu, Kelantan.', '0129906011', '', null, null, '2');
INSERT INTO `client` VALUES ('53', 'Safiah Bt Ahmad Sukri', '', '', 'Syarikat Takaful Malaysia, No 28, Jalan Perda Barat 1, Bandar Baru Perda, 14000 Bukit Mertajam, Pulau Pinang.', '0194299801', 'safiah.ahmadsukri@yahoo.com', null, null, '2');
INSERT INTO `client` VALUES ('54', 'Azaliha Abdullah', 'azaliha', '123123', 'No. 72, Jalan Keranji 11, Taman Keranji, 05400, Alor Setar, Kedah', '0162052420', 'azaliha@gmail.com', null, null, '1');
INSERT INTO `client` VALUES ('58', 'Nur Idayu Bt mohd safie', null, null, 'smk telupid, peti surat 02, telupid,89300 sabah.', '0129159392', 'xx@gmail.com', '', '', '2');
INSERT INTO `client` VALUES ('59', 'Noorazura Binti Asnawi', null, null, 'No 37, Jalan SP 4/11, Bandar Saujana Putra, 42610 Jenjarom, Selangor.', '0196081502', 'xx1@gmail.com', '', '', '2');
INSERT INTO `client` VALUES ('60', 'Maryani Bt Haron', null, null, '4355, Jalan Samarinda 9, Taman Samarinda, Pengkalan,78000 Alor Gajah, Melaka.', '0197741810', 'xx2@gmail.com', '', '', '2');
INSERT INTO `client` VALUES ('61', 'Nor Asfazilah Binti Abdullah', null, null, '8914 Jln Kiri 2, Kg Nakhoda, 68100, Batu Caves, Selangor', '0133470988', 'asfazilah@yahoo.com', '', '', '2');
INSERT INTO `client` VALUES ('62', 'Norazliah Bt Ani', null, null, 'SMK Ringlet, 39200 Ringlet, Cameron Highlands, Pahang.', '0125507095', 'xx3@gmail.com', '', '', '2');
INSERT INTO `client` VALUES ('63', 'Anis Fairuznajua Bt Mohamad', null, null, 'No 318, Jalan Desa Aman S8/8, Taman Desa Aman, 09410 Padang Serai, Kulim, Kedah.', '0174554820', 'xx4@gmail.com', '', '', '2');
INSERT INTO `client` VALUES ('64', 'Maslinda Binti Mohamad', null, null, 'No 21, Jalan 15, Taman Berlian, Sungai Jelok, 43000 Kajang, Selangor.', '0123414162', 'xx5@gmail.com', '', '', '2');
INSERT INTO `client` VALUES ('65', 'Dahniar Bt Hussain', null, null, 'Lot 2027 D, 47000 Sungai Buloh, Selangor.', '0162128490', 'dahniarfamily@yahoo.com', '', '', '2');
INSERT INTO `client` VALUES ('66', 'Rozita Bt Sahir', null, null, 'LOT 1044 KG BARU ASSAM JAWA\r\n45700 BUKIT ROTAN\r\nSELANGOR.', '0147162393', 'daniashop@yahoo.com', '', '', '2');
INSERT INTO `client` VALUES ('67', 'Marni Binti Noor Alwi', 'ysa4vd', 'x7sjyt', 'E-01-05, Jalan Seri Setanggi, Taman Seri Setanggi, 80250, Johor Bahru, Johor', '0195507525', 'cempaka_arisa89@yahoo.com', '', '', '2');
INSERT INTO `client` VALUES ('68', 'Renny Diana Zazamira Ramli', '2r5k0w', '2msa1d', 'Lot 998, Green Acres Golf & Country Resort, 20400 Kuala Terengganu, Terengganu', '0139288800', '', '', '', '2');
INSERT INTO `client` VALUES ('69', 'Norhasnah Zakaria', 'm05146', 'sfy24w', 'Perodua Sales Sdn Bhd\nLot 155g Jln Komersial Senawang 1\nPusat Perniagaan Komersial Senawang 70450 Seremban\nNegeri Sembilan', '0136770582', '', '', '', '2');
INSERT INTO `client` VALUES ('70', 'Yanti Corena Roslan', 'dv3b75', 'fq738x', 'B2-10-16 Pandan Court, Taman Pandan Mew Ah, Jalan Mewah 4, 68000 Ampang, Selangor.', '0129009553', '', '', '', '2');
INSERT INTO `client` VALUES ('71', 'Saliza Haron', '6jfnp9', 'jbq576', 'Pejabat Daerah Dan Tanah Petaling, Unit Hasil, Tkt Bawah, Kompleks Pejab At Kerajaan Daerah Petaling, No. 1 Persiaran Atmosfera, Seksyen U5 Subang Bestari, 40150 Shah Alam, Selangor.', '0123645066', '', '', '', '2');
INSERT INTO `client` VALUES ('72', 'Hawa Bt Ismail', 'xw2754', 'dspgq6', 'Km 6 Perigi Hang Tuah,\nDuyong 75460,melaka', '0162632765', '', '', '', '2');
INSERT INTO `client` VALUES ('73', 'Nor Rehan Bt Hussain', 'y4gr1q', 'y03zkr', 'Lot 264, Kg Padang Bongor Binjar\n16150,kota Bharu ,kelantan', '0199891916', '', '', '', '2');
INSERT INTO `client` VALUES ('74', 'Irnie Farahmarhaida Lockman', 'hsc2qk', 'avc65z', 'Bhgn Penyewaan Bangunan,jabtan Penilian & Pengurusan Harta,dewan Bandaraya,tingkat 4,1001,bangunan Th Perdana Jalan Sultan Ismail,50250,kuala Lumpur', '0183507217', '', '', '', '2');
INSERT INTO `client` VALUES ('75', 'Hisziahtul Emela Mohamed', '85svn3', '1r9yt8', 'Majuikan Engineering & Marit Ime Services Sdn Bhd,d/a Kompleks Lkim Kuantan, Jalan Seri Kemunting, Tanah Putih, 25150 Kuantan Pahang', '0199895810', '', '', '', '2');
INSERT INTO `client` VALUES ('76', 'Siti Arwani Bt Abd Aziz', 'r5z892', 'x4s5ch', 'No 54 Kg Belukar,simpang 3 Pendek,15100 Kota Bharu,kelantan', '0193742748', '', '', '', '2');
INSERT INTO `client` VALUES ('77', 'Hartini Mohd Saman', 'hbxydq', 'hrpf8d', 'No 6-2 & 6-m, Jalan Pju 5/20c,the Strand Pusat Perdagangan Kota Damansara,47810, Petaling Jaya,selangor', '0147213645', 'aaa@yahoo.com', '', '', '2');
INSERT INTO `client` VALUES ('78', 'Zuraimah Zainuddin', '07jvbx', '9a2y0h', 'Lot 7588, Jalan Permai 2, Kg Sg Perak,fasa 2,21600,marang Terengganu', '0172136221', '', '', '', '2');
INSERT INTO `client` VALUES ('79', 'Fatimah Saidah Abdul Halim', 'v75xtq', 'q0kz9g', '20 Jalan Au 5c/6, Lembah Keramat, 54200 Kuala Lumpur', '0193853951', '', '', '', '2');
INSERT INTO `client` VALUES ('80', 'Rohaizah Wahab', 'b7g1y8', '4sgn3v', 'Batu 7 1/2, Km 12, Kg Bukit Darat(sebelah Masjid) 76400,tg Kling, Melaka', '0136291894', 'haizah.wahab@gmail.com', '', '', '2');
INSERT INTO `client` VALUES ('81', 'Nurul Fatihah Binti Zainudin', '72dy6m', 'bj7v9f', '1-1-3, Apartment Kenari, Jalan Taman Melati 1, Taman Melati, 53100, Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', '0133449592', 'n_fatihah90@yahoo.com', '', '', '2');
INSERT INTO `client` VALUES ('82', 'Rafidah Baharin', 'hbw9q5', '5aq60m', 'A-0-5 Kuarters Kakitangan Awam,\nJalan Duta.no 1 Jalan Dutamas 3,50480,kuala Lumpur', '0196227622', '', '', '', '2');
INSERT INTO `client` VALUES ('83', 'Hafizah Dahlan', 'pysjnm', 'qbd9p5', 'No. 501, Jln. Kg. Bandar Dlm., Kg. Chubadak, 51100 Kuala Lumpur.', '0133544255', '', '', '', '2');
INSERT INTO `client` VALUES ('84', 'Ina', 'avb3zw', 'arzvc1', 'Jelina Beauty  No. 54 Jalan Bahagia, Tmn Indah, 83710 Parit Yaani Yong Peng Johor.', '0177708985', '', '', '', '2');
INSERT INTO `client` VALUES ('85', ': Hanis Zulaikha Mohd Azizan', '7xpa84', 'hz6xy7', '10-4-3 Taman Bukit Angkasa, Jalan Pantai Dalam , 59200 Kl', '0123067865', '', '', '', '2');
INSERT INTO `client` VALUES ('86', 'Siti Noor Ashikin Adzmi', 'hcvz34', 'j9z802', 'Malaysia Microelectronic Solutions Sdn Bhd,unit W303,3rd Floor, Block 2200 Enterprise Building 3, Persiaran Apec 6300,cyberjaya,selangor', '0179797016', 'sitinoorashikin.adzmi@yahoo.com', '', '', '2');
INSERT INTO `client` VALUES ('87', 'Nor Aidillina Abu Samah', 'xkbsyw', 'j156qm', 'No,240,lot 190,bt 1/2, Jln Pantai 71000 Port Dickson,negeri Sembilan', '0192582124', '', '', '', '2');
INSERT INTO `client` VALUES ('88', 'Nurul Izyan Md Zaid', '2w1qys', 'bdj9mc', 'Lot 7546, Kg Pulai Serai,23000 Dungun Terengganu', '0172769010', '', '', '', '2');
INSERT INTO `client` VALUES ('89', 'Faizatul Sofa Darus', 'zm5kan', 'z09aw4', 'No 303 Blok C1,seksyen 1, Bandar Baru Wangsa Maju,53300 Setapak, Kuala Lumpur', '0194168871', '', '', '', '2');
INSERT INTO `client` VALUES ('90', 'Noradila Ayu Idrus', '0rzn1a', '1nmc3w', 'Aras 6, Wisma Tnb, Jalan Dato Bandar Tunggal,70990 Seremban Negeri Sembilan', '0196359857', '', '', '', '2');
INSERT INTO `client` VALUES ('91', 'Aida Md Salleh', 'smc90j', 'yk7qbd', '37-b Kampung Sedarap Mukim 4,83000 Batu Pahat, Johor', '0133427344', '', '', '', '2');
INSERT INTO `client` VALUES ('92', 'Rabiatul Adawiah Mat Juhan', 'zg5v4r', '4zf87k', 'Klinik Kesihatan Felda Trolak Selatan,35000 Sungkai Perak', '0179868274', '', '', '', '2');
INSERT INTO `client` VALUES ('93', 'Noor Aiin Husaini', 'a1c6tg', '6a98s2', 'No A-5-3,ppr Ks Muhibbah,jalan Puchong Pelaling,kuala Lumpur', '0196997616', '', '', '', '2');
INSERT INTO `client` VALUES ('94', 'Fazidah Aini', '0tg6cd', 'swg9p6', 'Alor Setar,kedah', '0194748636', 'faiz238@yahoo.com', '', '', '2');
INSERT INTO `client` VALUES ('96', 'Suriwati Ahmad', '6jv4rw', 'v5wrq2', 'No 4, Jalan Bukit Flora,\n2/24,taman Bukit Flora 2,83000,batu Pahat Johor.', '0197872768', '', '', '', '2');
INSERT INTO `client` VALUES ('97', 'Wan Norziha Bt Ali', 'njsrt9', 'tjkpx4', 'A30 Felda Bukit Ramun,81040 Kulai Jaya, Johor', '0177672507', '', '', '', '2');
INSERT INTO `client` VALUES ('98', 'Tengku Muhammad Zulkarnain', '28tkxc', 'q7nz5c', 'Level 13, Tower 2, Faber Towers, Jalan Desa Bahagia,taman Desa,58100 Kuala Lumpur,wilayah Persekutuan', '0193141318', '', '', '', '2');
INSERT INTO `client` VALUES ('99', 'Sakinah Mohd Ismail', '9gf5z8', '9wjd05', 'No 24,kampung Padang Kunyit,33300, Gerik,perak', '0172187859', '', '', '', '2');
INSERT INTO `client` VALUES ('100', 'Che Haniza Bt Adek Kechik', '9x8fa6', 'ywk625', 'No 20,lorong Melati 1,taman Melati Putih 81900,kota Tinggi', '0122373194', '', '', '', '2');
INSERT INTO `client` VALUES ('101', 'Nurul Hasnah Abdul Basir', 'bam4zw', '0sy2q3', 'G2-12-03, Flat Sri Kota,bandar Tun Razak,56000,cheras,kuala Lumpur', '0179463709', '', '', '', '2');
INSERT INTO `client` VALUES ('102', 'Syazreen Aiza', 's7ahzj', 'j9amn4', 'Smk Benut, Jalan Jaafar, Benut 82200,pontian Johor', '0127065660', '', '', '', '2');
INSERT INTO `client` VALUES ('103', 'Noor Aseken Mohammed Noor', 'taprv8', 'mxqa0b', 'No 1,lorong Permatang Pasir 2,taman Manggis Indah,11010 Balik Pulau,pulau Pinang', '0195735157', '', '', '', '2');
INSERT INTO `client` VALUES ('104', 'Maryslimwear.com', 'vxz765', '0w94tz', 'B10-3-3a Birchwood Court,pinggiran Lembah Hijau 9, Bandar Tasik Puteri,48020, Rawang Selangor', '0189636533', '', '', '', '2');
INSERT INTO `client` VALUES ('105', 'Juliana Ibrahim', 'mf35ta', 'mvqc6b', 'Juliana Ibrahim,no 358 Lorong 19 Tmn Desa Bidara 09300 Kuala Ketil,kedah +601114706610', '1114706610', '', '', '', '2');
INSERT INTO `client` VALUES ('106', 'Nurulnadia Abdul Razak', 's0v4qp', '2kv7ws', 'Block 4,no.488 Felda Jenderak Utara,28050 Kuala\nKrau,temerloh, Pahang Darul Makmur.\n +60139510154', '0139510154', '', '', '', '2');
INSERT INTO `client` VALUES ('107', 'Nur Alwani Abdullah.', 'gaqc7x', 'sc700m', 'Tingkat 17, Annexe 1, Jalan Pantai Baharu, 50672 Kuala Lumpur.', '0196276458', '', '', '', '2');
INSERT INTO `client` VALUES ('108', 'Norlaila Binti Kamarudin', 'bmzc4d', 'h3t7sj', ',ibu Pejabat Polis Daerah Tuaran,peti Surat 80,89207 Tuaran,sabah.', '0125852853', '', '', '', '2');
INSERT INTO `client` VALUES ('109', 'Adawiyah A.halim', 'nb93tc', '9bp7n2', 'No.41, Persiaran Saujana 6, Saujana Utama 3, 47000 Sg.buloh, Selangor.', '0192438607', '', '', '', '2');
INSERT INTO `client` VALUES ('110', 'Norjihan Binti Ibrahim', 'jfx30d', 'kb164j', 'Lot 107, Batu 2 1/2, Jalan Peradong, Kg. Jelin, 71600 Kuala Klawang, 71600, Kuala Klawang, N.sembilan', '0126453872', '', '', '', '2');
INSERT INTO `client` VALUES ('111', 'Nur Firda Ali', 'r7k2hq', 'r36tj9', '1186-a Kg Kubang Parit\n20050 Kuala Terenganu', '0139219856', '', '', '', '2');
INSERT INTO `client` VALUES ('112', 'Azmazizan Abdullah', 'bs2mwf', '1rbgsj', 'Pt 171, Jalan Sabak, Bt 6 3/4,kg Teluk Kitang,\nKota Bharu,kelantan', '0191108894', '', '', '', '2');
INSERT INTO `client` VALUES ('113', 'Nurazliana Sehak', 'vf05pk', 'va4xrm', 'No 43a, Jalan Jernang Jaya 1, Taman Jernang Jaya, 4300 Kajang Selangor', '0173828706', 'n_qaseh@yahoo.com', '', '', '2');
INSERT INTO `client` VALUES ('114', 'Aslina Omar', '9dg34b', 'kg0s8p', 'No 304, Tingkat 3, Blok 30,\nJalan Plumbum 7/97, Seksyen 7, 40000 Shah Alam Selangor', '0166012063', '', '', '', '2');
INSERT INTO `client` VALUES ('115', 'Nurulain Mohd Rosli', 'xp2w76', 'y3pm9r', 'Lot 752 Kampung Pintu Geng 15100 Kota Bharu Kelantan', '0139464559', '', '', '', '2');
INSERT INTO `client` VALUES ('116', 'Maslin Abd Latif', '9gx6s8', 'tw1fam', 'No 1, Jalan Anggerik Vanilla ,\n31/98d, Kota Kemuning,40460,\nShah Alam,selangor', '0122995967', '', '', '', '2');
INSERT INTO `client` VALUES ('117', 'Nor Safiah', 'zs6tg3', '48073d', '3-2 , Jalan Pju 7 /7a,mutiara Damansara, Petaling Jaya,47810,selangor', '0126264564', '', '', '', '2');
INSERT INTO `client` VALUES ('118', 'Nur Atiqah Jasmin', 'yf7rha', '71rbnm', 'Pejabat Pendaftar Pertubuhan Belia, Kementerian Belia Dan Sukan Malaysia, Unit 9-16, Tingkat 1, Bangunan 3c4, Menara Prisma 26 Boulevard, Persiaran Perdana, Presint 3, Pusat Pentadbiran Kerajaan Persekutuan 62675 Putrajaya', '0176373643', '', '', '', '2');
INSERT INTO `client` VALUES ('119', 'Rosmawati Mat Arop', 'gz72ks', '91r58w', 'Lembaga Minyak Sawit Malaysia\nPejabat Timbalan Ketua Pengarah 1, 6 Persiaran Institusi Bandar Baru Bangi, 43000 Kajang Selangor', '0193325122', '', '', '', '2');
INSERT INTO `client` VALUES ('120', 'Noor Faizah Abdul Rahman', 'q3ts7c', 'w6yq12', 'Stesen Janaelektrik Gelugor, Bahagian Penjanaan Tnb Jalan Tunku Kudin 11700 Gelugor Pulau Pinang', '0194543601', '', '', '', '2');
INSERT INTO `client` VALUES ('121', 'Amelia Abidin', 'z5pgf9', '450m9f', 'Aras 6.kompleks Lada,jalan Persiaran Putra,kuah Langkawi,\nKedah', '0194341070', '', '', '', '2');
INSERT INTO `client` VALUES ('122', 'Roslina Yusuff', '0xzqn8', '5ctva1', 'Klinik Pakar Hospital,sg Bakap,14200,jawi Pulau Pinang.', '0142496635', '', '', '', '2');
INSERT INTO `client` VALUES ('123', 'Nurasykin Md Rashid', 'apjrb2', 'g5bz07', 'B-10-06, Blok B Sejahtera\nKuarters Hospital Besar\n50300 Kuala Lumpur', '0136106500', '', '', '', '2');
INSERT INTO `client` VALUES ('124', 'Intan Baizurah Abdul Hamid', 'fk5taw', 'zs10bq', 'Sk Taman Klang Jaya, Jalan Seruling 56 Off Jalan Langat,41200 Klang, Selangor', '0129262835', '', '', '', '2');
INSERT INTO `client` VALUES ('125', 'Noor Hafizah Ridzuan', '1wgszx', '6wx9kb', 'Klinik Kesihatan Kapit,unit Farmasi,jalan Beleteh,96800\nKapit,sarawak', '0196504727', '', '', '', '2');
INSERT INTO `client` VALUES ('126', 'Faezawani Zakaria', 'm1v5ay', 'x2bsgh', 'Sk Kampung Baharu Penerok,\n82300 Kukup ,pontian Johor', '0197377520', '', '', '', '2');
INSERT INTO `client` VALUES ('127', 'Siti Afifah Tunuur Mohd Asrab', '21hkt3', 's87y0t', 'Abdul Rahman Hassan,\nSmk Sagil Ledang,km 43, Jalan Segamat,84020, Sagil Ledang, Johor', '0137788294', '', '', '', '2');
INSERT INTO `client` VALUES ('128', 'Asmiah Jining @ Madais', 'rm2s74', 'j94pfc', 'Kasneh Bt Jinin\nKg Sinisian,89308 Kundasang\nRanau ,sabah', '0135513498', '', '', '', '2');
INSERT INTO `client` VALUES ('129', 'Mary Leong', 'fb76kz', 'zrvds4', 'Unit Tuntutan Bahagian Kewangan\nJabatan Logistik Beg Berkunci 2062,ibu Pejabat Polis,kontinjen Sabah 88560,kota Kinabalu,sabah', '0168302809', '', '', '', '2');
INSERT INTO `client` VALUES ('130', 'Zuratul Aini Akhirudin', 'zk2gt7', 'm2wctf', 'No 1, Jalan Kp 2 Taman Krubong Perdana 75260,melaka', '0177740080', '', '', '', '2');
INSERT INTO `client` VALUES ('131', 'Rosni Junmut', 'w4tdav', 'h4vd5m', 'No 2g, Jalan  Op 1/6, Pusat Perdagangan One Puchong 47160 Puchong Jaya, Selangor', '0123582134', '', '', '', '2');
INSERT INTO `client` VALUES ('132', 'Aida Rahim', 'g4738j', '4m1p3q', 'Pt 449, Jalan Jnderak Utara,28050 Kuala Krau, Temerloh Pahang', '0199024536', '', '', '', '2');
INSERT INTO `client` VALUES ('133', 'Mardhati Idura Mahmood', 'rz102x', 'j1237b', 'Sk Kantan Permai, Jalan Persiaran Kantan Permai, Taman Kantan Permai,43000, Kajang Selangor', '0173629003', '', '', '', '2');
INSERT INTO `client` VALUES ('134', 'Nurul Wahidah Mohamad Alias', 't78yvg', 'yq3bft', 'Lot 4650 Batu 1 1\\2 Jalan Paip Meru,41050,klang Selangor', '0193704332', '', '', '', '2');
INSERT INTO `client` VALUES ('135', 'Nur Azmina Paslan', 'zdast6', 'sgvcty', '47, Solok Kampung Jawa 7,11900 Bayan Lepas Pulau Pinang', '0134523903', '', '', '', '2');
INSERT INTO `client` VALUES ('136', 'Davina Hiew Yi Ching', 'vy7z10', '40rkqm', 'Shop Lot No 4, Ground Floor Gaya Park Penampang, 88300,kota Kinabalu, Sabah', '0128208633', '', '', '', '2');
INSERT INTO `client` VALUES ('137', 'Rohana Musa', 'gnc1js', 'g1083a', 'No 2 , Jalan Mak Yong 6a/ku 5\nBdr Bukit Raja, Klang ,selangor', '0193560177', '', '', '', '2');
INSERT INTO `client` VALUES ('138', 'Engku Rosniwati Engku Zahit', '6rzt2q', '0txrv8', 'No 79 E, Jalan Hiliran Masjid\n21000 Kuala Terengganu Terengganu', '0199491438', '', '', '', '2');
INSERT INTO `client` VALUES ('142', 'Afiyah Abd Fadzil', 'bnv017', '03nd4j', 'No. 1, Jalan Rk 617 Rasak Kemayan, Seremban Negeri Sembilan', '0126221378', '', '', '', '2');
INSERT INTO `client` VALUES ('143', 'Arina Adnan', 'mf5v9d', 'd1pzg7', 'Wen Kerjaya Sdn Bhd Lot 9 27 128 Level 9 Berjaya Times Square No 1 Jalan Imbr Bukit Bintang Kuala Lumpur', '0192878384', 'a@yahoo.com', '', '', '2');
INSERT INTO `client` VALUES ('144', 'Khairunnisa Bt Mat Rohani', '2qawbn', 'q64sap', 'Lot 9396 Taman Guru Melayu Jalan Paroi Senawang 70450 Seremban Negeri Sembilan', '0196536187', '', '', '', '2');
INSERT INTO `client` VALUES ('145', 'Julia Zohdi', 'p3bsnv', 'pgzh65', 'No. 20 Jalan Ria 4 Kawasan Perindustrian Ria Kajang Selangor', '0162102765', '', '', '', '2');
INSERT INTO `client` VALUES ('146', 'Intan Baizura Rosli', '68j0gm', 'w8bdk3', 'Bank Rakyat Tinglkat 15, Bangunan Perkim, No.150 Jalan Ipoh,51200 Kuala Lumpur', '0192292088', '', '', '', '2');
INSERT INTO `client` VALUES ('147', 'Zurina Jaafar', 'r0y8cd', 'rcjhdg', 'Sekolah Sains Sultan Haji Ahmad Shah Pekan, 26600, Pekan Pahang', '0199511056', '', '', '', '2');
INSERT INTO `client` VALUES ('148', 'Nurul Huda Muhammad', 'ayjv5n', 'bt5k6c', 'No 1 Jalan Sri Jaya 1, Taman Muzaffar Syah 75450 Ayer Keroh Melaka', '0127775067', '', '', '', '2');
INSERT INTO `client` VALUES ('149', 'Nur Shakilla Ismail', 'qd8w2t', 'bc295m', 'No Lot 7426, Jalan Sutera 5, Taman Anjaria, Kulai Jaya, 81000 Johor', '0133753755', '', '', '', '2');
INSERT INTO `client` VALUES ('150', 'Danilah Kasim', 'y3s6t8', 'yv71rb', 'No.46, Jalan Seri Damai 1, Taman Seri Damai, Kajang 43000 Selangor', '014666720', '', '', '', '2');
INSERT INTO `client` VALUES ('151', 'Nasarudeen Awang', 'wrca5v', 'ad3mcq', 'Lot 88 Jalan Sultan Abdullah,26600 Pekan Pahang', '0145074488', '', '', '', '2');
INSERT INTO `client` VALUES ('152', 'Syahila Abdul Rapal', 'akyzfv', 'z2nwk9', 'Noble Energy Construction Sdn Bhd, Jalan Wisma Persekutuan Mitc 75450 Ayer Keroh Melaka', '0177925118', '', '', '', '2');
INSERT INTO `client` VALUES ('153', 'Rohani Abdul Kadir', 'frzg4t', 'z53qv6', 'No. 42, Jalan 318 Seksyen 3, Bandar Teknologi Kajang, 43500 Semenyih Selangor', '0126801664', '', '', '', '2');
INSERT INTO `client` VALUES ('154', 'Nurul Zulfa Zahari', 'qaz16k', 'gb4wpf', 'No.8 Jalan Dsj 6/20, 47610 Subang Jaya Selangor', '0199781984', '', '', '', '2');
INSERT INTO `client` VALUES ('155', 'Harzila Md Saman', 'pg51f2', 'gj546a', 'Hecny Transportation (m)sdn Bhd, No 33-2, 3 Jalan Pjs 11/28b Bandar Sunway, 46150 Petaling Jaya Selangor', '0147213645', '', '', '', '2');
INSERT INTO `client` VALUES ('156', 'Nor Azaini Suzila Zakariah', '2qspk6', '63kaxw', 'Lot 35 Kg Kukong Jalan Perol, 16010, Kota Bharu Kelantan', '0139803806', '', '', '', '2');
INSERT INTO `client` VALUES ('157', 'Azlina Ismail', 'dbk47w', 'y8ga59', '112,jalan Pjs 20/2, Kg Medan,4600 Petaling Jaya Selangor', '0173888862', '', '', '', '2');
INSERT INTO `client` VALUES ('158', 'Kalsom Bt Abd Gaffoor', 'vw1jft', 'b8yskz', 'No. 2 Jalan Gunung Nuang\nU11/6 Bukit Bandaraya 40170 Shah Alam Selangor', '0193568742', '', '', '', '2');
INSERT INTO `client` VALUES ('159', 'Noor Asyikin Mat Nawi', 'sqf6bh', 'az65y3', 'Lot 146 Kampung Gelang Mas 17000 Pasir Mas Kelantan', '0197611263', '', '', '', '2');
INSERT INTO `client` VALUES ('162', 'Nor Azlinda Bt Basri', 'q4std7', 'yw16az', 'Kolej Voakasional Kerian, Jalan Siakap 34300 Bagan Serai Perak', '0124644197', '', '', '', '2');
INSERT INTO `client` VALUES ('163', 'Arbina Abd Gani', '4g2nwx', '8fckrp', '229 Felda Palong 3, 73460 Gemas Negeri Sembilan', '0129157569', '', '', '', '2');
INSERT INTO `client` VALUES ('164', 'Rohaida Bt Jamaluddin', 'skytd4', '9z2jf5', 'No.40, Jln 1, Taman Sungai Jelok, 43000 Kajang Selangor', '0192765636', '', '', '', '2');
INSERT INTO `client` VALUES ('165', 'Lalitha', 'vrp1df', 'p1k3x7', 'No.77 Jalan Molek 2/33, Taman Molek, 81100 Johor Bharu', '0127400139', '', '', '', '2');
INSERT INTO `client` VALUES ('166', 'Nuridah Bt Juslee', 'nwc6j3', '9b635x', 'Hua Leong Importers &exporters; Sdn Bhd\nLot 7 Inanam Baru Industrial Warehouse, Off Km 9.6 Jalan Tuaran Inanam, 88450  Kota Kinabalu Sabah', '0146554566', '', '', '', '2');
INSERT INTO `client` VALUES ('167', 'Juraini Bt Jaafar', 'qc54ts', '6s9wbt', '14 Jalan Sembilang 17/31, Seksyen 17,40200 Shah Alam Selangor', '0133411603', '', '', '', '2');
INSERT INTO `client` VALUES ('168', 'Nor Nadia Bt Razak', '243jga', '21qs0c', 'Lot 3223/8 Lorong 8kampung Padang Balang Sentul 51100 Kuala Lumpur', '0176661706', '', '', '', '2');
INSERT INTO `client` VALUES ('169', 'Asalina Musa', 'j8t7wa', '68m4f5', 'No. 20 Jalan Sahabat 6, Taman Emas,86000 Kluang Johor', '0126669674', '', '', '', '2');
INSERT INTO `client` VALUES ('170', 'Yati Zainuddin', 'z451wy', 'g1s9x0', 'Level 3 Wisma Goldhill 62 Jalan Raja Chulan 50200 Kuala Lumpur', '0126650378', '', '', '', '2');
INSERT INTO `client` VALUES ('171', 'Asnorauni Bt Abdul Razak', 'xm5naq', 'c0sxpw', 'D13 Jalan Bayam Kota Bharu 15200 Kelantan', '0133003495', '', '', '', '2');
INSERT INTO `client` VALUES ('172', 'Muhamed Hariess B. Sazali', 'ktfp63', 'kpx746', 'Kolej Komuniti Seberang Jaya,\nLorong Desa Pauh 1, Taman Desa Pauh, Permatang Pauh, 13700 Bukit Mertajam, Pulau Pinang', '0196632594', '', '', '', '2');
INSERT INTO `client` VALUES ('173', 'Faridah Hanim Pfordten', 'zrk3dj', 'gnqbmz', 'No 393, Jalan Nusari Bayu  2/2, Taman Nusari Bayu 1, Seremban Negeri Sembilan', '0193426299', '', '', '', '2');
INSERT INTO `client` VALUES ('174', 'Nurashikin Asan', '4205dp', 'hb02n6', 'No. 6 Jalan Zapin 4c Bdr Bkt Raja, 41050 Klang Selangor', '0192057887', '', '', '', '2');
INSERT INTO `client` VALUES ('175', 'Azlita Ali', 'f6gn0h', 'mp9k3v', 'No.28 Blok D, Flat Pkns, Jln Tun Razak, Kampung Baru 50400 Kuala Lumpur', '0126751391', '', '', '', '2');
INSERT INTO `client` VALUES ('176', 'Noor Asyikin Shamsuri', '65xq97', '2zv8rg', 'No. 3, Lrg Bkt Setongkol 108, Taman Bkt Setongkol Mewah, 25200 Kuantan Pahang', '0125675247', '', '', '', '2');
INSERT INTO `client` VALUES ('177', 'Nor Hasmaliza Hasan', 'wg3098', 'rs1jb8', 'Pt 43, Taman Sri Dalam Rhu Kelaboran, 16200 Tumpat Kelantan', '0193057822', '', '', '', '2');
INSERT INTO `client` VALUES ('178', 'Ismariza Ismail', 'dzxhyg', 'yb18z2', 'No. 640, Kg Tok Kaya Mk Kayang,01000 Kangar Perlis', '0126475992', '', '', '', '2');
INSERT INTO `client` VALUES ('179', 'Noor Haslinda Othman', '6f12m0', '6wna20', 'Jabatan Insolvensi Tingkat 12,jalan Ayer Molek 80720 Johor Bharu, Johor', '0197348418', '', '', '', '2');
INSERT INTO `client` VALUES ('180', 'Nor Harlina Abdul Munir', 'bj78k2', '01pwvk', 'No 6-3, Jalan Wangsa 2/5, Taman Wangsa Permai, 52200 Kuala Lumpur', '0123743549', '', '', '', '2');
INSERT INTO `client` VALUES ('181', 'Diana Abdul Rashid', 'cmt3ps', '1349rz', 'Ibu Pejabat Jabatan Perhilitan Km 10, Jalan Cheras, 56100 Kuala Lumpur', '0129640675', '', '', '', '2');
INSERT INTO `client` VALUES ('182', 'Dewi Faraliza M. Nasir Ahmad', 'rt3vmk', 'xs87ng', 'Smk Rungkop, Selekoh 36200 Teluk Intan Perak', '0126840466', '', '', '', '2');
INSERT INTO `client` VALUES ('183', 'Nor Syahirah Akmal Mokhtar', 'dn791q', 'djv1ks', 'Lot 3830, Manal 2, Depan Petronas, Jln Jedok 17500 Tanah Merah Kelantan', '0199374715', '', '', '', '2');
INSERT INTO `client` VALUES ('184', 'Nancy Yuhilim', 'n2z7vs', 'sht4yk', 'No.38. 11, Jalan Prims 2 Pusat Niaga Metro Prims, 52100 Kepong Kuala Lumpur', '0193662772', '', '', '', '2');
INSERT INTO `client` VALUES ('185', 'Siti Normala Mustafa', '19vnkm', '16zw4n', 'Lot 883 Kg Rusila 21080 Marang Terengganu', '0199991777', '', '', '', '2');
INSERT INTO `client` VALUES ('186', 'Mas Rieza', 'j6ds37', 'p5q61c', '0.1-13, Apartment Matahari Height, 74200 Senawang Negeri Sembilan', '0111176055', '', '', '', '2');
INSERT INTO `client` VALUES ('187', 'Nur Fatihah Abdullah', '8gqfr9', '8ct69v', 'Blok H-73, Perumahan Kusial Bharu 17500 Tanah Merah Kelantan', '0112942478', '', '', '', '2');
INSERT INTO `client` VALUES ('188', 'Nor Azah Mohd Naim', 'q2gz68', 'qz369b', 'Us Bundle Top Shop L2-28\nKompleks Pusat Bandar,\nPasir Gudang, Johor\nMalaysia 81700', '0137363263', '', '', '', '2');
INSERT INTO `client` VALUES ('189', 'Hajar Akma Ahmad Zamzury', 'apzb28', 'pgxdjh', 'Smk Taman Panglima Assam Kundang 54000 Taiping Perak', '0165910059', '', '', '', '2');
INSERT INTO `client` VALUES ('190', 'Fazilah Mohd  Dekorazi', '5981g6', 'ps03vd', 'No 42, Jalan Harapan 7e/no 7, Taman Sungai Kapar Indah, Kapar Klang 42200 Selangor', '0126861329', '', '', '', '2');
INSERT INTO `client` VALUES ('191', 'Zahira Mazlan', 'z4aqrk', '3m9k85', 'No. 1 Flat Persahabatan Timor 6, Taman Mewah Ulu Kinta 31150 Ipoh Perak', '0172432106', '', '', '', '2');
INSERT INTO `client` VALUES ('192', 'Norul Sa\'adah Abdul Razak', 'sv178h', 's74gt9', 'Sek. Keb Balok Makmor 26100 Kuantan Pahang', '0148007625', '', '', '', '2');
INSERT INTO `client` VALUES ('193', 'Marlia Abd Majid', '10mr9t', 'jwqga2', 'No.29, Jalan Aliran 8/23 Section 8, Shah Alam 40000 Selangor', '0193871758', '', '', '', '2');
INSERT INTO `client` VALUES ('194', 'Najwa Ishak', '2gvrya', '6g5phc', 'No.95 Jalan 43b Taman Tasik Utama Hang Tuah Jaya 75450 Ayer Keroh Melaka', '0148262120', '', '', '', '2');
INSERT INTO `client` VALUES ('195', 'Nor Hasmaliza Bt Hasan', 'zxknb1', 'g96bw2', 'Pt 1203, Tingkat 2, Jalan Kebun, Sultan 15350 Kota Bharu, Kelantan', '0193057882', '', '', '', '2');
INSERT INTO `client` VALUES ('196', 'Mazlinda Md Zin', 'kmgrb4', 'cp3yzf', '1022 Jalan Kedidi 3, Taman Paroi Jaya, 70400 Seremban Negeri Sembilan', '0192723519', '', '', '', '2');
INSERT INTO `client` VALUES ('197', 'Ayu Syahirah Razak', '5gmsw4', 'pw7hx5', 'Lot 9248, Sg Lias Sg Besar, 45300 Selangor', '0134088643', '', '', '', '2');
INSERT INTO `client` VALUES ('198', 'Saidatul Marsila Mohd Mokhtar', 'skn4pd', '9gcx57', 'No.29, Jalan Laksamana\nTaman Desa Laksamana 36000 Teluk Intan Perak', '0134597778', '', '', '', '2');
INSERT INTO `client` VALUES ('199', 'Nor Azarina Abdullah', '7d24th', 'cxwj74', 'No.25 Jalan Padang Permai 1, Perkampungan Padang Permai Sungai Lembing 26200 Pahang', '0135644126', '', '', '', '2');
INSERT INTO `client` VALUES ('200', 'Siti Fatimah Bt.mohd Kadri', 'vfrm92', 'bvwp4a', 'Lembaga Hasil Dalam Negeri Malaysia Jabatan Cukai Korporat Tingkat 13 (kiri) Blok 11, Kompleks Bangunan Kerajaan Jalan Duta Peti Surat 11833 Kuala Lumpur', '0195015061', '', '', '', '2');
INSERT INTO `client` VALUES ('201', 'Nur Liza Abu Bakar', 'rw0a8b', 'xbv86q', 'No 22, Jalan Utama 6, Taman Jaya Utama, Telok Panglima Garang 42500 Kuala Langat Selangor', '0133936234', '', '', '', '2');
INSERT INTO `client` VALUES ('202', 'Nur Farhana Mohd Nor', 'x01cy8', 'kzbtj0', 'B1-7-5, Taman Court, Jalan Mewah 4, Pandan Mewah, 68000 Ampang Selangor', '0172086282', '', '', '', '2');
INSERT INTO `client` VALUES ('203', 'Nor Hidayah Bt Saringat', '4ms83h', 'bt0m53', '294 Jalan Masjid Kg Baru Bt 16 36300 Sungai Sumun Perak', '0135340131', '', '', '', '2');
INSERT INTO `client` VALUES ('204', 'Noor Zarina Bt Nayan', '6bdprx', 'yk41nb', 'Pusat Haiwan Makmal\nFakulti Perubatan Universiti Malaya 50603 Kuala Lumpur', '0172839433', 'zarryn111@yahoo.com', '', '', '2');
INSERT INTO `client` VALUES ('205', 'Zalina Baharudin', 'sn9wxm', 'kyqm86', 'No. 231, Kampung Baru , Jalan Sungai Tiang, 06750 Pendang Kedah', '0125962357', '', '', '', '2');
INSERT INTO `client` VALUES ('206', 'Nuraiza', 'x18q6y', '12msyw', 'No.125 Jalan Sibur-sibur, Taman Desa Permai, Bandar Baru Kangkar Pulai 81300 Skudai Johor', '0177057568', '', '', '', '2');
INSERT INTO `client` VALUES ('207', 'Zuliza Bt Zakaria', '316vpz', '3dtjq0', 'G4-1-1,perumahan Tudm Kelubi,06000 Jitra Kedah', '0137004229', '', '', '', '2');
INSERT INTO `client` VALUES ('208', 'Siti Zuraidah', 'hzw5a4', 'hb3m6n', 'No. 7, Lrg Teluk Air Tawar 4, Taman Air Tawar Indah 13050 Butterworth Pulau Pinang', '0195777346', '', '', '', '2');
INSERT INTO `client` VALUES ('209', 'Nadia Jamil', '4mngwz', 'hd2vcb', 'Suite 17.01 17th Floor Menara Kh Jalan Sultan Ismail 50250 Kuala Lumpur', '0162111407', '', '', '', '2');
INSERT INTO `client` VALUES ('210', 'Nor Azhana Abdullah', '2bk93y', 'qaxgcy', 'No.25 Jalan Padang Permai 1, Perkampungan Padang Permai Sungai Lembing26200 Kuantan Pahang', '135644126', 'bell_azhana@yahoo.com', '', '', '2');
INSERT INTO `client` VALUES ('211', 'Nor Fadzliana Abdullah', 'nqa6z5', 's6nmjz', 'Unit Tabung Darah Jpmd, Pusat Perubatan Ukm, Jalan Yaacob Latif, 56000 Cheras Kuala Lumpur', '0135941909', '', '', '', '2');
INSERT INTO `client` VALUES ('212', 'Adreen Muhammad', 'wypr3b', 'jdg67x', 'No. 576, Jalan Samudra Utara 1, Taman Samudra Batu Caves 68100 Selangor', '0162179890', '', '', '', '2');
INSERT INTO `client` VALUES ('213', 'Amelina Bt Abd Razak', 'pwjhn6', 'awqg4f', 'Block T01-05\nJalan Batu Nilam 15, Bandar Bukit Tinggi 1,42000 Klang Selangor', '01640', '', '', '', '2');
INSERT INTO `client` VALUES ('214', 'Sharifah Aminah', '8npbfk', 'cm0s78', 'No 22a, Jalan Anggun Id, Anggun 1, Rawang Selangor.', '0122123590', 'sharifah@gmail.com', '', '', '2');
INSERT INTO `client` VALUES ('215', 'Farah Suzana', 'wbfk3q', 'har0qj', 'Ymc Technologies Sdn Bhd,\nNo 12, Jalan Astaka Us/83,\nSeksyen 48, Bukit Jelutong, Shah Alam, Selangor.', '0136068157', '', '', '', '2');
INSERT INTO `client` VALUES ('216', 'Marhayati Yusoff', 'crg3p8', '1qt9mg', 'B10-3-3a Birchwood Court, Pinggiran Lembah Hijau 9, Bandar Tasik Puteri,48020 Rawang Selangor.', '0189636533', 'abc@yahoo.com', '', '', '2');
INSERT INTO `client` VALUES ('217', 'Nelly Dorhana Nordin', 'xv2fm3', 'd86qn4', 'No.50 Jalan Juragan 2, Desa Paya Mengkuang, Gelang Patah, Johor.', '0107861796', '', '', '', '2');
INSERT INTO `client` VALUES ('218', 'Hajariah Hamzah', 'g8bz4j', 'zng65k', 'No 6. Lorong Peramu Baru, 30 Taman Selesa View, Kg Peramu, Kuantan, Pahang.', '0199797497', '', '', '', '2');
INSERT INTO `client` VALUES ('219', 'Norlida Abdullah', 'khjcrn', 'ftzjw0', 'Belakang Bandar Desa, Pekan Chendering Balai, Teluk Intan 36600 Perak.', '0195923579', 'norlida@yahoo.com', '', '', '2');
INSERT INTO `client` VALUES ('220', 'Isyahanim Nur Ishak', 'hzf4pg', '9jg8w2', 'B3-l1-01 Andari Townvilla Selayang Heigts Jln 2/1 Bt Caves 68100 Selangor.', '0192484008', 'Isya@yahoo.my', '', '', '2');
INSERT INTO `client` VALUES ('221', 'Llli Farhanah', '5642q1', '0017zy', 'No. 184, Hala Tambun Permai 10, Kg Tersusun Batu 4, Tambun 31400 Ipoh,perak.', '0175653971', 'lllifarhanah@gmail.com', '', '', '2');
INSERT INTO `client` VALUES ('222', 'Kathrina Lamat', 'fgd5vb', 'fwhxcp', '34, Jalan 2/2b Bandar Baru Bangi 43650 Selangor.', '0192248289', 'Kath@yahoo.com', '', '', '2');
INSERT INTO `client` VALUES ('223', 'Khairunnisa Hamdan', 'ygfj0d', '7g0j6m', 'No. 15 Jalan Serai Wangi, Taman Peserai 83000, Batu Pahat Johor.', '0137751357', 'nissa@yahoo.com', '', '', '2');
INSERT INTO `client` VALUES ('224', 'Punitha A/p Chegaran', 'fs5bv7', 'rvpzha', '119 Hala Lapangan Perdana 8, Taman Panorama, Lapangan Perdana, 31660 Ipoh Perak.', '0164275640', 'Punitha@yahoo.com', '', '', '2');
INSERT INTO `client` VALUES ('225', 'Nazalyyussma Yusop', 'k7scjm', 'bstj5c', 'No. 28, Taman Paduka, Jln Tok Paduka 01000 Kangar Perlis.', '0195701165', 'naz@yahoo.com', '', '', '2');
INSERT INTO `client` VALUES ('226', 'Siti Arafah Mohd Madzlan', 'tba0pd', 'aryqfw', 'No. 67, Lorong 14 Taman Seri Larut Simpang Taiping 34700 Perak.', '0174683064', 'Arafah@gmail.com', '', '', '2');
INSERT INTO `client` VALUES ('227', 'Izlin Hani', '5r7y30', '64vf0j', 'Smk Wira Jaya Halaman Ampang Mewah 31350 Ipoh Perak.', '0125655233', 'hani@gmail.com', '', '', '2');
INSERT INTO `client` VALUES ('228', 'Zazalina Hashim', 'hyz9vj', 't00xhp', 'Blok B12-1-6, Desa Pandan, 55100 Kuala Lumpur.', '0123657256', 'zaza@gmail.com', '', '', '2');
INSERT INTO `client` VALUES ('229', 'Siti Aisyah Khalid', '092nvy', '9wkrh5', 'Admission & Local Promotion Department (alp), Multimedia University Malacca Campus Jalan Ayer Keroh Lama,75450 Melaka.', '0176064235', 'aisyah@yahoo.com', '', '', '2');
INSERT INTO `client` VALUES ('230', 'Aslina Nasir', 'xcqjmz', '86n327', '3033, Kampung Tanjung Batu Rakit, Kuala Terengganu, Terengganu.', '0148497364', '', '', '', '2');
INSERT INTO `client` VALUES ('231', 'Elmahira Israpil', 'jcy90h', 'vfyxp4', 'Orked Design Studio\nNo 2496a, Graond Floor, Taman Samudera 32040 Manjung Perak.', '0176043432', '', '', '', '2');
INSERT INTO `client` VALUES ('232', 'Nuraslinda', 'nyd7c3', '5v1b8f', 'United Overseas Bank (m) Bhd,retail Loan Operation Centre,level 2,medan Pasar,50050 Kuala Lumpur.', '0129167451', '', '', '', '2');
INSERT INTO `client` VALUES ('233', 'Jamilah Zawawi', 'bs039x', '7kd485', 'Smk Chanis Muadzaqm Shah Pahang.', '0139397336', '', '', '', '2');
INSERT INTO `client` VALUES ('234', 'Mohd Naim Mohd Hassan', 'mgp59k', '9fd2hz', 'Hsbb Centre Tingkat 3, Ibu Sawat Telekom, Jalan Arumugan Pilay, Bukit Mertajam Pulau Pinang.', '0126669674', 'Naim@gmail.com', '', '', '2');
INSERT INTO `client` VALUES ('235', 'Rosmarina Abd Latif', '4nab52', '4hdkq3', 'No. 35, 28/10, Taman Koperasi Polis Fasa 2 68100 Kuala Lumpur.', '0123744246', 'ros@yahoo.com', '', '', '2');
INSERT INTO `client` VALUES ('236', 'Aniz Azmila Mohd Harun', '2m6np3', 'v6q8a7', 'Jabatan Peguam Negara No 43 Aras 3, Persiarab Perdana Presient 4 Putrajaya 62100 Putrajaya.', '0123707383', 'anis@gmail.com', '', '', '2');
INSERT INTO `client` VALUES ('238', 'Noor Rasyidah Mupar', 'tyh2j7', 'yxbz52', 'Perfect Lifes S/b No.9 Jln Industri Usj 1/13 Tmn Perindustrian Usj 1 47600 Subang Jaya, Selangor', '0195993670', 'noor@yahoo.com', '', '', '2');
INSERT INTO `client` VALUES ('240', 'Suraya Dahlan', '8ys6q2', '2gstc6', 'No 23 Jalan 3/58 Seksyen 3, 43650 Bandar Baru Bangi, Selangor.', '0192113212', 'sue@yahoo.com', '', '', '2');
INSERT INTO `client` VALUES ('241', 'Nur Diyana Dhlan', 'az2wfp', 'gfxsvk', 'B226, Taman Impian Warisan Pekan Batu 18, 43100 Hulu Langat Selangor.', '0133628048', '', '', '', '2');
INSERT INTO `client` VALUES ('242', 'Nur Hartini Che Rahimi', 'tydr28', 'vt1gk9', 'A-g-11, Apartment Anggerik, Taman Desa Temenggong, Pinggiran Batu Caves 68100 Batu Caves Selangor.', '0176857476', '', '', '', '2');
INSERT INTO `client` VALUES ('243', 'Nor Liza Rifin', 'ya592m', 'ks0q5y', 'No.9, Jalan Ixora 2, Taman Ixora 26800 Rompin, Pahang', '0177154788', '', '', '', '2');
INSERT INTO `client` VALUES ('244', 'Nurul Jannatul Fatihah', 'jy32k5', 'y81m2d', 'Ui Mobile Sdn Bhd \nLot Pk21 Level 2(depan Stage) Plaza Angsana 81200 Johor Bahru, Johor.', '0197406775', '', '', '', '2');
INSERT INTO `client` VALUES ('245', 'Sharifah Fairus Syed Jaafar', 'v5hz1f', 'qgyjh7', 'D 126 A, Kampung Kubang Gajah, Batu 4 1/2, 02600 Arau, Perlis.', '0122736568', '', '', '', '2');
INSERT INTO `client` VALUES ('246', 'Asma Julia Abdullah', '7w2x3s', 'bctpk7', 'No 5 Jalan Puj 9/3a Taman Puncak Jalil Bandar Putra Permai, 43300 Seri Kembangan Selangor', '0199403263', '', '', '', '2');
INSERT INTO `client` VALUES ('247', 'Maisarah Zakariah', 'fqjpb2', '36wzqb', 'No 38 Jalan Silat Coko 16, 81300 Taman Selesa Jaya, Skudai Johor.', '0177748964', '', '', '', '2');
INSERT INTO `client` VALUES ('248', 'Nor Farahin Mahmod', 'ypkrw5', 'r3vj92', 'Vs Plus Sdn Bhd(plo89)\nLot 214 Jalan Senai Seelong 81400 Senai Johor.', '0122732870', '', '', '', '2');
INSERT INTO `client` VALUES ('249', 'Nik Zuraihan Nik Yusof', 'xym5gv', '9qwp4s', 'No.1222f Kg Raja Baran, Chendering, 21080 Kuala Terengganu, Terengganu.', '0139835416', '', '', '', '2');
INSERT INTO `client` VALUES ('250', 'Nor Ashikin Asan', 'gx5avd', 'nxg7y8', 'No. 6 Jln Zapin 4c, Bdr Bkt Raja 1050 Klang Selangor', '192057887', '', '', '', '2');
INSERT INTO `client` VALUES ('251', 'Nooraiza Mastura Azahar', 'x12ah0', 'safc0v', 'E10-3-5 Desa Pandan Jln Kg Pandan 55100 Kuala Lumpur', '0193868093', '', '', '', '2');
INSERT INTO `client` VALUES ('252', 'Noor Rasyedah Bt Mupan', '7gf340', 'rwja52', 'Perfect Lifes S/b No.9, Jln Industri Usj 1/13 Tmn Perindustrian Usj 1, 47600 Subang Jaya Selangor', '195993670', '', '', '', '2');
INSERT INTO `client` VALUES ('253', 'Rosdalillah Mohamed', '4kp8qg', 'sk06t9', 'No 88 Jalan Sari Ilmia 2/3, 43000 Alam Sari, Kajang Selangor.', '0133390243', '', '', '', '2');
INSERT INTO `client` VALUES ('254', 'Atini Bt Alias', 'rtda7n', '34bx70', 'K3c 112 Kolej Dato\' Onn, 43600 Ukm Bangi, Selangor.', '0179246134', '', '', '', '2');
INSERT INTO `client` VALUES ('255', 'Nur Maliha Idayati Md Lutfi', 'vf4bj0', 'vskwx4', '32,jalan 23/27b,taman Desa Setapak, 53300 Wangsa Maju Kuala Lumpur', '0106601001', '', '', '', '2');
INSERT INTO `client` VALUES ('256', 'Nur Nadzirah Bahrom', '3vjzdh', '375hz1', 'British American Tabacco, Technologies Park Malaysia, L4-b-2, Enterprises 4,57000 Bukit Jalil Idp, Kuala Lumpur.', '0133576320', '', '', '', '2');
INSERT INTO `client` VALUES ('257', 'Suharyati Mat Daud', 'f56sgv', '341q6r', 'No 27e, Kg Tanah Belia 26090 Pancing, Kuantan Pahang.', '0192453687', '', '', '', '2');
INSERT INTO `client` VALUES ('258', 'Nurazeyati Amar', 'c5ksx4', '1mwp0y', 'Schlumberger Wta(n) Sdn. Bhd\nP.o.box 80529, 87008 Labuan.', '0178187858', '', '', '', '2');
INSERT INTO `client` VALUES ('259', 'Nur Najwa Zulkifli', '5qyt01', 'h1vcgt', 'No. 202, Fasa 26,32040 Seri Manjung, Perak.', '0175564606', '', '', '', '2');
INSERT INTO `client` VALUES ('260', 'Maliana Bt Mohamad', 'nw5h98', 'h5kfg1', 'No. 34 Jalan Sejahtera 17, Taman Nusa Damai, 81700 Pasir Gudang Johor.', '0193337210', '', '', '', '2');
INSERT INTO `client` VALUES ('261', 'Siti Zubaidah Shaari', 'vkghbf', 'vzk8cg', 'Smk Bandar Tun Hussein Onn2, Persiaran Suadamai, 43200 Bandar Tun Hussein On, Cheras Selangor.', '0162795648', '', '', '', '2');
INSERT INTO `client` VALUES ('262', 'Masnira Khalid', 'vcka1g', 'asq2hp', 'Halagel Plant (m) Sdn Bhd\nLot 4137, Jalan 2b, Kawasan Perusahan Miel Sg. Lalang 08000 Sg Petani, Kedah', '0124057112', '', '', '', '2');
INSERT INTO `client` VALUES ('263', 'Lily Suriati Mohd Salim', 'kabnmt', '26fcx5', 'Toyo Engineering & Construction Sdn Bhd Suite 25.4, 25th Floor Menara Haw Par, 50250 Jalan Sultan Ismail K.l', '0193543746', '', '', '', '2');
INSERT INTO `client` VALUES ('264', 'Jamilah Bt Abdullah', 'k94yqx', 'qryvt7', 'No 23 Jalan Melati 1, Taman Selingsing Melati 34400 Simpang Empat Semanggol Perak.', '0195739185', '', '', '', '2');
INSERT INTO `client` VALUES ('265', 'Nur Hidayah Rahmi Abd Hamid', 'mhk500', '8gxkmv', 'Orenda Sdn Bhd Level 21, Maju Tower 1001 50250 Jalan Sultan Ismail Kuala Lumpur.', '0132685989', '', '', '', '2');
INSERT INTO `client` VALUES ('266', 'Tengku Intan Marlina', 'xgdvjc', 'qjyz7h', 'No. 8 Jalan Sri Melati, Taman Sri Raya Batu 9 43200 Cheras Selangor.', '0122544529', '', '', '', '2');
INSERT INTO `client` VALUES ('267', 'Surita Bt Md Shuob', 'szv8y7', '9wfgs0', 'No.40 Jalan Jati Satu Saujana Utama2, 47000 Sg Buloh Selangor.', '0163333907', '', '', '', '2');
INSERT INTO `client` VALUES ('268', 'Halimatul Sadiah Adinan', 'jvda75', 'qt7ry2', 'Sk. La Salle Jalan Gasing 46000 Petaling Jaya, Selangor.', '0134568987', '', '', '', '2');
INSERT INTO `client` VALUES ('269', 'Armaniyah Saidina', '27p801', 'b95w41', '15.4.14 Taman Bukit Angkasa 59200 Jalan Pantai Dalam Kuala Lumpur.', '0122039354', '', '', '', '2');
INSERT INTO `client` VALUES ('270', 'Mariani Azizan', 'gqv5h8', '9svpwm', 'Plaza Tol Pantai Dalam Km10.6 58200 Lebuhraya Baru Pantai Kuala Lumpur.', '0172345685', '', '', '', '2');
INSERT INTO `client` VALUES ('271', 'Nurfathen Syahirah Tun Ab Raza', '08149t', 'hncvbx', 'Desasiswa Tun Fatimah Universiti Tun Hussein Onn, Malaysia, Parit Raja 86400 Batu Pahat, Johor.', '0199578963', '', '', '', '2');
INSERT INTO `client` VALUES ('272', 'Rabe\'atul Adawiyah Zainal Abid', 'rmt42w', 'jpv7rf', 'Pejabat Kerajaan Wilayah Sentul 1/a Sekolah Kebangsaan Sentul Utama 51200 Jalan Ipoh, Kuala Lumpur.', '0133416352', '', '', '', '2');
INSERT INTO `client` VALUES ('273', 'Syarifah Rafizah Syed Yahya', 'bkwm4d', 'h2qjrf', '1 Heal Medical Centre Level 7&8, Annex Block, Menara 1 Gb Mid Valley City, 59200 Lingkaran Syed Putra, Kuala Lumpur.', '0132577048', '', '', '', '2');
INSERT INTO `client` VALUES ('274', 'Nor Arma Abu Talib', 'j3dpg1', 'dbhz4r', 'Maktab Koperasi Malaysia 103, Jalan Templer 46700 Petaling Jaya, Selangor.', '0125036390', '', '', '', '2');
INSERT INTO `client` VALUES ('275', 'Siti Kamariah Mohd Zain', '8p65yn', '8kay6g', 'Level 10, Taman Annexe2, Jalan Pantai Bharu 59200 Kuala Lumpur', '0136248424', '', '', '', '2');
INSERT INTO `client` VALUES ('276', 'Khuzaima Mohd Kamal', 'q40b92', '7h4mak', 'Sekolah Menengah Vokasional Juasseh 72500 Kuala Pilah Negeri Sembilan', '0175145935', '', '', '', '2');
INSERT INTO `client` VALUES ('277', 'Nor Arzlita', 'smf17n', '4dw37f', 'E-03-03, Blok E Pfr Sri Cempaka Jalan Lembah Pantai, 59200 Pantai Dalam Kuala Lumpur.', '0122855978', '', '', '', '2');
INSERT INTO `client` VALUES ('278', 'Nor Asyikin Ismail', '9bsh0x', '9rxjf2', 'Kulim Agrotech Centre, Lot 2135 Batu 23 1/2 Jalan Johor Bahru 81900 Kota Tinggi Johor.', '0197791824', '', '', '', '2');
INSERT INTO `client` VALUES ('279', 'Syameme Fadzel', '537bvn', '5zv3cn', 'No.21, Jalan Mesra 10, Taman Mesra Batu 13 43000 Kajang, Selagor.', '0195214475', '', '', '', '2');
INSERT INTO `client` VALUES ('280', 'Rozita Zakaria', 'vtfdg4', 'q3w0fj', 'No. A-7-5 Ppr Taman Muhibbah Jalan 2/155 Kg Muhibbah 58000 Kuala Lumpur.', '0182414648', '', '', '', '2');
INSERT INTO `client` VALUES ('281', 'Nor Hidayah Yusoff', 'd5jgsm', 'yts0zp', 'Pej. Seranta (felda) Jabatan Perdana Menteri Aras 2, Blok Barat, Bangunan Perdana Putra, 62502 Putrajaya.', '0143308842', '', '', '', '2');
INSERT INTO `client` VALUES ('282', 'Sarina Abu Bakar', 'rz9b1j', 'rwbhd3', 'Beschem Supplies No.82 Jalan Permai 1, Taman Desa Permai, Sg Lalang, 08100 Bedong Kedah.', '0175505427', '', '', '', '2');
INSERT INTO `client` VALUES ('283', 'Mahadi Suliman', 'r2b9qh', '3b5y80', '54, Blok 3b, Felda Nitar 2 86807 Mersing Johor.', '0197272057', '', '', '', '2');
INSERT INTO `client` VALUES ('284', 'Misria Abu Hassan', 'bg9qmd', 'qs7836', 'It Portlink Sdn Bhd\nNo.9, Jalan Pendamar, Cempaka Ema Industrial Estate, 42000 Pandamaran Port Klang.', '0199191330', '', '', '', '2');
INSERT INTO `client` VALUES ('285', 'Siti Fatimah Abdullah', '17c9hq', 'x19b00', 'No. 525 Mukim B Sg Rusa Blik Pulau, 11010 Penang.', '0124644226', '', '', '', '2');
INSERT INTO `client` VALUES ('286', 'Nurul Hidayah Ismail', 'avxhwf', 'p5akv7', 'Sjk(c) Sann Yuh, Simpang Empat, 78000 Alor Gajah, Melaka.', '0114969149', '', '', '', '2');
INSERT INTO `client` VALUES ('287', 'Hjh Zurina Hj Abu Seman', '4pq8zs', '8n162m', '16 Jalan Kg Kastam 12300 Butterworth Penang.', '0194544311', '', '', '', '2');
INSERT INTO `client` VALUES ('288', 'Cik Zaini Zainal Abidin', '0y54j3', 's0576v', 'No. 4 Jalan Indera Mahkota 10/7 Bukit Istana, 25200 Kuantan Pahang.', '0199880427', '', '', '', '2');
INSERT INTO `client` VALUES ('289', 'Maimunah Hassan', 'rs8pfm', '1asbdy', '9138, Lorong Pauh 2, Kg Gong Pauh, Cukai 24000 Kemaman Terengganu', '0192887250', '', '', '', '2');
INSERT INTO `client` VALUES ('290', 'Isyahamimi Nur Ishak', '8adqfp', '8qhfgz', 'Customer Sevices Ting Insurance Bhd No.84 Menara Ing Jalan Raja Chulan 50927 Kuala Lumpur', '192484008', '', '', '', '2');
INSERT INTO `client` VALUES ('291', 'Noor Ezlyza Bt Rahmat', 'jw5x6b', '1r0xyk', 'Teratak Jati Lorong 1 Kg Labohan Dagang, 42700 Banting Selangor', '0142658250', '', '', '', '2');
INSERT INTO `client` VALUES ('292', 'Farah Liyana Bt Mohd Lazim', '25mz9a', 'kjqam5', 'Klinik Pergigian Batu 2 1/2  Jln Air Putih 24000 Kemaman Terengganu', '0199394940', '', '', '', '2');
INSERT INTO `client` VALUES ('293', 'Faridah Atar', 'cg6qsy', '89ms6w', 'No. 30 Lorong 1 Jln Bbp3 Taman Batu Berendam Putra 75350 Melaka', '0122656221', '', '', '', '2');
INSERT INTO `client` VALUES ('294', 'Siti Erni Harfiza Bt Baharuldi', 'ay8svn', 'q7pbtm', 'Sm No.3a Kg Masjid Selama 09810 Serdang Kedah', '0195405781', '', '', '', '2');
INSERT INTO `client` VALUES ('295', 'Dayang Janatiah Datu Jainal', 'rdh7j2', 'ranz3m', 'No. 13, Jalan Bakar Arang, Kg Temboih 81900 Kota Tinggi,johor.', '0146191202', '', '', '', '2');
INSERT INTO `client` VALUES ('296', 'Suhana Sanusi', 'v3prdj', 'vhtgzk', 'Simpang Ulu Teris Kg Bukit Bangkong, Sugai Pelek, 43950 Sepang, Selangor.', '0196027473', '', '', '', '2');

-- ----------------------------
-- Table structure for `color`
-- ----------------------------
DROP TABLE IF EXISTS `color`;
CREATE TABLE `color` (
  `color_id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) NOT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of color
-- ----------------------------
INSERT INTO `color` VALUES ('1', 'Nude');
INSERT INTO `color` VALUES ('2', 'Grey');
INSERT INTO `color` VALUES ('3', 'Coffee');
INSERT INTO `color` VALUES ('4', 'Black');
INSERT INTO `color` VALUES ('7', 'None');
INSERT INTO `color` VALUES ('8', 'Purple');

-- ----------------------------
-- Table structure for `delivery_address`
-- ----------------------------
DROP TABLE IF EXISTS `delivery_address`;
CREATE TABLE `delivery_address` (
  `delivery_address_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_my_id` int(11) DEFAULT NULL,
  `delivery_info_id` int(11) DEFAULT NULL,
  `name_delivery` varchar(500) DEFAULT NULL,
  `address_delivery` varchar(500) NOT NULL,
  `phone_delivery` varchar(11) DEFAULT NULL,
  `email_delivery` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`delivery_address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of delivery_address
-- ----------------------------
INSERT INTO `delivery_address` VALUES ('1', '21', null, 'Norazila', '17-4-1 Serindit D,jalan 5/56,au 3 Keramat,54200 Hulu Kelang,kuala Lumpur..0193464562', '0193464562', '');
INSERT INTO `delivery_address` VALUES ('2', '42', null, 'Mashithah M. Sharifu', '184 ,hala Tambun Permai 10,\n Kg Tersusun Batu 4,tambun.31400 Ipoh. Perak', '0135121264', '');
INSERT INTO `delivery_address` VALUES ('3', '43', null, 'Aniza Bt Abdul Aziz', '.plot 9-11,tingkat 2,kompleks Cayman,07000 Langkawi Kedah Darul Aman.', '0176352677', '');
INSERT INTO `delivery_address` VALUES ('4', '57', null, 'Suriwati Ahmad', 'Klinik Dada, Klinik Kesihatan Batu Pahat,jalan Kluang 83000 Batu Pahat Johor', '0197872768', '');
INSERT INTO `delivery_address` VALUES ('5', '163', null, 'Hanim Fariza Abu Bak', 'D/a Arif Era Maju Sdn. Bhd C-2-09 2nd Floor, Persiaran Greentown3, Greentown Business Park 30450 Ipoh Perak', '0195907878', '');
INSERT INTO `delivery_address` VALUES ('6', '164', null, 'Nancy Yu Hilim', 'No.38-11, Jalan Prims 2, Pusat Niaga Metro Prims, Kepong 52100 Kuala Lumpur', '0193662772', '');
INSERT INTO `delivery_address` VALUES ('7', '165', null, 'Siti Normala Mustafa', 'Lot 833 Kg Rusila 21080 Marang Terengganu', '0199991777', '');
INSERT INTO `delivery_address` VALUES ('8', '166', null, 'Mas Rieza', '0.1-13, Apartment Matahari Height 74200 Senawang Negeri Sembilan', '01111760556', '');
INSERT INTO `delivery_address` VALUES ('9', '170', null, 'Nor Hafiffah Hanif', 'No.22 Jalan Utama 6, Taman Jaya Utama Telok Panglima Garang 42500 Kuala Langat Selangor', '0133936234', '');
INSERT INTO `delivery_address` VALUES ('10', '184', null, 'Nuriza Che Jaafar', 'Pejabat Kastam Daerah Port Dickson, 71000 Negeri Sembilan', '0132978910', '');
INSERT INTO `delivery_address` VALUES ('11', '186', null, 'Suhana Othman', 'Smjk Chi Wen Bahau 72100negeri Sembilan', '0139393874', '');
INSERT INTO `delivery_address` VALUES ('12', '187', null, 'Noor Azura Abdul Rah', 'Cords 11, 5th Floor Menara Maybank 100 Jln Tun Perak Kl', '0122602474', '');
INSERT INTO `delivery_address` VALUES ('13', '192', null, 'Siti Aisyah Khalid', 'Proclean Laundry Dry Clean, Lot No. 15, Jalan Ixora Apartment Bukit Beruang 75450 Melaka', '0176064235', '');
INSERT INTO `delivery_address` VALUES ('14', '195', null, 'Nor Anis Nadhirah', 'No.168 Jalan Rasa Sayang 6, Taman Perumahan Rasa Sayang Selaru, Kuala Pilah Negeri Sembilan.', '0199016581', '');
INSERT INTO `delivery_address` VALUES ('15', '196', null, 'Zeenat Osman', 'Klinik Kesihatan Lebuh Munti Pulau Pinang', '0164395106', '');
INSERT INTO `delivery_address` VALUES ('16', '204', null, 'Ahmad Farezz', 'Hitachi Electronic Product Malaysia, Engineering Center Lot 12, Jln Kemaman, Bangi.', '0135644126', '');
INSERT INTO `delivery_address` VALUES ('17', '213', null, 'Nur Amelawana Haris', 'Batu 2 Setengah, Jalan Air Hitam Kg Tok Aminuddin Dengkil, 4300 Selangor', '0136366288', 'Amel@gmail.com');
INSERT INTO `delivery_address` VALUES ('18', '233', null, 'Zuhara Zakir', '1682b, Kuartes Guru Felda Maokil Labis Johor.', '0193783299', 'Zuha@yahoo.mail');
INSERT INTO `delivery_address` VALUES ('19', '247', null, 'Nur Idayu', 'Sb-09-13 Kenangan View Apartment, Taman Bukit Kenangan 4300 Kajang, Selangor', '0122721779', 'Ayu@ymail.com');
INSERT INTO `delivery_address` VALUES ('20', '249', null, 'Nor Shahida', 'No. 28, Jln Pjs 2c/2, Kg Medan 46000 Petaling Jaya, Selangor.', '0123755745', 'Shida@gmail.com');
INSERT INTO `delivery_address` VALUES ('21', '253', null, 'Nor Hafizan', 'Blok B 03-01 Aliran Damai Apt, Jalan Damai Perdana 5/2 Bandar Damai Perdana 56100 Cheras Kuala Lumpur.', '0192274919', 'Fizan@yahoo.com');
INSERT INTO `delivery_address` VALUES ('22', '258', null, 'Rafidah Mohamad', 'Sk, Lktp Jengka 24 26400 Bandar Jengka, Pahang.', '0143828030', 'Fida@gmail.com');
INSERT INTO `delivery_address` VALUES ('23', '262', null, 'Nor Asyikin Azmi', '6-2-3 Taman Kumbar Permai, Lintang Kg Masjid 1, Bandar Baru, Teluk Kumbar Bayan Lepas Pulau Pinang.', '0125164518', 'Ayikin@yahoo.com');
INSERT INTO `delivery_address` VALUES ('24', '265', null, 'Bibi Sutina', 'Edlin Ghazaly & Assu Iates\nD5-3-8 Selaris Dutamas, J;n Dutamas 1 50480 Kuala Lumpur.', '0162383282', '');
INSERT INTO `delivery_address` VALUES ('25', '286', null, 'Mazila Abdul Mutalib', 'Block A, Tb-9, Taman Jalan Kem 42000 Port Klang, Selangor.', '0176993492', '');
INSERT INTO `delivery_address` VALUES ('26', '291', null, 'Nik Ili Hasyyati', 'Smk Guntong, 20100 Jalan Permaisuri, Setiu Terengganu.', '0119713957', '');
INSERT INTO `delivery_address` VALUES ('27', '296', null, 'Firdaus Darus', 'No 10 Jalan Rampai Niaga Satu, 53300 Rampao Busness Park Setapak Kuala Lumpur.', '0135040122', '');
INSERT INTO `delivery_address` VALUES ('28', '303', null, 'Nik Suhani Nik Man', 'Klinik Pergigian, Klinik Kesihatan Bar Kuala Kra, 18000 Kuala Krai, Kelantan', '0199808078', '');
INSERT INTO `delivery_address` VALUES ('29', '308', null, 'Maria Liyana Mahmood', 'Level 23, Tower 1, Petronas Town Tower,50088 Klcc, Kuala Lumpur', '0125457075', '');
INSERT INTO `delivery_address` VALUES ('30', '309', null, 'Noor Sabrina', 'Mrsm Mersing, Jalan Jemaluang, 86800 Mersing Johor.', '0197752179', '');
INSERT INTO `delivery_address` VALUES ('31', '310', null, 'Nur Hidayah Ramli', 'Promnent Million Sdn Bhd\nM121 Sports No 6, Tingkat 2, Jalan Prima Sri Gombak 1, 68100 Batu Caves Selangor.', '0145065362', '');
INSERT INTO `delivery_address` VALUES ('32', '326', null, 'Nur Hana', 'No. 338, Level3 Blok B, Leisure Commerce Square, No.9 Jalan Pjs 8/9, 46150 Petaling Jaya Selangor.', '0164438974', '');
INSERT INTO `delivery_address` VALUES ('33', '327', null, 'Tuan Hasniza', 'Unit Rawatan Rapi, Hospital Selayang, Kepong 68100 Batu Caves Selangor.', '0192783155', '');
INSERT INTO `delivery_address` VALUES ('34', '330', null, 'Fatin Sarah Shaheila', '(timbalan Komandan Pentadbiran) Jkr 1332, Jalan Negeri Pusat Latihan Polis Pulapol, 54100 Jalan Semarak, Kuala Lumpur.', '0129187002', '');
INSERT INTO `delivery_address` VALUES ('35', '335', null, 'Linda Chin Cheng Ye', 'Taman Perumahan Limauan Rumah No 135, Lorong 3, Kinarut Selatan, 89600 Papar Sabah.', '0143503827', '');
INSERT INTO `delivery_address` VALUES ('36', '336', null, 'Dlyna Beauty', '8531-a, Kg Gong Badak, Jalan Gong Badak, 21300 Kuala Terengganu, Terengganu', '0172066863', '');
INSERT INTO `delivery_address` VALUES ('37', '337', null, 'Nur Fadzilah Laili', '17 Jalan B4 1/5 Taman Bukit Utama 68000 Ampang.', '0196683227', '');
INSERT INTO `delivery_address` VALUES ('38', '338', null, 'Nor Syakila', 'F1007 Perdana Exclusive Condominium, Jalan Pju 8/1a, Damansara Perdana, 47820 Petaling Jaya Selangor.', '0177968908', '');
INSERT INTO `delivery_address` VALUES ('39', '340', null, 'Mariaty Salehat', 'No.18, Jalan Pjs 6/4/f Kg Lindupan, 46000 Petaling Jaya Selangor.', '0193447029', '');
INSERT INTO `delivery_address` VALUES ('40', '343', null, 'Mariana Mat Jusoh', 'H-14-2 Kuartes Kerajaan Jalan Duta Jalan Dutamas 3, 50480 Kuala Lumpur.', '0126981843', '');
INSERT INTO `delivery_address` VALUES ('41', '347', null, 'Nurul Farah Bt Daud', 'No. 142, Taman Samudera Lorong Sembilang 5, Seri Manjung 32040 Perak', '0124325989', '');
INSERT INTO `delivery_address` VALUES ('42', '350', null, 'Ismalina Ismail', 'Pejabat Pos Kota Bharu Jalan Sultan Ibrahim 15050 Kota Bharu, Kelantan.', '0199104254', '');
INSERT INTO `delivery_address` VALUES ('43', '351', null, 'Noraini Sidek', 'No F-g-6, Pangsapuri Seri Tulip, Jalan Tulip, Sek Bs2, Bukit Sentosa 48300 Rawang, Selangor.', '0134927186', '');
INSERT INTO `delivery_address` VALUES ('44', '352', null, 'Muhaini Bt Mokhtar', 'No. 358 Lorong Pp12, Taman Pinggiran Pedas, 71400 Pedas, Negeri Sembilan', '0176059314', '');
INSERT INTO `delivery_address` VALUES ('45', '357', null, 'Muhaini Bt Mokhtar', 'No. 358 Lorong Pp 12, Taman Pinggiran Pedas, 71400 Pedas, Negeri Sembilan.', '0176059314', '');
INSERT INTO `delivery_address` VALUES ('46', '361', null, 'Suhana Sanusi', 'Simpang Ulu Teris Kg Bukit Bangkong, Sungai Pelek, 43950 Sepang, Selangor.', '0196027473', '');
INSERT INTO `delivery_address` VALUES ('47', '362', null, 'Zaleha Abu Bakar', 'No. 38 Taman Astaka, 32600 Setawan Perak', '017561562', '');

-- ----------------------------
-- Table structure for `delivery_info`
-- ----------------------------
DROP TABLE IF EXISTS `delivery_info`;
CREATE TABLE `delivery_info` (
  `delivery_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_my_id` int(11) NOT NULL,
  `delivery_type_id` int(11) NOT NULL,
  `delivery_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tracking_no` varchar(20) DEFAULT NULL,
  `delivered_by` varchar(500) NOT NULL,
  PRIMARY KEY (`delivery_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=338 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of delivery_info
-- ----------------------------
INSERT INTO `delivery_info` VALUES ('1', '1', '1', '2012-12-02 00:00:00', 'EMMY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('2', '2', '1', '2012-12-03 00:00:00', 'EM097385235MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('3', '3', '1', '2012-12-04 09:55:55', 'EM097385227MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('4', '4', '1', '2012-12-04 09:57:50', 'EM097385213MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('5', '6', '1', '2012-12-06 12:49:25', 'EM097385893MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('6', '7', '1', '2012-12-06 13:04:25', 'EM097385200MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('7', '8', '1', '2012-12-06 00:00:00', '', 'AGEN');
INSERT INTO `delivery_info` VALUES ('8', '5', '1', '2012-12-05 00:00:00', '', 'AGEN POS');
INSERT INTO `delivery_info` VALUES ('9', '9', '1', '2012-12-08 09:54:15', 'EM097385195MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('10', '10', '1', '2012-12-08 00:00:00', 'EM097385187MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('11', '11', '1', '2012-12-09 12:17:55', 'EM097385173MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('12', '12', '1', '2012-12-09 12:58:50', 'EM097385828MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('13', '14', '1', '2012-12-05 13:17:35', 'EM097385289MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('14', '15', '1', '2012-12-10 10:08:05', 'EM097385156MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('15', '16', '1', '2012-12-10 00:00:00', 'EM097385814MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('16', '17', '1', '2012-12-11 11:30:15', 'EM097385916MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('17', '18', '1', '2012-12-11 14:35:55', 'EM097385902MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('18', '19', '1', '2012-12-12 10:01:40', 'EM097385160MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('19', '20', '1', '2012-12-12 12:29:40', 'EM097385920MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('20', '22', '1', '2012-12-13 09:45:55', 'EM097385876MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('21', '23', '1', '2012-12-18 11:21:55', 'EM097385859MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('22', '24', '1', '2012-12-18 11:29:55', 'EM097385831MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('23', '25', '1', '2012-12-18 00:00:00', 'EM097385845MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('24', '27', '1', '2012-12-18 00:00:00', 'EM097385332MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('25', '29', '1', '2012-12-18 00:00:00', 'EM097385301MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('26', '26', '1', '2012-12-18 00:00:00', 'EM097385730MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('27', '30', '1', '2012-12-19 00:00:00', 'EM097385403MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('28', '31', '2', '2012-12-13 00:00:00', '-', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('30', '33', '1', '2012-12-20 11:12:50', 'EM097385377MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('31', '34', '1', '2012-12-19 00:00:00', 'EM097385686MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('32', '35', '1', '2012-12-19 00:00:00', 'EM097385774MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('33', '36', '1', '2012-12-17 00:00:00', 'EM097385690MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('34', '37', '1', '2012-12-20 00:00:00', 'EM097385394MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('35', '38', '1', '2012-12-20 00:00:00', 'EM097385385MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('36', '39', '1', '2012-12-20 00:00:00', 'EM097385363MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('37', '40', '1', '2012-12-23 00:00:00', 'EM097385350MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('38', '41', '1', '2012-12-23 00:00:00', 'EM097385315MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('40', '42', '1', '2012-12-29 11:23:35', 'EM097385584MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('41', '43', '1', '2012-12-29 11:26:20', 'EM097385607MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('42', '44', '1', '2012-12-29 11:28:35', 'EM097385598MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('43', '46', '1', '2012-12-24 00:00:00', 'EM097385757MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('44', '45', '1', '2012-12-27 00:00:00', 'EM097385669MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('45', '48', '1', '2012-12-30 09:18:50', 'EM097385434MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('46', '47', '1', '2012-12-30 09:20:05', 'EM097385417MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('47', '49', '1', '2012-12-31 10:34:05', 'EM097385448MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('48', '50', '1', '2012-12-31 12:08:30', 'EM097385482MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('49', '51', '1', '2013-01-01 10:28:50', 'EM097385479MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('50', '52', '1', '2013-01-01 10:31:50', 'EM097385496MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('51', '53', '1', '2013-01-01 10:34:30', 'EM097385519MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('57', '57', '1', '2013-01-06 10:42:10', 'EM356484135MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('58', '59', '1', '2013-01-06 10:52:10', 'EM356484166MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('59', '58', '1', '2013-01-06 10:53:45', 'EM356484149MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('60', '56', '1', '2013-01-06 10:55:45', 'EM356484170MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('61', '60', '1', '2013-01-03 00:00:00', 'EM356484373MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('62', '61', '1', '2013-01-08 11:04:15', 'EM356484210MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('63', '62', '1', '2013-01-08 11:10:35', 'EM356484223MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('64', '63', '1', '2013-01-23 10:09:10', 'EM356483877MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('65', '64', '1', '2013-01-26 12:28:15', 'EM356483885MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('66', '65', '1', '2013-01-26 12:32:00', 'EM356483903MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('67', '66', '1', '2013-01-26 12:36:10', 'EM356483894MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('68', '67', '1', '2013-01-26 12:40:45', 'EM356483917MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('69', '68', '1', '2013-01-08 00:00:00', 'EM356484271MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('70', '69', '1', '2013-01-09 00:00:00', 'EM356484285MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('72', '71', '1', '2013-01-15 00:00:00', 'EM356484325MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('73', '72', '1', '2013-01-16 00:00:00', 'EM356484342MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('74', '73', '1', '2013-01-15 00:00:00', 'EM356484311MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('75', '76', '1', '2013-01-21 00:00:00', 'EM356483792MY', 'ANUM');
INSERT INTO `delivery_info` VALUES ('76', '77', '1', '2013-01-22 00:00:00', 'EM356483801MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('77', '78', '1', '2013-01-22 00:00:00', 'EM356483863MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('78', '81', '1', '2013-02-18 00:00:00', '', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('79', '82', '1', '2013-02-18 00:00:00', '', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('80', '83', '1', '2013-02-18 00:00:00', '', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('81', '79', '1', '2013-02-18 00:00:00', '', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('82', '85', '1', '2013-02-18 00:00:00', '', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('91', '95', '1', '2013-02-21 00:00:00', '', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('102', '107', '1', '2013-02-25 00:00:00', '', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('105', '109', '1', '2013-02-26 00:00:00', 'EM356484634MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('106', '108', '1', '2013-02-26 00:00:00', 'EM356484648MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('107', '103', '1', '2013-02-25 00:00:00', 'EM356484807', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('108', '104', '1', '2013-02-25 00:00:00', 'EM356485189MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('109', '106', '1', '2013-02-24 00:00:00', 'EM356485127MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('110', '101', '1', '2013-02-23 00:00:00', 'EM356485144MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('111', '102', '1', '2013-02-23 00:00:00', 'EM356484841MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('112', '100', '1', '2013-02-23 00:00:00', 'EM356485135MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('113', '98', '1', '2013-02-21 00:00:00', 'EM356484824MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('114', '99', '1', '2013-02-21 00:00:00', 'EM356484838MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('115', '97', '1', '2013-02-21 00:00:00', 'EM356484815MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('116', '94', '1', '2013-02-20 00:00:00', 'EM356485100MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('117', '88', '1', '2013-02-20 00:00:00', 'EM356485095MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('118', '91', '1', '2013-02-20 00:00:00', 'EM356485113MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('120', '111', '1', '2013-03-27 00:00:00', 'EM356484665MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('121', '110', '1', '2013-02-27 00:00:00', 'EM356484679MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('122', '112', '1', '2013-02-27 00:00:00', 'EM356484679MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('123', '113', '1', '2013-02-27 00:00:00', 'EM356484665MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('124', '114', '1', '2013-02-27 00:00:00', 'EM356484651MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('125', '116', '1', '2013-03-03 00:00:00', 'EM356484736MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('126', '117', '1', '2013-03-03 00:00:00', 'EM356484740MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('127', '118', '1', '2013-03-03 00:00:00', 'EM356484767MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('128', '119', '1', '2013-03-04 00:00:00', 'EM356485201MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('129', '121', '1', '2013-03-06 00:00:00', 'EM356485246MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('130', '122', '1', '2013-03-06 00:00:00', 'EM356485250MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('131', '123', '1', '2013-03-07 00:00:00', 'EM356485277MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('132', '124', '1', '2013-03-09 00:00:00', 'EM356485285MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('133', '125', '1', '2013-03-10 00:00:00', 'EM356485294MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('134', '126', '1', '2013-03-11 00:00:00', 'EM356484705MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('135', '127', '1', '2013-03-11 00:00:00', 'EM356485303MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('136', '129', '1', '2013-03-11 00:00:00', 'EM356485348MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('137', '130', '1', '2013-03-11 00:00:00', 'EM356485158MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('138', '131', '1', '2013-03-11 00:00:00', 'EM356484869MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('139', '132', '1', '2013-03-11 00:00:00', 'EM356484872MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('142', '120', '1', '2013-03-11 00:00:00', 'EM356485263MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('143', '141', '1', '2013-03-11 00:00:00', 'EM356485232MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('145', '144', '1', '2013-03-11 00:00:00', 'EM356484890MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('146', '146', '1', '2013-03-13 00:00:00', 'EM356484696MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('147', '150', '1', '2013-03-13 00:00:00', 'EM356484696MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('148', '152', '1', '2013-03-14 00:00:00', 'EM356485011MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('149', '153', '1', '2013-03-14 00:00:00', 'EM356484492MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('150', '154', '1', '2013-03-14 00:00:00', 'EM356484529MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('151', '155', '1', '2013-03-14 00:00:00', 'EM319353263MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('152', '156', '1', '2013-03-14 00:00:00', 'EM319353250MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('153', '157', '1', '2013-03-14 00:00:00', 'EM319353232MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('154', '158', '1', '2013-03-16 00:00:00', 'EM319353135MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('155', '159', '1', '2013-03-16 00:00:00', 'EM319353144MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('156', '160', '1', '2013-03-16 00:00:00', 'EM319353189MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('157', '161', '1', '2013-03-16 00:00:00', 'EM319353192MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('158', '162', '1', '2013-03-16 00:00:00', 'EM319353127MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('159', '163', '1', '2013-03-16 00:00:00', 'EM319353113MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('160', '137', '1', '2013-03-11 00:00:00', 'EM356485334MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('161', '140', '1', '2013-03-11 00:00:00', 'EM356485229MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('162', '164', '1', '2013-03-11 00:00:00', 'EM356484886MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('163', '165', '1', '2013-03-11 00:00:00', 'EM356484909MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('164', '166', '1', '2013-03-12 00:00:00', 'EM356484722MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('165', '167', '1', '2013-03-18 00:00:00', 'EM319353229MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('166', '168', '1', '2013-03-18 00:00:00', 'EM319353175MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('167', '170', '1', '2013-03-19 00:00:00', 'EM319353039MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('168', '171', '1', '2013-03-19 00:00:00', 'EM319353056MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('169', '172', '1', '2013-03-19 00:00:00', 'EM319353100MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('170', '173', '1', '2013-03-21 00:00:00', 'EM319353025MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('171', '175', '1', '2013-03-24 00:00:00', 'EM319353060MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('172', '176', '1', '2013-03-24 00:00:00', 'EM319353042MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('173', '177', '1', '2013-03-24 00:00:00', 'EM319353011MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('174', '181', '1', '2013-03-25 00:00:00', 'EM319352988MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('175', '182', '1', '2013-03-26 00:00:00', 'EM319352926MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('176', '183', '1', '2013-03-26 00:00:00', 'EM319352957MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('177', '184', '1', '2013-03-26 00:00:00', 'EM319352965MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('179', '186', '1', '2013-03-27 00:00:00', 'EM319352890MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('180', '187', '1', '2013-03-27 00:00:00', 'EM319352912MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('181', '178', '1', '2013-03-25 00:00:00', 'EM319353008MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('182', '190', '1', '2013-03-31 00:00:00', 'EM319352798MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('183', '192', '1', '2013-03-31 00:00:00', 'EM319352841MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('185', '191', '1', '2013-03-31 00:00:00', 'EM319352824MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('186', '193', '1', '2013-04-04 00:00:00', 'EM319352696MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('187', '194', '1', '2013-04-04 00:00:00', 'EM319352705MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('189', '197', '1', '2013-04-03 00:00:00', 'EM319352753MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('190', '199', '1', '2013-04-03 00:00:00', 'EM319352736MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('191', '200', '1', '2013-04-02 00:00:00', 'EM319352775MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('192', '201', '1', '2013-04-02 00:00:00', 'EM319352767MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('193', '203', '1', '2013-04-01 00:00:00', 'EM319352869MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('194', '205', '1', '2013-04-07 00:00:00', 'EM319352651MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('195', '207', '1', '2013-04-08 00:00:00', 'EM319352625MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('196', '208', '1', '2013-04-08 00:00:00', 'EM319352682MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('197', '209', '1', '2013-04-08 00:00:00', 'EM319352722MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('198', '210', '1', '2013-04-08 00:00:00', 'EM319352679MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('199', '211', '1', '2013-04-08 00:00:00', 'EM319352719MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('200', '212', '1', '2013-04-09 00:00:00', 'EM319352577', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('201', '213', '1', '2013-04-10 00:00:00', 'EM319352550MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('202', '214', '1', '2013-04-10 00:00:00', 'EM319352665MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('203', '215', '1', '2013-04-11 00:00:00', 'EM319352529MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('204', '216', '1', '2013-04-11 00:00:00', 'EM319352492MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('205', '217', '1', '2013-04-11 00:00:00', 'EM319352501MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('206', '218', '1', '2013-04-11 00:00:00', 'EM319352585MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('207', '219', '1', '2013-04-13 00:00:00', 'EM319352563MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('208', '220', '1', '2013-04-15 00:00:00', 'EM319352458MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('209', '221', '1', '2013-04-15 00:00:00', 'EM319352515MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('210', '222', '1', '2013-04-16 00:00:00', 'EM319352395MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('211', '223', '1', '2013-04-16 00:00:00', 'EM319352427MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('212', '224', '1', '2013-04-16 00:00:00', 'EM319352387MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('213', '225', '1', '2013-04-16 00:00:00', 'EM319352594MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('214', '226', '1', '2013-04-17 00:00:00', 'EM319352299MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('215', '227', '1', '2013-04-17 00:00:00', 'EM319352360MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('216', '228', '1', '2013-04-17 00:00:00', 'EM319352400MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('217', '229', '1', '2013-04-18 00:00:00', 'EM319352311MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('218', '230', '1', '2013-04-18 00:00:00', 'EM319352339MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('219', '233', '1', '2013-04-18 00:00:00', 'EM319352342MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('220', '234', '1', '2013-04-18 00:00:00', 'EM319352325MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('221', '235', '1', '2013-04-18 00:00:00', 'EM319352285MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('222', '236', '1', '2013-04-21 00:00:00', 'EM319352271MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('223', '237', '1', '2013-04-21 00:00:00', 'EM319352461MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('224', '238', '1', '2013-04-21 00:00:00', 'EM319352245MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('225', '239', '1', '2013-04-21 00:00:00', 'EM319352271MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('227', '242', '1', '2013-04-22 00:00:00', 'EM319352254MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('228', '243', '1', '2013-04-23 00:00:00', 'EM319352223MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('229', '244', '1', '2013-04-23 00:00:00', 'EM319352237MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('230', '246', '1', '2013-04-24 00:00:00', 'EM319352210MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('231', '247', '1', '2013-04-24 00:00:00', 'EM319352149MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('232', '248', '1', '2013-04-24 00:00:00', 'EM319352206MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('233', '249', '1', '2013-04-24 00:00:00', 'EM319352170MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('234', '250', '1', '2013-04-25 00:00:00', 'EM319352118MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('235', '251', '1', '2013-04-25 00:00:00', 'EM319352166MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('236', '252', '1', '2013-04-28 00:00:00', 'EM319352078MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('238', '254', '1', '2013-04-28 00:00:00', 'EM319352064MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('239', '255', '1', '2013-04-28 00:00:00', 'EM319352047MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('240', '256', '1', '2013-04-28 00:00:00', 'EM319352033MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('241', '257', '1', '2013-04-28 00:00:00', 'EM319352095MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('242', '258', '1', '2013-04-28 00:00:00', 'EM319352081MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('243', '259', '1', '2013-04-28 00:00:00', 'EM319352081MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('244', '260', '1', '2013-04-28 00:00:00', 'EM319352020MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('246', '253', '1', '2013-04-28 00:00:00', 'EM319352055MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('247', '262', '1', '2013-04-28 00:00:00', 'EM319352002MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('248', '264', '2', '2013-04-28 00:00:00', '', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('249', '265', '1', '2013-04-29 00:00:00', 'EM319351982MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('250', '266', '1', '2013-04-29 00:00:00', 'EM319351979MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('251', '268', '1', '2013-04-30 00:00:00', 'EM319351948MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('252', '269', '1', '2013-04-30 00:00:00', 'EM319351934MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('253', '270', '1', '2013-05-02 00:00:00', 'EM319351951MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('254', '271', '1', '2013-05-02 00:00:00', 'EM319351925MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('255', '272', '1', '2013-05-02 00:00:00', 'EM319351885MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('256', '273', '1', '2013-05-02 00:00:00', 'EM319351863MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('257', '274', '1', '2013-05-02 00:00:00', 'EM319351877MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('258', '276', '1', '2013-05-06 00:00:00', 'EM319351829MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('259', '277', '1', '2013-05-06 00:00:00', 'EM319351846MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('260', '278', '1', '2013-05-06 00:00:00', 'EM319351832MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('261', '280', '1', '2013-05-02 00:00:00', 'EM319351903MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('262', '281', '1', '2013-05-06 00:00:00', 'EM319351917MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('263', '283', '1', '2013-05-07 00:00:00', 'EM319351812MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('264', '284', '1', '2013-05-07 00:00:00', 'EM319351789MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('265', '285', '1', '2013-05-07 00:00:00', 'EM319351727MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('266', '286', '1', '2013-05-07 00:00:00', 'EM319351744MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('267', '287', '1', '2013-05-07 00:00:00', 'EM319351735MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('268', '289', '1', '2013-05-09 00:00:00', 'EM328255043MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('269', '290', '1', '2013-05-09 00:00:00', 'EM319351792MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('270', '291', '1', '2013-05-09 00:00:00', 'EM319352135MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('271', '293', '1', '2013-05-09 00:00:00', 'EM319351801MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('272', '294', '1', '2013-05-09 00:00:00', 'EM319351713MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('273', '295', '1', '2013-05-09 00:00:00', 'EM328255030MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('274', '296', '1', '2013-05-09 00:00:00', 'EM328255012MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('275', '297', '1', '2013-05-09 00:00:00', 'EM319352197MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('276', '298', '1', '2013-05-09 00:00:00', 'EM328255026MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('277', '299', '1', '2013-05-13 00:00:00', 'EM430444701MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('278', '300', '1', '2013-05-13 00:00:00', 'EM430444692MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('279', '301', '1', '2013-05-13 00:00:00', 'EM430444729MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('280', '302', '1', '2013-05-14 00:00:00', 'EM430444525MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('281', '303', '1', '2013-05-14 00:00:00', 'EM430444556MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('282', '304', '1', '2013-05-14 00:00:00', 'EM430444661MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('283', '306', '1', '2013-05-14 00:00:00', 'EM430444635MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('284', '307', '1', '2013-05-14 00:00:00', 'EM430444658MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('285', '308', '1', '2013-05-14 00:00:00', 'EM430444627MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('286', '309', '1', '2013-05-14 00:00:00', 'EM430444600MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('287', '310', '1', '2013-05-14 00:00:00', 'EM430444613MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('288', '311', '1', '2013-05-14 00:00:00', 'EM430444573MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('289', '312', '1', '2013-05-14 00:00:00', 'EM430444644MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('290', '313', '1', '2013-05-14 00:00:00', 'EM430444595MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('291', '314', '1', '2013-05-14 00:00:00', 'EM430444689MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('292', '315', '1', '2013-05-14 00:00:00', 'EM430444715MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('293', '316', '1', '2013-05-15 00:00:00', 'EM430444499MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('294', '317', '1', '2013-05-15 00:00:00', 'EM430444675MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('295', '318', '1', '2013-05-15 00:00:00', 'EM430444542MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('296', '319', '1', '2013-05-15 00:00:00', 'EM430444508MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('297', '320', '1', '2013-05-15 00:00:00', 'EM430444511MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('298', '321', '1', '2013-05-15 00:00:00', 'EM430444539MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('299', '322', '1', '2013-05-15 00:00:00', 'EM430444485MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('300', '323', '1', '2013-05-16 00:00:00', 'EM430444410MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('301', '324', '1', '2013-05-16 00:00:00', 'EM430444468MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('302', '325', '1', '2013-05-16 00:00:00', 'EM430444423MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('303', '326', '1', '2013-05-16 00:00:00', 'EM430444445MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('304', '327', '1', '2013-05-16 00:00:00', 'EM430444437MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('305', '328', '1', '2013-05-16 00:00:00', 'EM430444471MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('306', '329', '1', '2013-05-16 00:00:00', 'EM430444454MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('307', '330', '1', '2013-05-19 00:00:00', 'EM430444370MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('308', '331', '1', '2013-05-19 00:00:00', 'EM430444352MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('309', '332', '1', '2013-05-19 00:00:00', 'EM430444383MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('310', '333', '1', '2013-05-19 00:00:00', 'EM430444397MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('311', '335', '1', '2013-05-19 00:00:00', 'EM430444406MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('312', '336', '1', '2013-05-19 00:00:00', 'EM430444335MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('313', '337', '1', '2013-05-19 00:00:00', 'EM430444321MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('314', '338', '1', '2013-05-19 00:00:00', 'EM430444366MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('315', '339', '1', '2013-05-21 00:00:00', 'EM430444295MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('316', '340', '1', '2013-05-21 00:00:00', 'EM430444349MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('317', '341', '1', '2013-05-21 00:00:00', 'EM430444304MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('318', '342', '1', '2013-05-21 00:00:00', 'EM430444281MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('319', '343', '1', '2013-05-21 00:00:00', 'EM430444318MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('320', '344', '1', '2013-05-21 00:00:00', 'EM430444220MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('321', '345', '1', '2013-05-22 00:00:00', 'EM430444278MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('322', '346', '1', '2013-05-23 00:00:00', 'EM430444255MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('323', '347', '1', '2013-05-23 00:00:00', 'EM430444233MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('324', '348', '1', '2013-05-23 00:00:00', 'EM430444264MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('325', '349', '1', '2013-05-23 00:00:00', 'EM430444247MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('326', '350', '1', '2013-05-26 00:00:00', 'EM430444193MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('327', '351', '1', '2013-05-27 00:00:00', 'EM430444180MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('328', '352', '1', '2013-05-27 00:00:00', 'EM430444202MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('329', '353', '1', '2013-05-28 00:00:00', 'EM430444145MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('330', '354', '1', '2013-05-28 00:00:00', 'EM430444176MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('331', '355', '1', '2013-05-28 00:00:00', 'EM430444162MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('332', '356', '1', '2013-05-28 00:00:00', 'EM430444131MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('333', '357', '1', '2013-05-30 00:00:00', 'EM430444088MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('335', '359', '1', '2013-05-30 00:00:00', 'EM430444009MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('336', '361', '1', '2013-05-30 00:00:00', 'EM430444026MY', 'AZALIHA');
INSERT INTO `delivery_info` VALUES ('337', '362', '1', '2013-05-30 00:00:00', 'EM430444030MY', 'AZALIHA');

-- ----------------------------
-- Table structure for `delivery_type`
-- ----------------------------
DROP TABLE IF EXISTS `delivery_type`;
CREATE TABLE `delivery_type` (
  `delivery_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `delivery_type` varchar(500) NOT NULL,
  PRIMARY KEY (`delivery_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of delivery_type
-- ----------------------------
INSERT INTO `delivery_type` VALUES ('1', 'Poslaju');
INSERT INTO `delivery_type` VALUES ('2', 'By Hand');
INSERT INTO `delivery_type` VALUES ('3', 'AirMail');
INSERT INTO `delivery_type` VALUES ('6', 'Pos Daftar');

-- ----------------------------
-- Table structure for `exchange`
-- ----------------------------
DROP TABLE IF EXISTS `exchange`;
CREATE TABLE `exchange` (
  `exchange_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `exchange_approve` decimal(1,0) NOT NULL DEFAULT '0',
  `return_tracking_no` varchar(255) NOT NULL,
  `date_exchange` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `size_id` int(11) NOT NULL,
  `remarks` text NOT NULL,
  PRIMARY KEY (`exchange_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exchange
-- ----------------------------

-- ----------------------------
-- Table structure for `feedback`
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_my_id` int(11) NOT NULL,
  `comments` text NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES ('1', '3', '35/42inch');
INSERT INTO `feedback` VALUES ('2', '3', 'Rm0.00 Message From Cimb Clicks: From: Senah @ Norhasnah Binti Zakaria To A/c No: 12260024005523 Amount: Rm175.00 03-dec-2012 20:55:03 Pm');
INSERT INTO `feedback` VALUES ('3', '4', 'Rm0.00 Cimb: 3rd Party Transfer - Rm196.00 To ****5523/azaliha Abdu Accepted On 03 Dec 2012 13:46:28. Pls Call 1300880900 If You Did Not Perform This Txn.');
INSERT INTO `feedback` VALUES ('4', '4', 'Bengkung Lengan Pendek');
INSERT INTO `feedback` VALUES ('5', '5', 'Pos By Asmajulia');
INSERT INTO `feedback` VALUES ('6', '20', 'Poslaju - Tambah Lagi Rm 2');
INSERT INTO `feedback` VALUES ('7', '39', 'Return\n2xl-em097385575my');
INSERT INTO `feedback` VALUES ('8', '33', 'Baki Rm4');
INSERT INTO `feedback` VALUES ('9', '37', 'No Tel Che Haniza:\n012-2373193');
INSERT INTO `feedback` VALUES ('10', '53', '41/46');
INSERT INTO `feedback` VALUES ('11', '56', '47/45');
INSERT INTO `feedback` VALUES ('12', '57', 'Guna Alamat Klinik');
INSERT INTO `feedback` VALUES ('13', '58', '90/117');
INSERT INTO `feedback` VALUES ('14', '59', '36/37');
INSERT INTO `feedback` VALUES ('15', '63', 'Baki Rm 4 Cash');
INSERT INTO `feedback` VALUES ('16', '63', 'Ukuran 26/34');
INSERT INTO `feedback` VALUES ('17', '120', '28/38');
INSERT INTO `feedback` VALUES ('18', '125', '32/42');
INSERT INTO `feedback` VALUES ('19', '126', '31/41');
INSERT INTO `feedback` VALUES ('20', '152', '3xl-35/44\n2xl-32/42');
INSERT INTO `feedback` VALUES ('21', '156', '87/108');
INSERT INTO `feedback` VALUES ('22', '158', '35/39');
INSERT INTO `feedback` VALUES ('23', '137', 'Exchange');
INSERT INTO `feedback` VALUES ('24', '140', 'Exchange');
INSERT INTO `feedback` VALUES ('25', '158', 'Exchange');
INSERT INTO `feedback` VALUES ('26', '177', '35/42');
INSERT INTO `feedback` VALUES ('27', '180', '42/52');
INSERT INTO `feedback` VALUES ('29', '246', 'Return Xtraslim 3xl+rm10');
INSERT INTO `feedback` VALUES ('30', '292', 'Return Korset-5xl');
INSERT INTO `feedback` VALUES ('31', '305', 'Return Xtraslim-xl');
INSERT INTO `feedback` VALUES ('32', '333', 'Return Xtraslim-3xl');

-- ----------------------------
-- Table structure for `group`
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(500) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES ('1', 'Admin');
INSERT INTO `group` VALUES ('2', 'Client');
INSERT INTO `group` VALUES ('3', 'Rakan Niaga A');
INSERT INTO `group` VALUES ('4', 'Rakan Niaga B');
INSERT INTO `group` VALUES ('5', 'Dropshipper');

-- ----------------------------
-- Table structure for `item`
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(500) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `short_desc` longtext,
  `long_desc` longtext,
  `pict` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('6', 'Xtraslim', '169.00', null, null, null);
INSERT INTO `item` VALUES ('7', 'Magnetik', '159.00', null, null, null);
INSERT INTO `item` VALUES ('8', 'Ultraslim', '230.00', null, null, null);
INSERT INTO `item` VALUES ('10', 'Bengkung Lengan', '15.00', null, null, null);
INSERT INTO `item` VALUES ('11', 'Losyen (100ml X 24)', '356.00', null, null, null);
INSERT INTO `item` VALUES ('12', 'Losyen AYUS', '19.80', null, null, null);
INSERT INTO `item` VALUES ('13', 'Poslaju Semenanjung', '6.00', '<p><font color=\"#FF0000\"><b>Perkhimatan POSLAJU untuk kawasan Semenanjung Malaysia</b></font></p>', '<p><font color=\"#FF0000\"><b>Perkhimatan POSLAJU untuk kawasan Semenanjung Malaysia</b></font></p>', null);
INSERT INTO `item` VALUES ('14', 'Poslaju Sabah Sarawak', '10.00', '<p><font color=\"#FF0000\"><b>Perkhimatan POSLAJU untuk kawasan Sabah dan Sarawak</b></font></p>', '<p><font color=\"#FF0000\"><b>Perkhimatan POSLAJU untuk kawasan Sabah dan Sarawak</b></font></p>', null);
INSERT INTO `item` VALUES ('15', 'Pakej Bengkung Mama', '120.00', null, null, null);
INSERT INTO `item` VALUES ('16', 'Full Body Shaper', '68.00', null, null, null);
INSERT INTO `item` VALUES ('17', 'HWU 6789', '39.00', null, null, null);

-- ----------------------------
-- Table structure for `method_order`
-- ----------------------------
DROP TABLE IF EXISTS `method_order`;
CREATE TABLE `method_order` (
  `method_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `method_order` varchar(255) NOT NULL,
  PRIMARY KEY (`method_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of method_order
-- ----------------------------
INSERT INTO `method_order` VALUES ('1', 'SMS');
INSERT INTO `method_order` VALUES ('2', 'Email');
INSERT INTO `method_order` VALUES ('3', 'Facebook');
INSERT INTO `method_order` VALUES ('4', 'Phone Call');
INSERT INTO `method_order` VALUES ('5', 'Website');

-- ----------------------------
-- Table structure for `mode_payment`
-- ----------------------------
DROP TABLE IF EXISTS `mode_payment`;
CREATE TABLE `mode_payment` (
  `mode_payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `mode_payment` varchar(255) NOT NULL,
  PRIMARY KEY (`mode_payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mode_payment
-- ----------------------------
INSERT INTO `mode_payment` VALUES ('1', 'Online Banking');
INSERT INTO `mode_payment` VALUES ('2', 'Interbank Transfer');
INSERT INTO `mode_payment` VALUES ('3', 'Cash Deposit Machine');
INSERT INTO `mode_payment` VALUES ('4', 'Cheque Deposit Machine');
INSERT INTO `mode_payment` VALUES ('5', 'COD');
INSERT INTO `mode_payment` VALUES ('7', 'TT Transfer');

-- ----------------------------
-- Table structure for `order_item`
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_my_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `size_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `discount` decimal(15,2) NOT NULL,
  `total_price` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=744 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES ('1', '1', '6', '3', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('2', '1', '9', '12', '7', '1', '0.00', '10.00');
INSERT INTO `order_item` VALUES ('3', '1', '10', '13', '1', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('4', '2', '6', '9', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('5', '3', '6', '6', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('6', '3', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('7', '4', '6', '3', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('8', '4', '10', '13', '1', '1', '5.00', '10.00');
INSERT INTO `order_item` VALUES ('9', '4', '12', '12', '7', '1', '4.80', '15.00');
INSERT INTO `order_item` VALUES ('10', '5', '8', '7', '1', '1', '46.00', '184.00');
INSERT INTO `order_item` VALUES ('11', '5', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('12', '6', '8', '8', '1', '1', '5.00', '225.00');
INSERT INTO `order_item` VALUES ('13', '7', '15', '13', '1', '1', '0.00', '120.00');
INSERT INTO `order_item` VALUES ('14', '8', '8', '7', '1', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('15', '8', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('16', '9', '8', '6', '1', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('17', '9', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('18', '10', '6', '5', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('19', '10', '10', '13', '1', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('20', '10', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('21', '11', '6', '4', '1', '1', '39.00', '130.00');
INSERT INTO `order_item` VALUES ('22', '12', '8', '4', '1', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('23', '14', '6', '5', '1', '1', '65.00', '104.00');
INSERT INTO `order_item` VALUES ('24', '15', '6', '4', '1', '1', '29.00', '140.00');
INSERT INTO `order_item` VALUES ('25', '16', '6', '8', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('26', '16', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('27', '17', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('28', '17', '10', '13', '1', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('29', '17', '12', '12', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('30', '17', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('31', '18', '8', '3', '4', '1', '40.00', '190.00');
INSERT INTO `order_item` VALUES ('32', '19', '6', '7', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('33', '19', '10', '13', '1', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('34', '19', '12', '12', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('35', '19', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('42', '20', '8', '3', '4', '1', '78.00', '152.00');
INSERT INTO `order_item` VALUES ('43', '20', '6', '3', '1', '1', '65.00', '104.00');
INSERT INTO `order_item` VALUES ('44', '20', '6', '4', '1', '1', '65.00', '104.00');
INSERT INTO `order_item` VALUES ('45', '20', '6', '6', '1', '1', '65.00', '104.00');
INSERT INTO `order_item` VALUES ('46', '20', '6', '7', '1', '2', '130.00', '208.00');
INSERT INTO `order_item` VALUES ('49', '21', '8', '3', '1', '1', '40.00', '190.00');
INSERT INTO `order_item` VALUES ('50', '20', '16', '4', '4', '1', '33.00', '35.00');
INSERT INTO `order_item` VALUES ('51', '20', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('52', '22', '6', '8', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('53', '22', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('54', '23', '6', '6', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('55', '23', '12', '12', '7', '1', '4.80', '15.00');
INSERT INTO `order_item` VALUES ('56', '23', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('57', '24', '6', '9', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('59', '24', '10', '13', '1', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('60', '24', '12', '12', '7', '1', '3.80', '16.00');
INSERT INTO `order_item` VALUES ('61', '25', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('62', '25', '10', '13', '1', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('63', '25', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('64', '27', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('65', '27', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('66', '29', '6', '5', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('67', '29', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('70', '26', '17', '2', '1', '7', '98.00', '175.00');
INSERT INTO `order_item` VALUES ('71', '26', '13', '13', '7', '2', '0.00', '12.00');
INSERT INTO `order_item` VALUES ('72', '26', '12', '12', '7', '2', '13.60', '26.00');
INSERT INTO `order_item` VALUES ('73', '30', '6', '5', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('74', '30', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('75', '31', '17', '4', '1', '1', '0.00', '39.00');
INSERT INTO `order_item` VALUES ('76', '31', '12', '12', '7', '3', '0.40', '59.00');
INSERT INTO `order_item` VALUES ('81', '33', '10', '13', '4', '2', '0.00', '30.00');
INSERT INTO `order_item` VALUES ('82', '33', '6', '3', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('83', '33', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('84', '33', '6', '6', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('85', '33', '6', '7', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('86', '33', '12', '12', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('87', '34', '6', '6', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('88', '34', '13', '12', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('89', '35', '6', '3', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('90', '35', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('91', '36', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('92', '36', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('93', '37', '6', '6', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('95', '37', '12', '12', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('96', '37', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('97', '37', '10', '13', '1', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('98', '38', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('100', '38', '12', '12', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('101', '38', '10', '13', '1', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('102', '38', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('103', '39', '6', '3', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('104', '39', '12', '12', '7', '1', '4.80', '15.00');
INSERT INTO `order_item` VALUES ('105', '39', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('106', '40', '6', '5', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('107', '40', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('108', '41', '8', '3', '4', '1', '60.00', '170.00');
INSERT INTO `order_item` VALUES ('109', '41', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('111', '42', '12', '12', '7', '4', '34.20', '45.00');
INSERT INTO `order_item` VALUES ('112', '43', '6', '8', '1', '1', '39.00', '130.00');
INSERT INTO `order_item` VALUES ('113', '43', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('114', '43', '10', '2', '4', '1', '15.00', '0.00');
INSERT INTO `order_item` VALUES ('115', '44', '6', '5', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('116', '44', '10', '13', '1', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('117', '44', '12', '12', '7', '1', '19.80', '0.00');
INSERT INTO `order_item` VALUES ('118', '45', '8', '6', '1', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('120', '45', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('121', '45', '12', '12', '7', '1', '0.80', '19.00');
INSERT INTO `order_item` VALUES ('122', '46', '6', '6', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('123', '46', '10', '13', '1', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('124', '46', '12', '12', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('125', '47', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('126', '47', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('127', '48', '6', '6', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('128', '48', '12', '12', '7', '1', '4.80', '15.00');
INSERT INTO `order_item` VALUES ('129', '48', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('130', '49', '8', '5', '1', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('132', '51', '6', '4', '1', '1', '17.00', '152.00');
INSERT INTO `order_item` VALUES ('133', '51', '6', '5', '1', '1', '17.00', '152.00');
INSERT INTO `order_item` VALUES ('134', '51', '6', '6', '1', '1', '17.00', '152.00');
INSERT INTO `order_item` VALUES ('135', '52', '8', '2', '4', '1', '12.00', '218.00');
INSERT INTO `order_item` VALUES ('136', '53', '6', '8', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('137', '56', '6', '9', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('138', '56', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('139', '57', '6', '5', '1', '1', '39.00', '130.00');
INSERT INTO `order_item` VALUES ('140', '57', '6', '3', '1', '1', '39.00', '130.00');
INSERT INTO `order_item` VALUES ('141', '57', '8', '6', '4', '1', '40.00', '190.00');
INSERT INTO `order_item` VALUES ('142', '57', '14', '13', '7', '1', '0.00', '10.00');
INSERT INTO `order_item` VALUES ('143', '58', '8', '6', '1', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('144', '59', '6', '6', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('145', '59', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('146', '57', '12', '12', '7', '10', '68.00', '130.00');
INSERT INTO `order_item` VALUES ('148', '63', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('149', '63', '8', '3', '8', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('150', '64', '6', '6', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('151', '65', '6', '6', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('152', '65', '6', '7', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('153', '66', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('154', '66', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('155', '67', '8', '2', '4', '1', '230.00', '0.00');
INSERT INTO `order_item` VALUES ('156', '70', '6', '3', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('157', '70', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('158', '71', '6', '5', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('159', '71', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('160', '72', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('161', '73', '6', '7', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('162', '73', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('163', '74', '6', '3', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('164', '74', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('165', '75', '8', '2', '1', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('166', '76', '6', '8', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('167', '77', '8', '2', '4', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('168', '77', '14', '13', '7', '1', '0.00', '10.00');
INSERT INTO `order_item` VALUES ('169', '78', '6', '6', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('170', '78', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('171', '79', '8', '8', '4', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('172', '79', '10', '13', '4', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('174', '79', '12', '12', '7', '1', '4.80', '15.00');
INSERT INTO `order_item` VALUES ('175', '79', '13', '13', '7', '1', '1.00', '5.00');
INSERT INTO `order_item` VALUES ('176', '81', '6', '2', '4', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('177', '81', '10', '13', '4', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('178', '81', '12', '13', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('179', '81', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('180', '82', '6', '5', '4', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('181', '83', '6', '9', '4', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('182', '83', '10', '13', '4', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('183', '83', '12', '13', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('186', '83', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('187', '85', '6', '3', '4', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('188', '85', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('194', '88', '6', '3', '4', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('196', '88', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('199', '88', '10', '13', '4', '1', '5.00', '10.00');
INSERT INTO `order_item` VALUES ('200', '88', '12', '13', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('203', '91', '6', '9', '4', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('205', '91', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('207', '91', '12', '13', '7', '1', '4.80', '15.00');
INSERT INTO `order_item` VALUES ('216', '94', '6', '4', '4', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('217', '94', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('218', '95', '6', '5', '4', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('219', '95', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('222', '97', '6', '5', '4', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('223', '97', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('224', '98', '6', '6', '4', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('226', '98', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('227', '98', '12', '13', '7', '1', '4.80', '15.00');
INSERT INTO `order_item` VALUES ('229', '99', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('234', '99', '7', '4', '4', '1', '55.00', '104.00');
INSERT INTO `order_item` VALUES ('235', '100', '6', '3', '4', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('236', '100', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('239', '101', '13', '13', '7', '1', '1.00', '5.00');
INSERT INTO `order_item` VALUES ('245', '102', '6', '5', '4', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('246', '102', '13', '13', '4', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('247', '101', '12', '13', '7', '4', '19.20', '60.00');
INSERT INTO `order_item` VALUES ('248', '104', '6', '6', '4', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('249', '104', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('252', '106', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('253', '106', '6', '2', '4', '1', '65.00', '104.00');
INSERT INTO `order_item` VALUES ('254', '103', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('256', '103', '6', '13', '7', '1', '36.00', '133.00');
INSERT INTO `order_item` VALUES ('258', '107', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('259', '107', '6', '7', '4', '1', '65.00', '104.00');
INSERT INTO `order_item` VALUES ('262', '108', '13', '13', '7', '1', '1.00', '5.00');
INSERT INTO `order_item` VALUES ('264', '108', '12', '13', '7', '4', '19.20', '60.00');
INSERT INTO `order_item` VALUES ('265', '109', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('267', '109', '12', '13', '7', '1', '4.80', '15.00');
INSERT INTO `order_item` VALUES ('268', '109', '7', '5', '7', '1', '22.00', '137.00');
INSERT INTO `order_item` VALUES ('269', '110', '6', '3', '4', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('270', '110', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('272', '111', '7', '6', '7', '1', '0.00', '159.00');
INSERT INTO `order_item` VALUES ('273', '111', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('274', '111', '12', '13', '7', '1', '4.80', '15.00');
INSERT INTO `order_item` VALUES ('275', '112', '6', '3', '4', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('276', '112', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('277', '113', '12', '13', '7', '1', '4.80', '15.00');
INSERT INTO `order_item` VALUES ('279', '113', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('280', '113', '7', '6', '7', '1', '0.00', '159.00');
INSERT INTO `order_item` VALUES ('283', '114', '12', '13', '7', '2', '9.60', '30.00');
INSERT INTO `order_item` VALUES ('284', '114', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('285', '114', '6', '8', '7', '2', '24.00', '314.00');
INSERT INTO `order_item` VALUES ('286', '115', '12', '13', '7', '1', '0.00', '19.80');
INSERT INTO `order_item` VALUES ('287', '115', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('288', '116', '15', '3', '7', '1', '66.00', '54.00');
INSERT INTO `order_item` VALUES ('289', '116', '6', '3', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('290', '116', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('291', '117', '6', '8', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('292', '117', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('293', '117', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('294', '117', '12', '13', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('295', '118', '6', '8', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('296', '118', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('297', '118', '12', '13', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('298', '118', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('299', '119', '8', '8', '1', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('300', '119', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('301', '120', '6', '3', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('302', '120', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('303', '120', '12', '13', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('304', '120', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('306', '121', '7', '6', '1', '2', '58.00', '260.00');
INSERT INTO `order_item` VALUES ('307', '121', '12', '13', '7', '4', '27.20', '52.00');
INSERT INTO `order_item` VALUES ('308', '121', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('309', '122', '12', '13', '7', '4', '19.20', '60.00');
INSERT INTO `order_item` VALUES ('310', '122', '13', '13', '7', '1', '1.00', '5.00');
INSERT INTO `order_item` VALUES ('311', '123', '6', '8', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('312', '123', '10', '13', '4', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('313', '123', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('314', '123', '12', '13', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('315', '124', '8', '6', '8', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('316', '124', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('317', '125', '8', '6', '1', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('318', '125', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('319', '126', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('320', '126', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('321', '127', '7', '6', '1', '1', '0.00', '159.00');
INSERT INTO `order_item` VALUES ('322', '127', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('323', '127', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('324', '127', '17', '13', '4', '1', '4.00', '35.00');
INSERT INTO `order_item` VALUES ('325', '128', '6', '5', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('326', '128', '12', '13', '7', '1', '4.80', '15.00');
INSERT INTO `order_item` VALUES ('327', '129', '8', '8', '1', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('328', '129', '10', '13', '1', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('329', '129', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('331', '129', '12', '13', '7', '1', '10.80', '9.00');
INSERT INTO `order_item` VALUES ('332', '130', '6', '3', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('334', '130', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('335', '130', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('336', '130', '12', '13', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('338', '131', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('339', '131', '6', '6', '1', '1', '5.00', '164.00');
INSERT INTO `order_item` VALUES ('340', '132', '6', '6', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('341', '132', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('347', '141', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('348', '141', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('352', '144', '6', '3', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('353', '144', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('354', '144', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('355', '144', '12', '13', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('357', '146', '12', '13', '7', '2', '19.60', '20.00');
INSERT INTO `order_item` VALUES ('358', '146', '10', '13', '4', '2', '0.00', '30.00');
INSERT INTO `order_item` VALUES ('363', '146', '15', '3', '1', '1', '0.00', '120.00');
INSERT INTO `order_item` VALUES ('364', '146', '6', '3', '1', '2', '48.00', '290.00');
INSERT INTO `order_item` VALUES ('366', '150', '12', '13', '7', '2', '19.60', '20.00');
INSERT INTO `order_item` VALUES ('367', '150', '10', '13', '7', '2', '0.00', '30.00');
INSERT INTO `order_item` VALUES ('368', '150', '15', '13', '7', '1', '0.00', '120.00');
INSERT INTO `order_item` VALUES ('370', '150', '6', '3', '1', '2', '48.00', '290.00');
INSERT INTO `order_item` VALUES ('371', '152', '6', '6', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('372', '152', '6', '5', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('374', '152', '12', '13', '7', '2', '19.60', '20.00');
INSERT INTO `order_item` VALUES ('375', '152', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('376', '152', '10', '13', '4', '2', '4.00', '26.00');
INSERT INTO `order_item` VALUES ('378', '153', '6', '6', '4', '1', '15.00', '154.00');
INSERT INTO `order_item` VALUES ('379', '153', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('380', '154', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('381', '154', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('382', '154', '12', '13', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('383', '154', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('384', '155', '6', '6', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('385', '155', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('387', '155', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('388', '156', '6', '6', '4', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('389', '157', '6', '6', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('390', '157', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('391', '157', '12', '13', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('392', '157', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('393', '158', '6', '6', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('394', '158', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('395', '159', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('396', '159', '10', '13', '1', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('397', '159', '12', '13', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('398', '159', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('399', '160', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('400', '160', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('401', '161', '6', '5', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('402', '161', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('403', '161', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('404', '162', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('406', '162', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('407', '162', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('408', '162', '12', '13', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('409', '163', '8', '2', '1', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('410', '163', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('411', '137', '6', '3', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('412', '140', '6', '2', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('413', '164', '6', '3', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('414', '164', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('415', '165', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('416', '165', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('418', '166', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('419', '166', '6', '2', '1', '1', '25.00', '144.00');
INSERT INTO `order_item` VALUES ('420', '148', '6', '3', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('421', '148', '6', '4', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('422', '148', '6', '6', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('423', '148', '15', '3', '7', '1', '0.00', '120.00');
INSERT INTO `order_item` VALUES ('424', '167', '6', '5', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('425', '167', '6', '9', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('426', '167', '8', '7', '1', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('427', '168', '6', '2', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('428', '168', '6', '5', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('430', '168', '13', '13', '1', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('431', '168', '10', '13', '1', '1', '6.00', '9.00');
INSERT INTO `order_item` VALUES ('433', '170', '8', '8', '4', '1', '36.00', '194.00');
INSERT INTO `order_item` VALUES ('434', '170', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('435', '171', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('436', '171', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('437', '172', '6', '3', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('438', '173', '6', '7', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('439', '173', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('440', '173', '12', '13', '7', '1', '4.80', '15.00');
INSERT INTO `order_item` VALUES ('441', '175', '6', '7', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('442', '175', '12', '13', '7', '1', '4.80', '15.00');
INSERT INTO `order_item` VALUES ('443', '175', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('444', '176', '6', '3', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('445', '176', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('446', '177', '6', '7', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('447', '177', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('448', '177', '12', '13', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('449', '177', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('450', '178', '8', '8', '4', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('451', '178', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('453', '179', '6', '5', '1', '2', '0.00', '338.00');
INSERT INTO `order_item` VALUES ('454', '179', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('455', '180', '6', '9', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('456', '180', '12', '13', '7', '1', '4.80', '15.00');
INSERT INTO `order_item` VALUES ('457', '181', '6', '5', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('458', '181', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('459', '182', '6', '2', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('460', '183', '6', '3', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('461', '184', '6', '3', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('465', '186', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('466', '187', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('467', '190', '8', '3', '4', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('469', '192', '6', '2', '1', '1', '59.00', '110.00');
INSERT INTO `order_item` VALUES ('470', '192', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('472', '193', '6', '3', '1', '1', '19.00', '150.00');
INSERT INTO `order_item` VALUES ('473', '194', '8', '3', '1', '2', '0.00', '460.00');
INSERT INTO `order_item` VALUES ('474', '196', '8', '6', '4', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('475', '197', '6', '4', '4', '2', '0.00', '338.00');
INSERT INTO `order_item` VALUES ('476', '197', '8', '2', '4', '2', '0.00', '460.00');
INSERT INTO `order_item` VALUES ('477', '199', '6', '7', '4', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('478', '199', '10', '13', '1', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('479', '199', '10', '13', '1', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('480', '199', '12', '13', '1', '1', '0.00', '19.80');
INSERT INTO `order_item` VALUES ('481', '200', '6', '4', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('482', '201', '6', '8', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('483', '203', '11', '13', '7', '1', '0.00', '356.00');
INSERT INTO `order_item` VALUES ('484', '205', '6', '8', '7', '1', '4.00', '165.00');
INSERT INTO `order_item` VALUES ('485', '207', '6', '6', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('486', '207', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('487', '207', '12', '13', '7', '1', '0.00', '19.80');
INSERT INTO `order_item` VALUES ('488', '208', '6', '6', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('489', '208', '10', '13', '1', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('490', '208', '12', '13', '1', '1', '0.00', '19.80');
INSERT INTO `order_item` VALUES ('491', '209', '6', '6', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('492', '210', '6', '6', '7', '2', '0.00', '338.00');
INSERT INTO `order_item` VALUES ('493', '211', '6', '5', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('494', '211', '6', '6', '7', '2', '0.00', '338.00');
INSERT INTO `order_item` VALUES ('495', '211', '6', '9', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('496', '212', '6', '5', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('497', '212', '8', '5', '1', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('498', '213', '16', '3', '1', '1', '0.00', '68.00');
INSERT INTO `order_item` VALUES ('499', '214', '6', '6', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('500', '214', '6', '9', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('501', '214', '6', '8', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('503', '214', '10', '13', '7', '2', '7.00', '23.00');
INSERT INTO `order_item` VALUES ('504', '215', '6', '5', '1', '1', '3.80', '165.20');
INSERT INTO `order_item` VALUES ('505', '215', '10', '13', '1', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('506', '215', '12', '13', '1', '1', '0.00', '19.80');
INSERT INTO `order_item` VALUES ('507', '216', '8', '4', '1', '2', '0.00', '460.00');
INSERT INTO `order_item` VALUES ('508', '216', '16', '4', '4', '1', '158.00', '-90.00');
INSERT INTO `order_item` VALUES ('509', '217', '8', '4', '4', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('510', '218', '6', '6', '1', '1', '3.80', '165.20');
INSERT INTO `order_item` VALUES ('511', '218', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('512', '218', '12', '13', '7', '1', '0.00', '19.80');
INSERT INTO `order_item` VALUES ('513', '219', '6', '6', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('514', '219', '8', '6', '7', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('516', '219', '10', '13', '1', '2', '0.00', '30.00');
INSERT INTO `order_item` VALUES ('517', '220', '8', '3', '4', '2', '0.00', '460.00');
INSERT INTO `order_item` VALUES ('518', '220', '8', '3', '7', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('519', '220', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('520', '220', '12', '13', '7', '1', '35.00', '-15.20');
INSERT INTO `order_item` VALUES ('521', '221', '6', '5', '1', '1', '3.80', '165.20');
INSERT INTO `order_item` VALUES ('522', '221', '10', '13', '1', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('523', '221', '12', '13', '1', '1', '0.00', '19.80');
INSERT INTO `order_item` VALUES ('525', '222', '6', '2', '1', '1', '53.00', '116.00');
INSERT INTO `order_item` VALUES ('526', '223', '6', '6', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('527', '224', '8', '4', '1', '1', '60.00', '170.00');
INSERT INTO `order_item` VALUES ('529', '225', '10', '13', '4', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('532', '225', '6', '4', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('533', '226', '6', '3', '1', '2', '0.00', '338.00');
INSERT INTO `order_item` VALUES ('534', '226', '6', '4', '1', '3', '0.00', '507.00');
INSERT INTO `order_item` VALUES ('535', '226', '6', '5', '1', '3', '0.00', '507.00');
INSERT INTO `order_item` VALUES ('536', '226', '6', '6', '1', '2', '0.00', '338.00');
INSERT INTO `order_item` VALUES ('537', '227', '6', '7', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('538', '227', '12', '13', '1', '2', '0.00', '39.60');
INSERT INTO `order_item` VALUES ('539', '228', '6', '8', '1', '2', '0.00', '338.00');
INSERT INTO `order_item` VALUES ('540', '229', '6', '9', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('541', '230', '6', '5', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('542', '230', '6', '6', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('543', '230', '6', '7', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('544', '230', '6', '9', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('545', '230', '8', '3', '1', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('547', '233', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('548', '234', '6', '5', '1', '1', '19.00', '150.00');
INSERT INTO `order_item` VALUES ('549', '235', '15', '13', '1', '1', '0.00', '120.00');
INSERT INTO `order_item` VALUES ('550', '235', '12', '13', '1', '1', '0.00', '19.80');
INSERT INTO `order_item` VALUES ('553', '236', '6', '2', '7', '1', '53.00', '116.00');
INSERT INTO `order_item` VALUES ('554', '236', '8', '5', '4', '1', '60.00', '170.00');
INSERT INTO `order_item` VALUES ('555', '237', '8', '7', '7', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('556', '238', '6', '5', '7', '1', '9.80', '159.20');
INSERT INTO `order_item` VALUES ('557', '238', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('558', '238', '12', '13', '7', '1', '0.00', '19.80');
INSERT INTO `order_item` VALUES ('559', '238', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('560', '239', '6', '2', '1', '1', '53.00', '116.00');
INSERT INTO `order_item` VALUES ('561', '239', '8', '5', '4', '1', '60.00', '170.00');
INSERT INTO `order_item` VALUES ('563', '242', '6', '6', '7', '3', '0.00', '507.00');
INSERT INTO `order_item` VALUES ('564', '242', '6', '7', '7', '2', '0.00', '338.00');
INSERT INTO `order_item` VALUES ('565', '242', '6', '9', '7', '1', '53.00', '116.00');
INSERT INTO `order_item` VALUES ('566', '243', '8', '6', '1', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('567', '244', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('568', '244', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('569', '247', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('570', '248', '12', '13', '7', '6', '0.00', '118.80');
INSERT INTO `order_item` VALUES ('571', '248', '10', '13', '7', '6', '0.00', '90.00');
INSERT INTO `order_item` VALUES ('572', '249', '6', '6', '7', '1', '53.00', '116.00');
INSERT INTO `order_item` VALUES ('573', '250', '10', '13', '4', '10', '0.00', '150.00');
INSERT INTO `order_item` VALUES ('574', '251', '6', '2', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('575', '252', '6', '2', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('577', '254', '6', '4', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('578', '255', '6', '9', '7', '3', '0.00', '507.00');
INSERT INTO `order_item` VALUES ('579', '256', '8', '4', '1', '2', '0.00', '460.00');
INSERT INTO `order_item` VALUES ('580', '256', '8', '7', '1', '2', '0.00', '460.00');
INSERT INTO `order_item` VALUES ('581', '257', '8', '2', '8', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('582', '258', '6', '3', '1', '1', '23.80', '145.20');
INSERT INTO `order_item` VALUES ('583', '258', '10', '13', '1', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('584', '258', '12', '13', '1', '1', '0.00', '19.80');
INSERT INTO `order_item` VALUES ('586', '259', '12', '12', '1', '4', '14.20', '65.00');
INSERT INTO `order_item` VALUES ('587', '260', '8', '2', '1', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('589', '253', '6', '4', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('590', '262', '6', '2', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('591', '264', '6', '5', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('592', '264', '10', '13', '1', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('593', '265', '6', '5', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('594', '265', '12', '13', '7', '2', '0.00', '39.60');
INSERT INTO `order_item` VALUES ('595', '266', '8', '7', '4', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('596', '268', '6', '5', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('597', '268', '6', '9', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('598', '269', '8', '6', '7', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('600', '269', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('602', '270', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('603', '270', '12', '13', '7', '1', '0.00', '19.80');
INSERT INTO `order_item` VALUES ('604', '270', '6', '3', '7', '1', '3.80', '165.20');
INSERT INTO `order_item` VALUES ('605', '271', '6', '4', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('606', '271', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('607', '272', '6', '5', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('608', '272', '12', '13', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('609', '272', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('610', '272', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('611', '273', '6', '3', '4', '1', '49.00', '120.00');
INSERT INTO `order_item` VALUES ('612', '274', '6', '4', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('613', '274', '10', '4', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('614', '274', '12', '13', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('615', '274', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('616', '275', '6', '4', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('617', '276', '7', '4', '7', '1', '49.00', '110.00');
INSERT INTO `order_item` VALUES ('618', '276', '7', '5', '7', '1', '49.00', '110.00');
INSERT INTO `order_item` VALUES ('620', '277', '12', '12', '7', '2', '0.00', '39.60');
INSERT INTO `order_item` VALUES ('621', '278', '6', '5', '7', '2', '0.00', '338.00');
INSERT INTO `order_item` VALUES ('622', '278', '12', '13', '7', '1', '0.00', '19.80');
INSERT INTO `order_item` VALUES ('623', '280', '12', '13', '7', '4', '14.20', '65.00');
INSERT INTO `order_item` VALUES ('624', '281', '7', '4', '7', '1', '0.00', '159.00');
INSERT INTO `order_item` VALUES ('625', '283', '8', '3', '8', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('626', '284', '6', '9', '1', '1', '3.80', '165.20');
INSERT INTO `order_item` VALUES ('627', '284', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('628', '284', '12', '13', '7', '1', '0.00', '19.80');
INSERT INTO `order_item` VALUES ('629', '285', '6', '4', '7', '2', '8.00', '330.00');
INSERT INTO `order_item` VALUES ('630', '286', '6', '2', '7', '1', '19.00', '150.00');
INSERT INTO `order_item` VALUES ('631', '288', '6', '5', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('632', '288', '6', '6', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('633', '289', '6', '4', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('634', '289', '7', '4', '7', '1', '0.00', '159.00');
INSERT INTO `order_item` VALUES ('635', '290', '6', '6', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('636', '291', '6', '6', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('637', '293', '6', '7', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('638', '293', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('639', '293', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('640', '294', '6', '7', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('643', '295', '6', '7', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('644', '296', '6', '3', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('645', '297', '6', '9', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('646', '297', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('647', '298', '6', '4', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('648', '299', '6', '5', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('649', '300', '6', '4', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('651', '301', '6', '4', '7', '2', '0.00', '338.00');
INSERT INTO `order_item` VALUES ('652', '301', '6', '6', '7', '3', '0.00', '507.00');
INSERT INTO `order_item` VALUES ('653', '301', '6', '7', '7', '2', '0.00', '338.00');
INSERT INTO `order_item` VALUES ('654', '301', '6', '8', '7', '2', '0.00', '338.00');
INSERT INTO `order_item` VALUES ('655', '301', '6', '9', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('656', '302', '6', '5', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('657', '304', '16', '13', '7', '1', '18.00', '50.00');
INSERT INTO `order_item` VALUES ('658', '306', '6', '5', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('659', '306', '12', '13', '7', '3', '0.00', '59.40');
INSERT INTO `order_item` VALUES ('660', '307', '6', '4', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('662', '307', '12', '13', '7', '3', '0.00', '59.40');
INSERT INTO `order_item` VALUES ('663', '308', '6', '4', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('664', '309', '6', '8', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('665', '310', '6', '9', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('666', '311', '6', '4', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('667', '312', '6', '4', '7', '1', '19.00', '150.00');
INSERT INTO `order_item` VALUES ('668', '313', '6', '6', '7', '1', '19.00', '150.00');
INSERT INTO `order_item` VALUES ('669', '314', '6', '3', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('670', '315', '12', '13', '7', '8', '28.40', '130.00');
INSERT INTO `order_item` VALUES ('671', '316', '12', '13', '7', '3', '0.00', '59.40');
INSERT INTO `order_item` VALUES ('672', '316', '17', '2', '4', '1', '0.00', '39.00');
INSERT INTO `order_item` VALUES ('673', '317', '8', '4', '1', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('674', '318', '6', '9', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('675', '318', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('676', '318', '12', '13', '7', '1', '0.00', '19.80');
INSERT INTO `order_item` VALUES ('677', '319', '6', '9', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('678', '320', '6', '4', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('679', '320', '6', '6', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('680', '321', '6', '7', '7', '2', '0.00', '338.00');
INSERT INTO `order_item` VALUES ('681', '321', '6', '6', '7', '2', '0.00', '338.00');
INSERT INTO `order_item` VALUES ('682', '321', '6', '8', '7', '2', '0.00', '338.00');
INSERT INTO `order_item` VALUES ('683', '321', '6', '9', '7', '2', '0.00', '338.00');
INSERT INTO `order_item` VALUES ('684', '322', '6', '9', '7', '2', '0.00', '338.00');
INSERT INTO `order_item` VALUES ('685', '322', '12', '13', '7', '6', '0.00', '118.80');
INSERT INTO `order_item` VALUES ('686', '322', '10', '13', '7', '6', '0.00', '90.00');
INSERT INTO `order_item` VALUES ('687', '323', '6', '9', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('689', '324', '6', '7', '7', '1', '3.80', '165.20');
INSERT INTO `order_item` VALUES ('690', '324', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('691', '324', '12', '13', '7', '1', '0.00', '19.80');
INSERT INTO `order_item` VALUES ('692', '325', '12', '13', '7', '4', '14.20', '65.00');
INSERT INTO `order_item` VALUES ('693', '326', '6', '4', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('694', '326', '8', '4', '4', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('695', '327', '6', '4', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('696', '329', '7', '6', '7', '1', '0.00', '159.00');
INSERT INTO `order_item` VALUES ('697', '330', '6', '6', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('698', '331', '6', '6', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('700', '332', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('701', '332', '12', '13', '7', '1', '0.80', '19.00');
INSERT INTO `order_item` VALUES ('702', '334', '6', '4', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('703', '335', '6', '4', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('704', '336', '6', '6', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('705', '337', '6', '5', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('706', '338', '6', '4', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('707', '339', '6', '5', '7', '1', '3.80', '165.20');
INSERT INTO `order_item` VALUES ('708', '339', '12', '13', '7', '1', '0.00', '19.80');
INSERT INTO `order_item` VALUES ('709', '339', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('710', '340', '6', '6', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('711', '341', '17', '4', '7', '1', '0.00', '39.00');
INSERT INTO `order_item` VALUES ('712', '341', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('713', '342', '6', '7', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('714', '343', '6', '8', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('715', '344', '6', '6', '7', '3', '0.00', '507.00');
INSERT INTO `order_item` VALUES ('716', '344', '6', '8', '7', '2', '0.00', '338.00');
INSERT INTO `order_item` VALUES ('717', '344', '6', '7', '7', '3', '0.00', '507.00');
INSERT INTO `order_item` VALUES ('718', '344', '6', '9', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('719', '344', '17', '4', '7', '4', '0.00', '156.00');
INSERT INTO `order_item` VALUES ('720', '345', '6', '6', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('721', '345', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('722', '346', '12', '13', '7', '4', '20.20', '59.00');
INSERT INTO `order_item` VALUES ('723', '346', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('724', '347', '17', '4', '7', '1', '0.00', '39.00');
INSERT INTO `order_item` VALUES ('725', '347', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('726', '348', '6', '4', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('727', '348', '12', '13', '7', '1', '9.80', '10.00');
INSERT INTO `order_item` VALUES ('728', '348', '10', '13', '7', '1', '0.00', '15.00');
INSERT INTO `order_item` VALUES ('729', '348', '13', '13', '7', '1', '0.00', '6.00');
INSERT INTO `order_item` VALUES ('730', '349', '6', '6', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('731', '349', '12', '13', '7', '1', '0.00', '19.80');
INSERT INTO `order_item` VALUES ('732', '350', '6', '8', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('733', '351', '17', '2', '7', '1', '0.00', '39.00');
INSERT INTO `order_item` VALUES ('734', '352', '6', '9', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('735', '354', '6', '8', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('736', '356', '6', '8', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('737', '357', '6', '7', '7', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('740', '359', '8', '2', '1', '1', '0.00', '230.00');
INSERT INTO `order_item` VALUES ('742', '361', '6', '8', '1', '1', '0.00', '169.00');
INSERT INTO `order_item` VALUES ('743', '362', '17', '4', '7', '1', '0.00', '39.00');

-- ----------------------------
-- Table structure for `order_my`
-- ----------------------------
DROP TABLE IF EXISTS `order_my`;
CREATE TABLE `order_my` (
  `order_my_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_order` datetime NOT NULL,
  `method_order_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `order_type_id` int(11) NOT NULL,
  `order_status` int(1) NOT NULL,
  PRIMARY KEY (`order_my_id`)
) ENGINE=InnoDB AUTO_INCREMENT=363 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_my
-- ----------------------------
INSERT INTO `order_my` VALUES ('1', '2012-12-01 00:00:00', '5', '67', '1', '0');
INSERT INTO `order_my` VALUES ('2', '2012-12-01 00:00:00', '1', '68', '1', '0');
INSERT INTO `order_my` VALUES ('3', '2012-12-03 00:00:00', '1', '69', '1', '0');
INSERT INTO `order_my` VALUES ('4', '2012-12-03 00:00:00', '1', '70', '1', '0');
INSERT INTO `order_my` VALUES ('5', '2012-12-04 00:00:00', '1', '71', '1', '0');
INSERT INTO `order_my` VALUES ('6', '2012-12-05 00:00:00', '1', '72', '1', '0');
INSERT INTO `order_my` VALUES ('7', '2012-12-05 00:00:00', '1', '73', '1', '0');
INSERT INTO `order_my` VALUES ('8', '2012-12-05 00:00:00', '1', '74', '1', '0');
INSERT INTO `order_my` VALUES ('9', '2012-12-07 00:00:00', '1', '75', '1', '0');
INSERT INTO `order_my` VALUES ('10', '2012-12-08 00:00:00', '1', '76', '1', '0');
INSERT INTO `order_my` VALUES ('11', '2012-12-08 00:00:00', '1', '77', '1', '0');
INSERT INTO `order_my` VALUES ('12', '2012-12-09 00:00:00', '1', '78', '1', '0');
INSERT INTO `order_my` VALUES ('14', '2012-12-05 13:10:20', '1', '6', '1', '1');
INSERT INTO `order_my` VALUES ('15', '2012-12-09 00:00:00', '1', '79', '1', '0');
INSERT INTO `order_my` VALUES ('16', '2012-12-10 00:00:00', '1', '80', '1', '0');
INSERT INTO `order_my` VALUES ('17', '2012-12-10 00:00:00', '5', '81', '1', '0');
INSERT INTO `order_my` VALUES ('18', '2012-12-11 14:34:00', '1', '82', '1', '0');
INSERT INTO `order_my` VALUES ('19', '2012-12-11 14:00:00', '1', '83', '1', '0');
INSERT INTO `order_my` VALUES ('20', '2012-12-11 17:00:00', '1', '84', '1', '0');
INSERT INTO `order_my` VALUES ('21', '2012-12-10 00:00:00', '2', '85', '2', '1');
INSERT INTO `order_my` VALUES ('22', '2012-12-12 00:00:00', '1', '86', '1', '0');
INSERT INTO `order_my` VALUES ('23', '2012-12-17 00:00:00', '1', '87', '1', '0');
INSERT INTO `order_my` VALUES ('24', '2012-12-16 00:00:00', '1', '88', '1', '0');
INSERT INTO `order_my` VALUES ('25', '2012-12-17 00:00:00', '1', '89', '1', '0');
INSERT INTO `order_my` VALUES ('26', '2012-12-18 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('27', '2012-12-18 00:00:00', '1', '90', '1', '0');
INSERT INTO `order_my` VALUES ('29', '2012-12-18 00:00:00', '1', '92', '1', '0');
INSERT INTO `order_my` VALUES ('30', '2012-12-19 00:00:00', '1', '93', '1', '0');
INSERT INTO `order_my` VALUES ('31', '2012-12-13 00:00:00', '4', '94', '1', '0');
INSERT INTO `order_my` VALUES ('33', '2012-12-19 00:00:00', '1', '96', '1', '0');
INSERT INTO `order_my` VALUES ('34', '2012-12-18 00:00:00', '1', '97', '1', '0');
INSERT INTO `order_my` VALUES ('35', '2012-12-18 00:00:00', '1', '98', '1', '0');
INSERT INTO `order_my` VALUES ('36', '2012-12-17 00:00:00', '1', '99', '1', '0');
INSERT INTO `order_my` VALUES ('37', '2012-12-19 00:00:00', '1', '100', '1', '0');
INSERT INTO `order_my` VALUES ('38', '2012-12-20 00:00:00', '1', '101', '1', '0');
INSERT INTO `order_my` VALUES ('39', '2012-12-20 00:00:00', '1', '102', '1', '0');
INSERT INTO `order_my` VALUES ('40', '2012-12-22 00:00:00', '1', '103', '1', '0');
INSERT INTO `order_my` VALUES ('41', '2012-12-21 00:00:00', '1', '104', '1', '0');
INSERT INTO `order_my` VALUES ('42', '2012-12-27 00:00:00', '1', '105', '2', '0');
INSERT INTO `order_my` VALUES ('43', '2012-12-27 00:00:00', '1', '105', '2', '0');
INSERT INTO `order_my` VALUES ('44', '2012-12-27 00:00:00', '1', '106', '1', '0');
INSERT INTO `order_my` VALUES ('45', '2012-12-27 00:00:00', '1', '107', '1', '0');
INSERT INTO `order_my` VALUES ('46', '2012-12-23 00:00:00', '1', '108', '1', '0');
INSERT INTO `order_my` VALUES ('47', '2012-12-30 00:26:15', '1', '109', '1', '0');
INSERT INTO `order_my` VALUES ('48', '2012-12-26 00:00:00', '5', '110', '1', '0');
INSERT INTO `order_my` VALUES ('49', '2012-12-31 00:00:00', '1', '111', '1', '0');
INSERT INTO `order_my` VALUES ('50', '2012-12-31 00:00:00', '1', '112', '1', '1');
INSERT INTO `order_my` VALUES ('51', '2012-12-31 00:00:00', '1', '113', '1', '0');
INSERT INTO `order_my` VALUES ('52', '2012-12-31 16:00:15', '1', '114', '1', '0');
INSERT INTO `order_my` VALUES ('53', '2012-12-31 11:00:00', '1', '115', '1', '0');
INSERT INTO `order_my` VALUES ('56', '2013-01-03 11:00:00', '1', '118', '1', '1');
INSERT INTO `order_my` VALUES ('57', '2013-01-04 17:00:00', '1', '96', '1', '1');
INSERT INTO `order_my` VALUES ('58', '2013-01-03 15:25:00', '3', '119', '1', '1');
INSERT INTO `order_my` VALUES ('59', '2013-01-04 10:00:00', '1', '120', '1', '1');
INSERT INTO `order_my` VALUES ('60', '2013-01-02 00:00:00', '1', '121', '1', '1');
INSERT INTO `order_my` VALUES ('61', '2013-01-07 00:00:00', '1', '122', '1', '1');
INSERT INTO `order_my` VALUES ('62', '2013-01-07 00:00:00', '1', '111', '1', '1');
INSERT INTO `order_my` VALUES ('63', '2013-01-22 21:26:00', '1', '123', '1', '1');
INSERT INTO `order_my` VALUES ('64', '2013-01-25 00:00:00', '1', '124', '1', '1');
INSERT INTO `order_my` VALUES ('65', '2013-01-23 00:00:00', '1', '125', '1', '1');
INSERT INTO `order_my` VALUES ('66', '2013-01-23 00:00:00', '1', '126', '1', '1');
INSERT INTO `order_my` VALUES ('67', '2013-01-26 00:00:00', '1', '127', '1', '1');
INSERT INTO `order_my` VALUES ('68', '2013-01-08 00:00:00', '1', '128', '1', '1');
INSERT INTO `order_my` VALUES ('69', '2013-01-09 00:00:00', '1', '129', '1', '1');
INSERT INTO `order_my` VALUES ('70', '2013-01-12 00:00:00', '1', '130', '1', '1');
INSERT INTO `order_my` VALUES ('71', '2013-01-15 00:00:00', '1', '131', '1', '1');
INSERT INTO `order_my` VALUES ('72', '2013-01-16 00:00:00', '1', '132', '1', '1');
INSERT INTO `order_my` VALUES ('73', '2013-01-15 00:00:00', '1', '133', '1', '1');
INSERT INTO `order_my` VALUES ('74', '2013-01-15 00:00:00', '1', '134', '1', '1');
INSERT INTO `order_my` VALUES ('75', '2013-01-17 00:00:00', '1', '134', '1', '1');
INSERT INTO `order_my` VALUES ('76', '2013-01-20 00:00:00', '1', '135', '1', '1');
INSERT INTO `order_my` VALUES ('77', '2013-01-21 00:00:00', '1', '136', '1', '1');
INSERT INTO `order_my` VALUES ('78', '2013-01-21 00:00:00', '1', '137', '1', '1');
INSERT INTO `order_my` VALUES ('79', '2013-02-18 00:00:00', '1', '138', '1', '1');
INSERT INTO `order_my` VALUES ('80', '2013-02-18 00:00:00', '1', '139', '1', '1');
INSERT INTO `order_my` VALUES ('81', '2013-02-08 00:00:00', '1', '142', '1', '1');
INSERT INTO `order_my` VALUES ('82', '2013-02-17 00:00:00', '1', '143', '1', '1');
INSERT INTO `order_my` VALUES ('83', '2013-02-18 00:00:00', '1', '144', '1', '1');
INSERT INTO `order_my` VALUES ('84', '2013-02-18 00:00:00', '1', '138', '1', '1');
INSERT INTO `order_my` VALUES ('85', '2013-02-18 00:00:00', '1', '145', '1', '1');
INSERT INTO `order_my` VALUES ('88', '2013-02-20 00:00:00', '1', '148', '1', '1');
INSERT INTO `order_my` VALUES ('91', '2013-02-20 00:00:00', '1', '147', '1', '1');
INSERT INTO `order_my` VALUES ('94', '2013-02-20 00:00:00', '1', '146', '1', '1');
INSERT INTO `order_my` VALUES ('95', '2013-02-21 00:00:00', '1', '6', '1', '1');
INSERT INTO `order_my` VALUES ('97', '2013-02-21 00:00:00', '1', '150', '1', '1');
INSERT INTO `order_my` VALUES ('98', '2013-02-21 00:00:00', '1', '149', '1', '1');
INSERT INTO `order_my` VALUES ('99', '2013-02-21 00:00:00', '1', '6', '1', '1');
INSERT INTO `order_my` VALUES ('100', '2013-02-23 00:00:00', '1', '151', '1', '1');
INSERT INTO `order_my` VALUES ('101', '2013-02-23 00:00:00', '1', '152', '1', '1');
INSERT INTO `order_my` VALUES ('102', '2013-02-23 00:00:00', '1', '153', '1', '1');
INSERT INTO `order_my` VALUES ('103', '2013-02-25 00:00:00', '1', '154', '1', '1');
INSERT INTO `order_my` VALUES ('104', '2013-02-25 00:00:00', '1', '155', '1', '1');
INSERT INTO `order_my` VALUES ('106', '2013-02-25 00:00:00', '1', '156', '1', '1');
INSERT INTO `order_my` VALUES ('107', '2013-02-25 00:00:00', '1', '157', '1', '1');
INSERT INTO `order_my` VALUES ('108', '2013-02-26 00:00:00', '1', '158', '1', '1');
INSERT INTO `order_my` VALUES ('109', '2013-02-26 00:00:00', '1', '159', '1', '1');
INSERT INTO `order_my` VALUES ('110', '2013-03-27 00:00:00', '1', '160', '1', '1');
INSERT INTO `order_my` VALUES ('111', '2013-03-27 00:00:00', '1', '161', '1', '1');
INSERT INTO `order_my` VALUES ('112', '2013-02-27 00:00:00', '1', '162', '1', '1');
INSERT INTO `order_my` VALUES ('113', '2013-02-27 00:00:00', '1', '163', '1', '1');
INSERT INTO `order_my` VALUES ('114', '2013-02-27 00:00:00', '1', '164', '1', '1');
INSERT INTO `order_my` VALUES ('115', '2013-02-28 00:00:00', '1', '165', '1', '1');
INSERT INTO `order_my` VALUES ('116', '2013-03-03 00:00:00', '1', '166', '1', '1');
INSERT INTO `order_my` VALUES ('117', '2013-03-03 00:00:00', '1', '167', '1', '1');
INSERT INTO `order_my` VALUES ('118', '2013-03-03 00:00:00', '1', '168', '1', '1');
INSERT INTO `order_my` VALUES ('119', '2013-03-04 00:00:00', '1', '169', '1', '1');
INSERT INTO `order_my` VALUES ('120', '2013-03-06 12:22:05', '1', '170', '1', '1');
INSERT INTO `order_my` VALUES ('121', '2013-03-06 15:20:55', '1', '171', '1', '1');
INSERT INTO `order_my` VALUES ('122', '2013-03-06 00:00:00', '1', '172', '1', '1');
INSERT INTO `order_my` VALUES ('123', '2013-03-07 16:11:15', '1', '173', '1', '1');
INSERT INTO `order_my` VALUES ('124', '2013-03-09 11:14:15', '1', '174', '1', '1');
INSERT INTO `order_my` VALUES ('125', '2013-03-10 00:00:00', '1', '175', '1', '1');
INSERT INTO `order_my` VALUES ('126', '2013-03-11 15:13:30', '1', '176', '1', '1');
INSERT INTO `order_my` VALUES ('127', '2013-03-11 15:18:50', '1', '177', '1', '1');
INSERT INTO `order_my` VALUES ('128', '2013-03-10 00:00:00', '1', '178', '1', '1');
INSERT INTO `order_my` VALUES ('129', '2013-03-12 13:25:55', '1', '179', '1', '1');
INSERT INTO `order_my` VALUES ('130', '2013-03-12 14:00:45', '1', '180', '1', '1');
INSERT INTO `order_my` VALUES ('131', '2013-03-12 14:08:15', '1', '181', '1', '1');
INSERT INTO `order_my` VALUES ('132', '2013-03-12 14:14:35', '1', '182', '1', '1');
INSERT INTO `order_my` VALUES ('137', '2013-03-12 00:00:00', '1', '166', '1', '1');
INSERT INTO `order_my` VALUES ('140', '2013-03-12 00:00:00', '1', '162', '1', '1');
INSERT INTO `order_my` VALUES ('141', '2013-03-12 15:56:05', '1', '148', '1', '1');
INSERT INTO `order_my` VALUES ('144', '2013-03-12 16:13:15', '1', '187', '1', '1');
INSERT INTO `order_my` VALUES ('146', '2013-03-13 12:21:35', '1', '188', '1', '0');
INSERT INTO `order_my` VALUES ('148', '2013-03-12 00:00:00', '1', '18', '1', '1');
INSERT INTO `order_my` VALUES ('150', '2013-03-13 13:30:55', '1', '188', '1', '1');
INSERT INTO `order_my` VALUES ('151', '2013-03-13 00:00:00', '1', '18', '1', '1');
INSERT INTO `order_my` VALUES ('152', '2013-03-14 15:40:35', '1', '189', '1', '1');
INSERT INTO `order_my` VALUES ('153', '2013-03-14 15:54:20', '1', '190', '1', '1');
INSERT INTO `order_my` VALUES ('154', '2013-03-14 16:30:25', '1', '191', '1', '1');
INSERT INTO `order_my` VALUES ('155', '2013-03-14 00:00:00', '1', '192', '1', '1');
INSERT INTO `order_my` VALUES ('156', '2013-03-14 16:43:45', '1', '193', '1', '1');
INSERT INTO `order_my` VALUES ('157', '2013-03-14 16:47:45', '1', '194', '1', '1');
INSERT INTO `order_my` VALUES ('158', '2013-03-16 10:40:05', '1', '195', '1', '1');
INSERT INTO `order_my` VALUES ('159', '2013-03-16 10:55:10', '1', '196', '1', '1');
INSERT INTO `order_my` VALUES ('160', '2013-03-16 10:57:30', '1', '132', '1', '1');
INSERT INTO `order_my` VALUES ('161', '2013-03-16 10:59:50', '1', '197', '1', '1');
INSERT INTO `order_my` VALUES ('162', '2013-03-16 11:02:05', '1', '198', '1', '1');
INSERT INTO `order_my` VALUES ('163', '2013-03-16 11:04:10', '1', '104', '1', '1');
INSERT INTO `order_my` VALUES ('164', '2013-03-11 00:00:00', '1', '6', '1', '1');
INSERT INTO `order_my` VALUES ('165', '2013-03-11 00:00:00', '1', '6', '1', '1');
INSERT INTO `order_my` VALUES ('166', '2013-03-12 00:00:00', '1', '199', '1', '1');
INSERT INTO `order_my` VALUES ('167', '2013-03-18 17:07:25', '1', '18', '1', '1');
INSERT INTO `order_my` VALUES ('168', '2013-03-18 17:11:55', '1', '200', '1', '1');
INSERT INTO `order_my` VALUES ('170', '2013-03-19 00:00:00', '1', '201', '2', '1');
INSERT INTO `order_my` VALUES ('171', '2013-03-19 00:00:00', '1', '202', '1', '1');
INSERT INTO `order_my` VALUES ('172', '2013-03-19 00:00:00', '1', '18', '1', '1');
INSERT INTO `order_my` VALUES ('173', '2013-03-23 00:00:00', '1', '203', '1', '1');
INSERT INTO `order_my` VALUES ('174', '2013-03-23 00:00:00', '1', '18', '1', '1');
INSERT INTO `order_my` VALUES ('175', '2013-03-24 00:00:00', '1', '204', '1', '1');
INSERT INTO `order_my` VALUES ('176', '2013-03-25 00:00:00', '1', '205', '1', '1');
INSERT INTO `order_my` VALUES ('177', '2013-03-25 13:03:00', '1', '206', '1', '1');
INSERT INTO `order_my` VALUES ('178', '2013-03-25 00:00:00', '1', '179', '1', '1');
INSERT INTO `order_my` VALUES ('179', '2013-03-25 00:00:00', '1', '18', '1', '1');
INSERT INTO `order_my` VALUES ('180', '2013-03-23 00:00:00', '1', '207', '1', '1');
INSERT INTO `order_my` VALUES ('181', '2013-03-25 17:47:15', '1', '208', '1', '1');
INSERT INTO `order_my` VALUES ('182', '2013-03-26 12:03:05', '1', '209', '1', '1');
INSERT INTO `order_my` VALUES ('183', '2013-03-26 00:00:00', '1', '6', '2', '1');
INSERT INTO `order_my` VALUES ('184', '2013-03-26 00:00:00', '1', '6', '2', '1');
INSERT INTO `order_my` VALUES ('186', '2013-03-27 11:44:35', '1', '210', '2', '1');
INSERT INTO `order_my` VALUES ('187', '2013-03-27 11:49:50', '1', '210', '2', '1');
INSERT INTO `order_my` VALUES ('188', '2013-03-28 00:00:00', '1', '6', '1', '1');
INSERT INTO `order_my` VALUES ('189', '2013-03-28 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('190', '2013-03-31 15:29:10', '1', '211', '1', '1');
INSERT INTO `order_my` VALUES ('191', '2013-03-31 15:32:45', '1', '212', '1', '1');
INSERT INTO `order_my` VALUES ('192', '2013-03-31 15:35:55', '1', '213', '1', '1');
INSERT INTO `order_my` VALUES ('193', '2013-04-04 00:00:00', '1', '210', '1', '1');
INSERT INTO `order_my` VALUES ('194', '2013-04-04 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('195', '2013-04-04 00:00:00', '1', '210', '1', '1');
INSERT INTO `order_my` VALUES ('196', '2013-04-03 00:00:00', '1', '105', '1', '1');
INSERT INTO `order_my` VALUES ('197', '2013-04-03 00:00:00', '1', '189', '1', '1');
INSERT INTO `order_my` VALUES ('198', '2013-04-03 00:00:00', '1', '105', '1', '1');
INSERT INTO `order_my` VALUES ('199', '2013-04-03 00:00:00', '1', '214', '1', '1');
INSERT INTO `order_my` VALUES ('200', '2013-04-02 00:00:00', '1', '215', '1', '1');
INSERT INTO `order_my` VALUES ('201', '2013-04-02 00:00:00', '1', '216', '1', '1');
INSERT INTO `order_my` VALUES ('202', '2013-04-01 00:00:00', '1', '210', '1', '1');
INSERT INTO `order_my` VALUES ('203', '2013-04-01 00:00:00', '1', '217', '1', '1');
INSERT INTO `order_my` VALUES ('204', '2013-04-01 00:00:00', '1', '210', '1', '1');
INSERT INTO `order_my` VALUES ('205', '2013-04-07 00:00:00', '1', '218', '1', '1');
INSERT INTO `order_my` VALUES ('206', '2013-04-01 00:00:00', '1', '214', '1', '1');
INSERT INTO `order_my` VALUES ('207', '2013-04-08 00:00:00', '1', '219', '1', '1');
INSERT INTO `order_my` VALUES ('208', '2013-04-08 00:00:00', '1', '220', '1', '1');
INSERT INTO `order_my` VALUES ('209', '2013-04-08 00:00:00', '1', '221', '1', '1');
INSERT INTO `order_my` VALUES ('210', '2013-04-08 00:00:00', '1', '222', '1', '1');
INSERT INTO `order_my` VALUES ('211', '2013-04-08 00:00:00', '1', '18', '1', '1');
INSERT INTO `order_my` VALUES ('212', '2013-04-09 00:00:00', '1', '216', '1', '1');
INSERT INTO `order_my` VALUES ('213', '2013-04-14 00:00:00', '1', '223', '1', '1');
INSERT INTO `order_my` VALUES ('214', '2013-04-10 00:00:00', '1', '224', '1', '1');
INSERT INTO `order_my` VALUES ('215', '2013-04-11 00:00:00', '1', '225', '1', '1');
INSERT INTO `order_my` VALUES ('216', '2013-04-11 00:00:00', '1', '18', '1', '1');
INSERT INTO `order_my` VALUES ('217', '2013-04-11 00:00:00', '1', '154', '1', '1');
INSERT INTO `order_my` VALUES ('218', '2013-04-11 00:00:00', '1', '226', '1', '1');
INSERT INTO `order_my` VALUES ('219', '2013-04-13 00:00:00', '1', '227', '1', '1');
INSERT INTO `order_my` VALUES ('220', '2013-04-15 00:00:00', '1', '18', '1', '1');
INSERT INTO `order_my` VALUES ('221', '2013-04-15 00:00:00', '1', '228', '1', '1');
INSERT INTO `order_my` VALUES ('222', '2013-04-16 00:00:00', '1', '229', '1', '1');
INSERT INTO `order_my` VALUES ('223', '2013-04-16 00:00:00', '1', '96', '1', '1');
INSERT INTO `order_my` VALUES ('224', '2013-04-16 00:00:00', '1', '216', '1', '1');
INSERT INTO `order_my` VALUES ('225', '2013-04-16 00:00:00', '1', '230', '1', '1');
INSERT INTO `order_my` VALUES ('226', '2013-04-17 00:00:00', '1', '18', '1', '1');
INSERT INTO `order_my` VALUES ('227', '2013-04-17 00:00:00', '1', '231', '1', '1');
INSERT INTO `order_my` VALUES ('228', '2013-04-17 00:00:00', '1', '224', '1', '1');
INSERT INTO `order_my` VALUES ('229', '2013-04-18 00:00:00', '1', '6', '1', '1');
INSERT INTO `order_my` VALUES ('230', '2013-04-18 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('233', '2013-04-18 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('234', '2013-04-18 00:00:00', '1', '232', '1', '0');
INSERT INTO `order_my` VALUES ('235', '2013-04-18 00:00:00', '1', '233', '1', '1');
INSERT INTO `order_my` VALUES ('236', '2013-04-21 11:11:30', '1', '216', '1', '1');
INSERT INTO `order_my` VALUES ('237', '2013-04-21 00:00:00', '1', '234', '1', '0');
INSERT INTO `order_my` VALUES ('238', '2013-04-21 00:00:00', '1', '235', '1', '1');
INSERT INTO `order_my` VALUES ('239', '2013-04-21 00:00:00', '1', '216', '1', '1');
INSERT INTO `order_my` VALUES ('242', '2013-04-22 00:00:00', '1', '6', '1', '1');
INSERT INTO `order_my` VALUES ('243', '2013-04-23 00:00:00', '1', '71', '1', '1');
INSERT INTO `order_my` VALUES ('244', '2013-04-23 00:00:00', '1', '236', '1', '1');
INSERT INTO `order_my` VALUES ('245', '2013-04-24 00:00:00', '1', '237', '1', '1');
INSERT INTO `order_my` VALUES ('246', '2013-04-24 00:00:00', '1', '230', '1', '1');
INSERT INTO `order_my` VALUES ('247', '2013-04-24 00:00:00', '1', '210', '1', '1');
INSERT INTO `order_my` VALUES ('248', '2013-04-24 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('249', '2013-04-24 00:00:00', '1', '216', '1', '1');
INSERT INTO `order_my` VALUES ('250', '2013-04-25 00:00:00', '1', '6', '1', '1');
INSERT INTO `order_my` VALUES ('251', '2013-04-25 00:00:00', '1', '238', '1', '1');
INSERT INTO `order_my` VALUES ('252', '2013-04-28 00:00:00', '1', '239', '1', '1');
INSERT INTO `order_my` VALUES ('253', '2013-04-28 00:00:00', '1', '210', '1', '1');
INSERT INTO `order_my` VALUES ('254', '2013-04-28 00:00:00', '1', '240', '1', '0');
INSERT INTO `order_my` VALUES ('255', '2013-04-28 00:00:00', '1', '6', '1', '1');
INSERT INTO `order_my` VALUES ('256', '2013-04-28 00:00:00', '1', '18', '1', '1');
INSERT INTO `order_my` VALUES ('257', '2013-04-28 00:00:00', '1', '241', '1', '1');
INSERT INTO `order_my` VALUES ('258', '2013-04-28 00:00:00', '1', '242', '1', '1');
INSERT INTO `order_my` VALUES ('259', '2013-04-28 00:00:00', '1', '243', '1', '1');
INSERT INTO `order_my` VALUES ('260', '2013-04-28 00:00:00', '1', '244', '1', '1');
INSERT INTO `order_my` VALUES ('262', '2013-04-28 00:00:00', '1', '210', '1', '1');
INSERT INTO `order_my` VALUES ('263', '2013-04-28 00:00:00', '1', '245', '1', '1');
INSERT INTO `order_my` VALUES ('264', '2013-04-28 00:00:00', '4', '245', '1', '1');
INSERT INTO `order_my` VALUES ('265', '2013-04-29 00:00:00', '1', '246', '1', '1');
INSERT INTO `order_my` VALUES ('266', '2013-04-29 00:00:00', '1', '247', '1', '1');
INSERT INTO `order_my` VALUES ('268', '2013-04-30 00:00:00', '1', '215', '1', '0');
INSERT INTO `order_my` VALUES ('269', '2013-04-30 00:00:00', '1', '74', '1', '0');
INSERT INTO `order_my` VALUES ('270', '2013-05-02 00:00:00', '1', '248', '1', '1');
INSERT INTO `order_my` VALUES ('271', '2013-05-02 00:00:00', '1', '249', '1', '1');
INSERT INTO `order_my` VALUES ('272', '2013-05-02 15:26:05', '1', '250', '1', '1');
INSERT INTO `order_my` VALUES ('273', '2013-05-02 15:29:10', '1', '8', '1', '1');
INSERT INTO `order_my` VALUES ('274', '2013-05-02 00:00:00', '1', '251', '1', '1');
INSERT INTO `order_my` VALUES ('275', '2013-05-02 15:39:05', '1', '252', '1', '1');
INSERT INTO `order_my` VALUES ('276', '2013-05-06 00:00:00', '1', '6', '1', '1');
INSERT INTO `order_my` VALUES ('277', '2013-05-06 00:00:00', '1', '74', '1', '1');
INSERT INTO `order_my` VALUES ('278', '2013-05-06 00:00:00', '1', '253', '1', '1');
INSERT INTO `order_my` VALUES ('279', '2013-04-28 00:00:00', '1', '210', '1', '1');
INSERT INTO `order_my` VALUES ('280', '2013-05-02 00:00:00', '1', '254', '1', '1');
INSERT INTO `order_my` VALUES ('281', '2013-05-06 00:00:00', '1', '18', '1', '1');
INSERT INTO `order_my` VALUES ('282', '2013-05-06 00:00:00', '1', '255', '1', '1');
INSERT INTO `order_my` VALUES ('283', '2013-05-07 00:00:00', '1', '211', '1', '1');
INSERT INTO `order_my` VALUES ('284', '2013-05-07 00:00:00', '1', '256', '1', '1');
INSERT INTO `order_my` VALUES ('285', '2013-05-07 00:00:00', '1', '257', '1', '1');
INSERT INTO `order_my` VALUES ('286', '2013-05-07 00:00:00', '1', '210', '1', '1');
INSERT INTO `order_my` VALUES ('287', '2013-05-07 00:00:00', '1', '258', '1', '1');
INSERT INTO `order_my` VALUES ('288', '2013-05-07 00:00:00', '1', '259', '1', '1');
INSERT INTO `order_my` VALUES ('289', '2013-05-09 00:00:00', '1', '260', '1', '1');
INSERT INTO `order_my` VALUES ('290', '2013-05-09 00:00:00', '1', '261', '1', '1');
INSERT INTO `order_my` VALUES ('291', '2013-05-09 00:00:00', '1', '242', '1', '1');
INSERT INTO `order_my` VALUES ('292', '2013-05-09 00:00:00', '1', '232', '1', '1');
INSERT INTO `order_my` VALUES ('293', '2013-05-09 00:00:00', '1', '262', '1', '1');
INSERT INTO `order_my` VALUES ('294', '2013-05-09 00:00:00', '1', '259', '1', '1');
INSERT INTO `order_my` VALUES ('295', '2013-05-09 00:00:00', '1', '263', '1', '1');
INSERT INTO `order_my` VALUES ('296', '2013-05-09 00:00:00', '1', '210', '1', '1');
INSERT INTO `order_my` VALUES ('297', '2013-05-09 00:00:00', '1', '264', '1', '1');
INSERT INTO `order_my` VALUES ('298', '2013-05-09 00:00:00', '1', '265', '1', '1');
INSERT INTO `order_my` VALUES ('299', '2013-05-13 00:00:00', '1', '266', '1', '1');
INSERT INTO `order_my` VALUES ('300', '2013-05-13 00:00:00', '1', '267', '1', '1');
INSERT INTO `order_my` VALUES ('301', '2013-05-13 00:00:00', '1', '18', '1', '1');
INSERT INTO `order_my` VALUES ('302', '2013-05-14 00:00:00', '1', '265', '1', '1');
INSERT INTO `order_my` VALUES ('303', '2013-05-14 00:00:00', '1', '210', '1', '1');
INSERT INTO `order_my` VALUES ('304', '2013-05-14 00:00:00', '1', '268', '1', '1');
INSERT INTO `order_my` VALUES ('305', '2013-05-14 00:00:00', '1', '258', '1', '1');
INSERT INTO `order_my` VALUES ('306', '2013-05-14 00:00:00', '1', '269', '1', '1');
INSERT INTO `order_my` VALUES ('307', '2013-05-14 00:00:00', '1', '270', '1', '1');
INSERT INTO `order_my` VALUES ('308', '2013-05-14 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('309', '2013-05-14 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('310', '2013-05-14 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('311', '2013-05-14 00:00:00', '1', '271', '1', '1');
INSERT INTO `order_my` VALUES ('312', '2013-05-14 00:00:00', '1', '272', '1', '1');
INSERT INTO `order_my` VALUES ('313', '2013-05-14 00:00:00', '1', '273', '1', '1');
INSERT INTO `order_my` VALUES ('314', '2013-05-14 00:00:00', '1', '274', '1', '1');
INSERT INTO `order_my` VALUES ('315', '2013-05-14 00:00:00', '1', '275', '1', '1');
INSERT INTO `order_my` VALUES ('316', '2013-05-15 00:00:00', '1', '276', '1', '1');
INSERT INTO `order_my` VALUES ('317', '2013-05-15 00:00:00', '1', '277', '1', '1');
INSERT INTO `order_my` VALUES ('318', '2013-05-15 00:00:00', '1', '278', '1', '1');
INSERT INTO `order_my` VALUES ('319', '2013-05-15 00:00:00', '1', '279', '1', '1');
INSERT INTO `order_my` VALUES ('320', '2013-05-15 00:00:00', '1', '280', '1', '1');
INSERT INTO `order_my` VALUES ('321', '2013-05-15 00:00:00', '1', '6', '1', '1');
INSERT INTO `order_my` VALUES ('322', '2013-05-15 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('323', '2013-05-16 00:00:00', '1', '281', '1', '1');
INSERT INTO `order_my` VALUES ('324', '2013-05-16 00:00:00', '1', '282', '1', '1');
INSERT INTO `order_my` VALUES ('325', '2013-05-16 00:00:00', '1', '110', '1', '1');
INSERT INTO `order_my` VALUES ('326', '2013-05-16 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('327', '2013-05-16 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('328', '2013-05-16 00:00:00', '1', '283', '1', '1');
INSERT INTO `order_my` VALUES ('329', '2013-05-16 00:00:00', '1', '284', '1', '1');
INSERT INTO `order_my` VALUES ('330', '2013-05-19 00:00:00', '1', '210', '1', '1');
INSERT INTO `order_my` VALUES ('331', '2013-05-19 00:00:00', '1', '285', '1', '1');
INSERT INTO `order_my` VALUES ('332', '2013-05-19 00:00:00', '1', '286', '1', '1');
INSERT INTO `order_my` VALUES ('333', '2013-05-19 00:00:00', '1', '272', '1', '1');
INSERT INTO `order_my` VALUES ('334', '2013-05-19 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('335', '2013-05-19 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('336', '2013-05-19 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('337', '2013-05-19 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('338', '2013-05-19 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('339', '2013-05-21 00:00:00', '1', '284', '1', '1');
INSERT INTO `order_my` VALUES ('340', '2013-05-21 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('341', '2013-05-21 00:00:00', '1', '287', '1', '1');
INSERT INTO `order_my` VALUES ('342', '2013-05-21 00:00:00', '1', '288', '1', '1');
INSERT INTO `order_my` VALUES ('343', '2013-05-21 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('344', '2013-05-21 00:00:00', '1', '18', '1', '1');
INSERT INTO `order_my` VALUES ('345', '2013-05-22 12:33:30', '1', '289', '1', '1');
INSERT INTO `order_my` VALUES ('346', '2013-05-23 00:00:00', '1', '290', '1', '1');
INSERT INTO `order_my` VALUES ('347', '2013-05-23 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('348', '2013-05-23 00:00:00', '1', '291', '1', '1');
INSERT INTO `order_my` VALUES ('349', '2013-05-23 00:00:00', '1', '292', '1', '1');
INSERT INTO `order_my` VALUES ('350', '2013-05-26 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('351', '2013-05-27 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('352', '2013-05-27 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('353', '2013-05-28 00:00:00', '1', '293', '1', '1');
INSERT INTO `order_my` VALUES ('354', '2013-05-28 00:00:00', '1', '294', '1', '1');
INSERT INTO `order_my` VALUES ('355', '2013-05-28 00:00:00', '1', '284', '1', '1');
INSERT INTO `order_my` VALUES ('356', '2013-05-28 00:00:00', '1', '215', '1', '1');
INSERT INTO `order_my` VALUES ('357', '2013-05-30 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('359', '2013-05-30 00:00:00', '1', '295', '1', '1');
INSERT INTO `order_my` VALUES ('361', '2013-05-30 00:00:00', '1', '77', '1', '1');
INSERT INTO `order_my` VALUES ('362', '2013-05-30 00:00:00', '1', '77', '1', '1');

-- ----------------------------
-- Table structure for `order_type`
-- ----------------------------
DROP TABLE IF EXISTS `order_type`;
CREATE TABLE `order_type` (
  `order_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(500) NOT NULL,
  PRIMARY KEY (`order_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_type
-- ----------------------------
INSERT INTO `order_type` VALUES ('1', 'Retail');
INSERT INTO `order_type` VALUES ('2', 'Dropshipping');
INSERT INTO `order_type` VALUES ('3', 'Affiliate');
INSERT INTO `order_type` VALUES ('4', 'Wholesale');

-- ----------------------------
-- Table structure for `payment_info`
-- ----------------------------
DROP TABLE IF EXISTS `payment_info`;
CREATE TABLE `payment_info` (
  `payment_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_my_id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `total_payment` int(11) NOT NULL,
  `mode_payment_id` int(11) NOT NULL,
  `date_payment` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ref_no` varchar(500) NOT NULL,
  PRIMARY KEY (`payment_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payment_info
-- ----------------------------
INSERT INTO `payment_info` VALUES ('1', '1', '2', '200', '1', '2012-12-01 00:00:00', '93460275');
INSERT INTO `payment_info` VALUES ('2', '2', '2', '169', '1', '2012-12-01 16:14:00', '93463029');
INSERT INTO `payment_info` VALUES ('3', '3', '2', '175', '1', '2012-12-03 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('4', '4', '2', '194', '1', '2012-12-03 13:26:45', '123');
INSERT INTO `payment_info` VALUES ('5', '5', '2', '190', '1', '2012-12-04 16:00:00', '122');
INSERT INTO `payment_info` VALUES ('6', '6', '1', '225', '1', '2012-12-05 00:00:00', '1728111150');
INSERT INTO `payment_info` VALUES ('8', '7', '2', '120', '1', '2012-12-06 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('9', '8', '3', '236', '1', '2012-12-05 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('10', '9', '1', '236', '1', '2012-12-07 16:00:00', '123');
INSERT INTO `payment_info` VALUES ('11', '10', '1', '190', '1', '2012-12-08 00:00:00', '93869553');
INSERT INTO `payment_info` VALUES ('12', '11', '2', '130', '1', '2012-12-08 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('13', '12', '2', '230', '1', '2012-12-09 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('14', '15', '2', '140', '1', '2012-12-09 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('15', '16', '1', '175', '1', '2012-12-10 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('16', '17', '2', '200', '3', '2012-12-10 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('17', '18', '1', '190', '1', '2012-12-11 14:35:35', '-');
INSERT INTO `payment_info` VALUES ('18', '19', '1', '200', '1', '2012-12-11 16:24:10', '123');
INSERT INTO `payment_info` VALUES ('20', '20', '1', '715', '1', '2012-12-11 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('21', '22', '1', '175', '2', '2012-12-12 00:00:00', '1730952083');
INSERT INTO `payment_info` VALUES ('22', '23', '1', '190', '1', '2012-12-17 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('23', '24', '3', '200', '1', '2012-12-16 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('24', '25', '1', '190', '1', '2012-12-17 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('25', '27', '1', '175', '1', '2012-12-18 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('26', '29', '1', '175', '1', '2012-12-18 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('28', '30', '1', '175', '1', '2012-12-19 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('29', '31', '4', '98', '5', '2012-12-13 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('30', '34', '1', '175', '1', '2012-12-18 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('31', '35', '2', '175', '1', '2012-12-18 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('32', '39', '2', '190', '1', '2012-12-20 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('33', '40', '1', '175', '1', '2012-12-22 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('34', '41', '2', '180', '3', '2012-12-21 00:00:00', 'SMS');
INSERT INTO `payment_info` VALUES ('35', '42', '1', '45', '1', '2012-12-28 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('36', '43', '1', '136', '1', '2012-12-27 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('37', '44', '1', '184', '1', '2012-12-27 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('38', '45', '1', '255', '1', '2013-01-27 00:00:00', '23');
INSERT INTO `payment_info` VALUES ('39', '46', '1', '194', '1', '2012-12-23 00:00:00', '23');
INSERT INTO `payment_info` VALUES ('40', '38', '7', '200', '3', '2012-12-20 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('41', '33', '1', '720', '4', '2012-12-19 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('42', '36', '1', '175', '1', '2012-12-17 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('43', '37', '2', '200', '1', '2012-12-19 00:00:00', 'S19998152345');
INSERT INTO `payment_info` VALUES ('44', '47', '7', '175', '1', '2012-12-30 00:28:45', '95032905');
INSERT INTO `payment_info` VALUES ('45', '48', '7', '190', '3', '2012-12-26 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('46', '49', '1', '230', '1', '2012-12-31 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('47', '51', '7', '456', '1', '2012-12-31 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('48', '52', '3', '218', '1', '2012-12-31 10:00:00', '123');
INSERT INTO `payment_info` VALUES ('49', '53', '7', '170', '3', '2012-12-31 12:00:00', '123');
INSERT INTO `payment_info` VALUES ('50', '56', '1', '175', '1', '2013-01-03 11:00:00', '123');
INSERT INTO `payment_info` VALUES ('51', '57', '1', '460', '3', '2013-01-04 17:39:00', '123');
INSERT INTO `payment_info` VALUES ('52', '58', '7', '230', '1', '2013-01-03 15:25:00', '95341093');
INSERT INTO `payment_info` VALUES ('53', '59', '1', '175', '3', '2013-01-04 13:08:00', '02652030');
INSERT INTO `payment_info` VALUES ('54', '63', '1', '240', '3', '2013-01-22 21:19:00', '123');
INSERT INTO `payment_info` VALUES ('55', '64', '1', '169', '1', '2013-01-25 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('56', '65', '1', '338', '1', '2013-01-23 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('57', '66', '1', '175', '1', '2013-01-23 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('59', '71', '1', '175', '1', '2013-01-15 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('60', '72', '1', '330', '1', '2013-01-14 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('61', '73', '1', '175', '1', '2013-01-14 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('62', '74', '1', '175', '1', '2013-01-15 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('63', '75', '1', '230', '1', '2013-01-17 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('64', '76', '1', '169', '1', '2013-01-20 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('65', '77', '1', '240', '1', '2013-01-21 00:00:00', '-');
INSERT INTO `payment_info` VALUES ('66', '79', '1', '265', '2', '2013-02-17 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('67', '81', '7', '200', '1', '2013-02-08 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('68', '82', '3', '169', '1', '2013-02-17 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('69', '83', '7', '200', '1', '2013-02-17 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('70', '85', '2', '175', '1', '2013-02-18 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('72', '88', '1', '195', '1', '2013-02-19 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('74', '91', '7', '190', '1', '2013-02-19 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('77', '94', '1', '175', '1', '2013-02-19 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('78', '95', '1', '175', '1', '2013-02-20 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('80', '97', '1', '175', '1', '2013-02-20 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('81', '98', '1', '190', '1', '2013-02-20 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('82', '99', '2', '110', '1', '2013-02-20 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('84', '100', '2', '175', '1', '2013-02-22 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('85', '102', '1', '175', '1', '2013-02-22 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('87', '101', '1', '65', '1', '2013-02-23 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('88', '106', '1', '110', '1', '2013-02-24 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('89', '104', '1', '169', '1', '2013-02-25 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('90', '103', '1', '139', '1', '2013-02-25 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('91', '107', '1', '116', '1', '2013-02-25 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('92', '108', '1', '65', '1', '2013-02-26 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('94', '109', '7', '158', '1', '2013-02-26 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('96', '111', '1', '180', '1', '2013-03-27 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('97', '110', '1', '175', '1', '2013-02-27 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('98', '112', '1', '175', '1', '2013-02-27 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('99', '113', '1', '180', '1', '2013-02-27 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('101', '114', '7', '350', '1', '2013-02-27 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('102', '116', '1', '229', '1', '2013-03-02 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('103', '117', '1', '200', '1', '2013-03-02 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('105', '118', '7', '200', '1', '2013-03-02 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('106', '119', '1', '236', '1', '2013-02-24 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('107', '120', '1', '200', '1', '2013-03-06 12:27:30', '123');
INSERT INTO `payment_info` VALUES ('108', '122', '2', '65', '1', '2013-03-06 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('109', '123', '1', '200', '1', '2013-03-07 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('110', '124', '1', '236', '1', '2013-03-07 00:00:00', '1772735978');
INSERT INTO `payment_info` VALUES ('111', '125', '1', '236', '1', '2013-03-07 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('112', '127', '1', '215', '1', '2013-03-11 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('114', '128', '4', '184', '3', '2013-03-09 00:00:00', '0');
INSERT INTO `payment_info` VALUES ('115', '129', '1', '260', '1', '2013-03-11 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('116', '131', '7', '170', '1', '2013-03-11 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('117', '132', '1', '175', '1', '2013-03-11 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('119', '144', '7', '200', '1', '2013-03-10 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('120', '146', '1', '460', '1', '2013-03-13 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('121', '150', '1', '460', '1', '2013-03-13 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('122', '152', '1', '390', '1', '2013-03-13 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('123', '153', '1', '160', '1', '2013-03-13 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('124', '154', '7', '200', '1', '2013-03-13 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('126', '155', '7', '190', '1', '2013-03-12 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('127', '156', '3', '169', '1', '2013-03-13 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('129', '157', '1', '200', '1', '2013-03-13 00:00:00', '1775531338');
INSERT INTO `payment_info` VALUES ('131', '130', '1', '190', '1', '2013-02-22 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('132', '159', '1', '200', '1', '2013-03-14 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('133', '166', '1', '150', '1', '2013-03-11 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('134', '168', '2', '353', '1', '2013-03-14 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('135', '170', '1', '200', '1', '2013-03-18 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('136', '171', '1', '175', '1', '2013-03-19 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('137', '173', '1', '190', '1', '2013-03-20 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('138', '175', '7', '190', '1', '2013-03-24 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('139', '177', '1', '200', '1', '2013-03-23 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('140', '180', '4', '184', '1', '2013-03-23 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('141', '182', '2', '169', '1', '2013-03-26 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('143', '184', '2', '169', '1', '2013-03-25 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('145', '178', '1', '236', '1', '2013-03-25 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('146', '186', '1', '150', '1', '2013-03-26 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('147', '181', '1', '175', '1', '2013-03-25 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('148', '192', '1', '116', '1', '2013-03-21 00:00:00', '90261564');
INSERT INTO `payment_info` VALUES ('149', '199', '1', '200', '1', '2013-04-02 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('150', '207', '2', '200', '3', '2013-04-08 00:00:00', '123456');
INSERT INTO `payment_info` VALUES ('151', '208', '1', '200', '1', '2013-04-08 00:00:00', '87546');
INSERT INTO `payment_info` VALUES ('152', '209', '1', '175', '1', '2013-04-07 00:00:00', '689754');
INSERT INTO `payment_info` VALUES ('153', '210', '7', '320', '1', '2013-04-07 00:00:00', '323685');
INSERT INTO `payment_info` VALUES ('154', '214', '7', '530', '1', '2013-04-08 00:00:00', '14589');
INSERT INTO `payment_info` VALUES ('155', '215', '1', '200', '1', '2013-04-10 00:00:00', '87324357');
INSERT INTO `payment_info` VALUES ('156', '217', '2', '230', '1', '2013-04-11 00:00:00', '152189045335');
INSERT INTO `payment_info` VALUES ('157', '218', '2', '200', '1', '2013-04-11 00:00:00', '7548796');
INSERT INTO `payment_info` VALUES ('158', '219', '1', '414', '1', '2013-04-08 00:00:00', '9548852');
INSERT INTO `payment_info` VALUES ('159', '221', '1', '200', '1', '2013-04-13 00:00:00', '8957565');
INSERT INTO `payment_info` VALUES ('160', '222', '2', '116', '1', '2013-03-28 00:00:00', '90261564');
INSERT INTO `payment_info` VALUES ('161', '223', '1', '169', '1', '2013-04-15 00:00:00', '7989999');
INSERT INTO `payment_info` VALUES ('162', '224', '1', '170', '1', '2013-04-15 00:00:00', '9764582');
INSERT INTO `payment_info` VALUES ('163', '225', '7', '190', '1', '2013-04-16 00:00:00', '487953');
INSERT INTO `payment_info` VALUES ('167', '234', '1', '150', '1', '2013-04-18 00:00:00', '1935232');
INSERT INTO `payment_info` VALUES ('168', '237', '1', '230', '1', '2013-04-13 00:00:00', '1790915819');
INSERT INTO `payment_info` VALUES ('169', '238', '1', '200', '1', '2013-04-19 00:00:00', '97893356');
INSERT INTO `payment_info` VALUES ('170', '239', '1', '286', '1', '2013-04-21 00:00:00', '598774665');
INSERT INTO `payment_info` VALUES ('171', '242', '2', '961', '1', '2013-04-22 00:00:00', '123567897');
INSERT INTO `payment_info` VALUES ('172', '243', '1', '230', '1', '2013-04-23 00:00:00', '56498743');
INSERT INTO `payment_info` VALUES ('173', '244', '2', '175', '1', '2013-04-23 00:00:00', '3254684');
INSERT INTO `payment_info` VALUES ('174', '247', '1', '169', '1', '2013-04-24 00:00:00', '35798768');
INSERT INTO `payment_info` VALUES ('175', '248', '1', '209', '1', '2013-04-24 00:00:00', '38124253');
INSERT INTO `payment_info` VALUES ('176', '249', '1', '116', '1', '2013-04-24 00:00:00', '556579578');
INSERT INTO `payment_info` VALUES ('177', '250', '1', '150', '1', '2013-04-25 00:00:00', '2658746');
INSERT INTO `payment_info` VALUES ('178', '251', '1', '169', '1', '2013-04-25 00:00:00', '369775466');
INSERT INTO `payment_info` VALUES ('179', '254', '1', '169', '1', '2013-04-26 00:00:00', '796888532');
INSERT INTO `payment_info` VALUES ('180', '259', '1', '65', '1', '2013-04-14 00:00:00', '1793994893');
INSERT INTO `payment_info` VALUES ('181', '264', '4', '184', '3', '2013-04-28 00:00:00', '2554979966');
INSERT INTO `payment_info` VALUES ('182', '268', '1', '338', '1', '2013-04-30 00:00:00', '1799392179');
INSERT INTO `payment_info` VALUES ('183', '269', '3', '260', '1', '2013-04-30 00:00:00', '5E040445HF339940');
INSERT INTO `payment_info` VALUES ('184', '196', '1', '190', '1', '2013-04-02 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('185', '270', '7', '200', '1', '2013-05-30 00:00:00', '587972475');
INSERT INTO `payment_info` VALUES ('186', '273', '1', '120', '1', '2013-04-30 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('187', '280', '7', '65', '1', '2013-04-30 00:00:00', '657895725696');
INSERT INTO `payment_info` VALUES ('188', '283', '2', '230', '1', '2013-05-07 00:00:00', '5785644458');
INSERT INTO `payment_info` VALUES ('189', '284', '1', '200', '1', '2013-05-07 00:00:00', '599878756');
INSERT INTO `payment_info` VALUES ('190', '285', '2', '330', '1', '2013-05-06 00:00:00', '36877985747');
INSERT INTO `payment_info` VALUES ('191', '286', '1', '150', '1', '2013-05-06 00:00:00', '3697847878');
INSERT INTO `payment_info` VALUES ('192', '287', '1', '165', '1', '2013-05-06 00:00:00', '5978747456');
INSERT INTO `payment_info` VALUES ('193', '288', '2', '338', '1', '2013-05-06 00:00:00', '2578798972');
INSERT INTO `payment_info` VALUES ('194', '293', '2', '190', '1', '2013-05-07 00:00:00', '4758576936');
INSERT INTO `payment_info` VALUES ('195', '297', '1', '175', '1', '2013-05-08 00:00:00', '5468757687');
INSERT INTO `payment_info` VALUES ('196', '312', '1', '150', '1', '2013-05-12 00:00:00', '587968446');
INSERT INTO `payment_info` VALUES ('197', '315', '2', '130', '1', '2013-05-12 00:00:00', '587692345');
INSERT INTO `payment_info` VALUES ('198', '324', '1', '200', '1', '2013-05-15 00:00:00', '4555555546');
INSERT INTO `payment_info` VALUES ('199', '345', '3', '175', '1', '2013-05-21 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('200', '348', '1', '200', '1', '2013-05-22 00:00:00', '123');
INSERT INTO `payment_info` VALUES ('201', '353', '2', '169', '1', '2013-05-28 00:00:00', '1');

-- ----------------------------
-- Table structure for `size`
-- ----------------------------
DROP TABLE IF EXISTS `size`;
CREATE TABLE `size` (
  `size_id` int(11) NOT NULL AUTO_INCREMENT,
  `size` varchar(500) NOT NULL,
  PRIMARY KEY (`size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of size
-- ----------------------------
INSERT INTO `size` VALUES ('2', 'M');
INSERT INTO `size` VALUES ('3', 'L');
INSERT INTO `size` VALUES ('4', 'XL');
INSERT INTO `size` VALUES ('5', '2XL');
INSERT INTO `size` VALUES ('6', '3XL');
INSERT INTO `size` VALUES ('7', '4XL');
INSERT INTO `size` VALUES ('8', '5XL');
INSERT INTO `size` VALUES ('9', '6XL');
INSERT INTO `size` VALUES ('12', '100ml');
INSERT INTO `size` VALUES ('13', 'none');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `agent_id` int(12) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(12) NOT NULL,
  `agent` varchar(500) NOT NULL,
  `address_agent` varchar(5000) NOT NULL,
  `phone_agent` varchar(11) NOT NULL,
  `email_agent` varchar(500) NOT NULL,
  `facebook_id_agent` varchar(500) DEFAULT NULL,
  `twitter_id_agent` varchar(500) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`agent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'azaliha', '123123', 'Azaliha Abdullah', '72, Jalan Keranji 11, Taman Keranji, Alor Mengkudu, 05400, Alor Setar, Kedah', '0162052420', 'azaliha@gmail.com', 'facebook.com/azaliha', null, '1');
