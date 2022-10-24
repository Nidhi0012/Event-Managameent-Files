create database db;
use db;
create table user( user_id int auto_increment, primary key(user_id), name varchar(255), email varchar(255), password varchar(300), phone int);
create table admin( email varchar(255), primary key(email), password varchar(300));
create table event_category( category varchar(255) unique);
create table organizer(organizer_id int auto_increment, primary key(organizer_id), name varchar(255), email varchar(255) unique, password varchar(300), phone int);
create table event( event_id int auto_increment, primary key(event_id), name varchar(255), venue varchar(255), price varchar(255) , organizer_id int, foreign key (organizer_id) references organizer(organizer_id));
alter table event add column category varchar(255);
create table booking(booking_id int, primary key(booking_id), event_id int, user_id int, foreign key(event_id)  references event(event_id), foreign key(user_id) references user(user_id));
