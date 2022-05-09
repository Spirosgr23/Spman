# 1 Write a query that returns a list of reservations that end in July 2023, including the name of the guest, the room number(s), and the reservation dates.
 
 
SELECT Reservations.End_Date, Guests.First_Name, Guests.Last_Name, Reservations.RoomNumber, Reservations.Start_Date
FROM Reservations
INNER JOIN Guests
ON Guests.Guest_ID  = Reservations.Guest_ID
WHERE End_Date LIKE '2023-07%'    
 
# 2 Write a query that returns a list of all reservations for rooms with a jacuzzi, displaying the guest's name, the room number, and the dates of the reservation.

SELECT First_Name, Last_Name, Start_Date, End_Date, Rooms.RoomNumber, Rooms.Amenities
FROM Rooms
INNER JOIN Reservations
ON Rooms.RoomNumber = Reservations.RoomNumber
INNER JOIN Guests
ON Reservations.Guest_ID = Guests.Guest_ID
WHERE Amenities LIKE '%jacuzzi%'

# 3 Write a query that returns all the rooms reserved for a specific guest, including the guest's name, the room(s) reserved, the starting date of the reservation, and how many people were included in the reservation. (Choose a guest's name from the existing data.)

SELECT First_Name, Last_Name, RoomNumber, Start_Date, TotalPer
FROM Reservations 
LEFT JOIN Guests
ON Reservations.Reservation_ID = Guests.Guest_ID
WHERE First_Name LIKE '%Duane%'


# 4 Write a query that returns a list of rooms, reservation ID, and per-room cost for each reservation. The results should include all rooms, whether or not there is a reservation associated with the room.

SELECT Rooms.RoomNumber, Rooms.Base_Price, Rooms.Extra_Person, Reservations.Reservation_ID
FROM Rooms
INNER JOIN Reservations
ON Reservations.RoomNumber = Rooms.RoomNumber

# 5. Write a query that returns all the rooms accommodating at least three guests and that are reserved on any date in April 2023.

SELECT * 
FROM Rooms
INNER JOIN Reservations
ON Reservations.RoomNumber = Rooms.RoomNumber
WHERE Start_Date LIKE '2023-04%' AND TotalPer >= 3;

# There are no dates in April in my Database that there are any reservations with at least 3 guests to try my code, but if you run it
# with minimum 1 person it runs as normal, example below: 

SELECT * 
FROM Rooms
INNER JOIN Reservations
ON Reservations.RoomNumber = Rooms.RoomNumber
WHERE Start_Date LIKE '2023-04%' AND TotalPer >= 1;


# 6. Write a query that returns a list of all guest names and the number of reservations per guest, sorted starting with the guest with the most reservations and then by the guest's last name.

SELECT  Res_Num, Last_Name, First_Name, Reservation_ID
FROM Reservations
inner JOIN Guests
ON Reservations.Reservation_ID = Guests.Guest_ID
ORDER BY Res_Num DESC

# 7. Write a query that displays the name, address, and phone number of a guest based on their phone number. Choose a phone number from the existing data.

SELECT First_Name, Last_Name, Address, Phone FROM Guests WHERE Phone = '(377) 507-0974'
