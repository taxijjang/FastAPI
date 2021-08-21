-- Users

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` enum('active','deleted','blocked') NOT NULL DEFAULT 'active',
  `email` varchar(255) DEFAULT NULL,
  `pw` varchar(2000) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `profile_img` varchar(1000) DEFAULT NULL,
  `sns_type` enum('FB','G','K','Email') DEFAULT NULL,
  `marketing_agree` tinyint(1) DEFAULT '0',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;