CREATE SCHEMA IF NOT EXISTS `krampoline` DEFAULT CHARACTER SET utf8mb4;

GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY 'root' WITH GRANT OPTION;
GRANT ALL ON krampoline.* TO 'root'@'localhost';
FLUSH PRIVILEGES;

USE `krampoline`;

DROP TABLE IF EXISTS `sample_data`;
CREATE TABLE `sample_data` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `detail` varchar(100) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS badge;
CREATE TABLE badge
(
    id            BIGINT AUTO_INCREMENT NOT NULL,
    created_at    datetime              NULL,
    updated_at    datetime              NULL,
    user_id       BIGINT                NOT NULL,
    `description` VARCHAR(255)          NOT NULL,
    CONSTRAINT pk_badge PRIMARY KEY (id)
);

DROP TABLE IF EXISTS book;
CREATE TABLE book
(
    id         BIGINT AUTO_INCREMENT NOT NULL,
    created_at datetime              NULL,
    updated_at datetime              NULL,
    user_id    BIGINT                NOT NULL,
    seafood    VARCHAR(255)          NOT NULL,
    CONSTRAINT pk_book PRIMARY KEY (id)
);

DROP TABLE IF EXISTS reservation;
CREATE TABLE reservation
(
    id               BIGINT AUTO_INCREMENT NOT NULL,
    created_at       datetime              NULL,
    updated_at       datetime              NULL,
    place            VARCHAR(255)          NOT NULL,
    name             VARCHAR(255)          NOT NULL,
    number_of_people INT                   NOT NULL,
    reservation_date VARCHAR(255)          NOT NULL,
    reservation_time VARCHAR(255)          NOT NULL,
    is_completed     BIT(1)                NOT NULL,
    CONSTRAINT pk_reservation PRIMARY KEY (id)
);

DROP TABLE IF EXISTS users;
CREATE TABLE users
(
    user_id          BIGINT AUTO_INCREMENT NOT NULL,
    created_at       datetime              NULL,
    updated_at       datetime              NULL,
    email            VARCHAR(255)          NULL,
    provider_type    VARCHAR(20)           NULL,
    provider_id      VARCHAR(255)          NULL,
    user_role        VARCHAR(20)           NULL,
    nickname         VARCHAR(255)          NULL,
    profile_nickname VARCHAR(255)          NULL,
    password         VARCHAR(255)          NULL,
    CONSTRAINT pk_users PRIMARY KEY (user_id)
);

INSERT INTO sample_data (`id`,`detail`) VALUES ('1', 'Hello DKOS!');
