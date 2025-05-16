create database Food_Delivery;
use Food_Delivery;

create table users (
    id INT primary key auto_increment,
    fullName varchar(255) not null,
    nationalId varchar(255) UNIQUE not null,
    role ENUM('student','professor') not null
);

create table students (
    id INT primary key,
    studentId varchar(255) UNIQUE not null,
    major varchar(255) not null,
    foreign key (id) references users(id) ON DELETE CASCADE
);

create table professors (
    id INT primary key,
    personalId varchar(255) UNIQUE not null,
    department varchar(255) not null,
    education varchar(255) not null,
    foreign key (id) references users(id) ON DELETE CASCADE
);

create table foodItem(
    foodId INT primary key auto_increment,
    foodName varchar(255) not null,
    price bigint not null,
    publishDate date not null
);

create table orders (
    order_id INT primary key auto_increment,
    personId Int not null,
    foodId INT not null,
    orderDate date not null,
    foreign key (personId) references users(id),
    foreign key (foodId) references foodItem(foodId)
);

CREATE TABLE days (
    dayId INT PRIMARY KEY AUTO_INCREMENT,
    dayName ENUM('Saturday','Sunday','Monday','Tuesday','Wednesday','Thursday','Friday') NOT NULL
);

ALTER TABLE foodItem ADD COLUMN dayId INT,
ADD FOREIGN KEY (dayId) REFERENCES days(dayId);

ALTER TABLE orders ADD COLUMN status ENUM('pending', 'confirmed', 'cancelled') DEFAULT 'pending';



