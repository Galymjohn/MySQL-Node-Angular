


CREATE TABLE `client` (
  `client_id` int(11) UNSIGNED NOT NULL auto_increment,
  `client_name` varchar(50) DEFAULT NULL,
  `client_email` varchar(100) DEFAULT NULL,
  `client_password` varchar(100) DEFAULT NULL,
  `client_analytics_code` varchar(50) DEFAULT NULL,
  `client_creation_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (client_id) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE INDEX client_id ON client(client_id);



create table post (
    post_id int(11) UNSIGNED NOT NULL Auto_increment primary key,
    text varchar(1000),
    client_id int(11) UNSIGNED NOT NULL,
    likes int,
    foreign key(client_id) references client(client_id)
);


CREATE INDEX post_id ON post(post_id);


create table comment (
    comment_id int Auto_increment primary key,
    text varchar(1000),
    client_id int(11) UNSIGNED NOT NULL,
    post_id int(11) UNSIGNED NOT NULL,
    foreign key(client_id) references client(client_id),
    foreign key(post_id) references post(post_id)
);

CREATE TABLE `message` (
  `message_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message_content` longtext,
  `client_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`message_id`),
  KEY `client_id message_idx` (`client_id`),
  CONSTRAINT `client_id message` FOREIGN KEY (`client_id`) 
  REFERENCES `client` (`client_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

INSERT INTO client ( client_email, client_password ) values ('kramer16@gmail.com','pizza')
