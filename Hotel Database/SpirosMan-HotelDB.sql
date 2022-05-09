#Create DATABASE and create tables for the DATABASE

CREATE DATABASE IF NOT EXISTS HOTEL_GUILDS2;

USE HOTEL_GUILDS2;

CREATE TABLE `Rooms` (
    `RoomNumber` INT NOT NULL,
    `Type` VARCHAR(10) NOT NULL,
    `Amenities` VARCHAR(100) NOT NULL,
    `ADA_Accesible` VARCHAR(3) NOT NULL,
    `Standard_Occupancy` INT NOT NULL,
    `Maximum_Occupancy` INT NOT NULL,
    `Base_Price` FLOAT NOT NULL,
    `Extra_Person` CHAR(10) NOT NULL,
    PRIMARY KEY (`RoomNumber`)
);

CREATE TABLE `Guests` (
    `Guest_ID` int AUTO_INCREMENT NOT NULL,
    `First_Name` VARCHAR(100) NOT NULL,
    `Last_Name` VARCHAR(100) NOT NULL,
    `Age` int NULL,
    `Address` CHAR(50) NOT NULL,
    `City` VARCHAR(20) NOT NULL,
    `State` VARCHAR(2) NOT NULL,
    `Zip` INT,
    `Phone` CHAR(25) NOT NULL,
    `Res_Num` INT NULL,
    PRIMARY KEY (`Guest_ID`, `First_Name`, `Last_Name`)
);

CREATE TABLE `Reservations` (
    `Reservation_ID` INT AUTO_INCREMENT NOT NULL,
    `RoomNumber` INT NOT NULL,
    `Guest_ID` INT NOT NULL,
    `Adults` INT NULL,
    `Children` INT NULL,
    `TotalPer` INT NULL,
    `Start_Date` DATE NOT NULL,
    `End_Date` DATE NOT NULL,
    `Total_Room_Cost` CHAR(30) NOT NULL,
    PRIMARY KEY (`Reservation_ID`),
    FOREIGN KEY (`Guest_ID`)
        REFERENCES Guests (`Guest_ID`),
    FOREIGN KEY (`RoomNumber`)
        REFERENCES Rooms (`RoomNumber`)
);





