CREATE DATABASE IF NOT EXISTS `ASP` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE `ASP`;

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

INSERT INTO `users` (`username`, `password`, `email`, `created_at`, `updated_at`) VALUES
('admin', 'password', 'admin@test.fr', '2023-01-01 00:00:00', '2023-01-01 00:00:00'),
('user1', 'password', 'user1@test.fr', '2023-01-01 00:00:00', '2023-01-01 00:00:00');