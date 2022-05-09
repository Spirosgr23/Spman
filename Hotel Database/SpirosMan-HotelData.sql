#Insert data to all tables - The use of INSERT IGNORE should eliminate duplications

USE HOTEL_GUILDS2;

INSERT IGNORE INTO Rooms(RoomNumber, Amenities, ADA_Accesible, Standard_Occupancy, Maximum_Occupancy, Base_Price, Extra_Person, Type) 
VALUES (201, 'Microwave, Jacuzzi','No', 2, 4, 199.99, 10, 'Double'),
(202, 'Refrigerator','Yes', 2, 4, 174.99, 10, 'Double'),
(203, 'Microwave, Jacuzzi','No', 2, 4, 199.99, 10, 'Double'),
(204, 'Refrigerator','Yes', 2, 4, 174.99, 10, 'Double'),
(205, 'Microwave, Refrigerator, Jacuzzi','No', 2, 2, 174.99, 'NA', 'Single'),
(206, 'Microwave, Jacuzzi','Yes', 2, 2, 149.99, 'NA', 'Single'),
(207, 'Microwave, Refrigerator, Jacuzzi','No', 2, 2, 174.99, 'NA', 'Single'),
(208, 'Microwave, Refrigerator','Yes', 2, 2, 149.99, 'NA', 'Single'),
(301, 'Microwave, Jacuzzi','No', 2, 4, 199.99, 10, 'Double'),
(302, 'Refrigerator','Yes', 2, 4, 174.99, 10, 'Double'),
(303, 'Microwave, Jacuzzi','No', 2, 4, 199.99, 10, 'Double'),
(304, 'Refrigerator','Yes', 2, 4, 174.99, 10, 'Double'),
(305, 'Microwave, Refrigerator, Jacuzzi','No', 2, 2, 174.99, 'NA', 'Single'),
(306, 'Microwave, Refrigerator','Yes', 2, 2, 149.99, 'NA', 'Single'),
(307, 'Microwave, Refrigerator, Jacuzzi','No', 2, 2, 174.99, 'NA', 'Single'),
(308, 'Microwave, Refrigerator','Yes', 2, 2, 149.99, 'NA', 'Single'),
(401, 'Microwave, Refrigerator, Oven','Yes', 3, 8, 399.99, 20, 'Suite'),
(402, 'Microwave, Refrigerator, Oven','Yes', 3, 8, 399.99, 20, 'Suite');

INSERT IGNORE INTO Guests(First_Name, Last_Name, Age, Address, City, State, Zip, Phone, Res_Num)
VALUES ('Spyridon', 'Manouras', 35, 'Westferry Road', 'London', 'LD', 14231, '(44) 074858545', 2),
('Mack', 'Simmer', null, '379 Old Shore Street', 'Council Bluffs', 'IA', 51501, '(291) 553-0508', 4),
('Bettyann', 'Seery',null, '750 Wintergreen Dr.', 'Wasilla', 'AK', 96654, '(478) 277-9632', 3),
('Duane', 'Cullison',null, '9662 Foxrun Lane', 'Harlingen', 'TX', 78552, '(308) 494-0198', 2),
('Karie', 'Yang',null, '9378 W. Augusta Ave.', 'West Deptford', 'NJ', 08096, '(214) 730-0298', 2),
('Aurore', 'Lipton',null, '762 Wild Rose Street', 'Saginaw', 'MI', 48601, '(377) 507-0974', 2),
('Zachery', 'Luechtefeld',null, '7 Poplar Dr.', 'Arvada', 'CO', 80003, '(814) 485-2615', 1),
('Jeremiah', 'Pendergrass',null, '70 Oakwood St.', 'Zion', 'IL', 60099, '(279) 491-0960', 1),
('Walter', 'Holaway',null, '7556 Arrowhead St.', 'Cumberland', 'RI', 02864, '(446) 396-6785', 2),
('Wilfred', 'Vise',null, '77 West Surrey Street', 'Oswego', 'NY', 13126, '(834) 727-1001',2),
('Maritza', 'Tilton',null, '939 Linda Rd.', 'Burke', 'VA', 22015, '(446) 351-6860', 2),
('Joleen', 'Tison',null, '87 Queen St.', 'Drexel Hill', 'PA', 19026, '(231) 893-2755', 2);


INSERT IGNORE INTO Reservations(RoomNumber, Guest_ID, Adults, Children, Start_Date, End_Date, Total_Room_Cost,TotalPer)
VALUES (308, 2, '1', '0', '2023-02-02', '2023-02-04', '$299.98', 3),
(203, 3, '2', '1', '2023-02-05', '2023-02-23', '$999.95', 3),
(305, 4, '2', '0', '2023-02-22', '2023-02-24', '$349.98', 2),
(201, 5, '2', '2', '2023-03-06', '2023-03-07', '$199.99', 4),
(307, 1, '1', '1', '2023-03-17', '2023-03-20', '$524.97', 2),
(302, 6, '3', '0', '2023-03-18', '2023-03-23', '$924.95', 3),
(202, 7, '2', '2', '2023-03-29', '2023-03-31', '$349.98', 4),
(304, 8, '2', '0', '2023-03-31', '2023-04-23', '$874.95', 2),
(301, 9, '1', '0', '2023-04-09', '2023-04-13', '$799.96', 1),
(207, 10, '1', '1', '2023-04-23', '2023-04-24', '$174.99', 2),
(401, 11, '2', '4', '2023-05-30', '2023-06-02', '$1,199.97', 6),
(206, 12, '2', '0', '2023-06-10', '2023-06-14', '$599.96', 2),
(208, 12, '1', '0', '2023-06-10', '2023-06-14', '$599.96', 1),
(304, 6, '3', '0', '2023-06-17', '2023-06-18', '$184.99', 3),
(205, 1, '2', '0', '2023-06-28', '2023-07-02', '$699.96', 2),
(204, 9, '3', '1', '2023-07-13', '2023-07-14', '$184.99', 4),
(401, 10, '4', '2', '2023-07-18', '2023-07-21', '$1,259.97', 6),
(303, 3, '2', '1', '2023-07-28', '2023-07-29', '$199.99', 3),
(305, 3, '1', '0', '2023-08-30', '2023-09-01', '$349.98', 1),
(208, 2, '2', '0', '2023-09-16', '2023-09-17', '$149.99', 2),
(203, 5, '2', '2', '2023-09-13', '2023-09-15', '$399.98', 4),
(401, 4, '2', '2', '2023-11-22', '2023-11-25', '$1,199.97', 4),
(206, 2, '2', '0', '2023-11-22', '2023-11-25', '$449.97', 2),
(301, 2, '2', '2', '2023-11-22', '2023-11-25', '$599.97', 4),
(302, 11, '2', '0', '2023-12-24', '2023-12-28', '$699.96', 2);

#Delete the person with name Jeremiah Pendergrass

SET FOREIGN_KEY_CHECKS=0;
DELETE FROM Guests 
WHERE First_Name = 'Jeremiah' AND Last_Name = 'Pendergrass';
DELETE FROM Reservations
WHERE Guest_ID = 8;
SET FOREIGN_KEY_CHECKS=1;