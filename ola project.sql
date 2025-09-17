# OLA MY SQL PROJECT

CREATE DATABASE ola;

use  ola;

#Insights

 # 1. Retrieve all successful bookings:
 
 create view successfull_bookings as
  select * from bookings
 where booking_status ="Success";
 
 select * from successfull_bookings;
 
 # 2. Find the average ride distance for each vehicle type:
 
 create view  average_ride_distance_for_each_vehicle_type as
 select vehicle_type, avg(Ride_Distance) as Average_Ride_Distance
 from bookings
 group by vehicle_type
 order by avg(Ride_Distance) desc ;
 
 select * from average_ride_distance_for_each_vehicle_type;
 
 # 3. Get the total number of cancelled rides by customers:
 
 create view Total_cancelled_rides_by_customers as
 select count(Booking_Status) as Total_cancelled_rides_by_customers
 from bookings
 where Booking_Status="canceled by customer";
 
 select * from Total_cancelled_rides_by_customers;
 
 # 4. List the top 5 customers who booked the highest number of rides:
 
create view top5_customers as
select Customer_ID, count(Booking_ID) as total_bookings
from bookings
group by Customer_ID
order by count(Booking_ID) desc
limit 5;

select * from top5_customers;
 
 # 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
 
create view total_cancelled_by_drivers_issues as
select count(Canceled_Rides_by_Driver) as cancelled_by_drivers_due_to_personal_and_car_related_issues
from bookings
where Canceled_Rides_by_Driver= 'Personal & Car related issue';

select * from total_cancelled_by_drivers_issues;
 
 # 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
 
create view maximum_and_minimum_driverrating as
select max(Driver_Ratings) as Maximum_Driver_Rating, min(Driver_Ratings) as Minimum_Driver_Rating
from bookings;

select * from maximum_and_minimum_driverrating;

 # 7. Retrieve all rides where payment was made using UPI:

create view upi_payment_rides as
select * from bookings
where Payment_Method="upi";

select * from upi_payment_rides;
 
 # 8. Find the average customer rating per vehicle type:

create view average_customer_rating_per_vehicle_type as
select Vehicle_Type, avg(Customer_Rating) as avg_customer_rating
 from bookings
 group by Vehicle_Type
 order by avg(Customer_Rating) desc;
 
select * from average_customer_rating_per_vehicle_type;
 
 # 9. Calculate the total booking value of rides completed successfully:
 
create view total_booking_value_of_complete_rides as
select sum(Booking_Value) as total_booking_value
from bookings
where Booking_Status ="success";

select * from total_booking_value_of_complete_rides;
 
 # 10. List all incomplete rides along with the reason:
 
create view incomplete_rides_with_reasons as
select * from bookings
where Booking_Status<>"success";

select * from incomplete_rides_with_reasons;


----------------------------------------------------------------------------------------------------------------------------------

#Retrive All Answers

# 1. Retrieve all successful bookings:

select * from successfull_bookings;

# 2. Find the average ride distance for each vehicle type:

select * from average_ride_distance_for_each_vehicle_type;

# 3. Get the total number of cancelled rides by customers:

select * from Total_cancelled_rides_by_customers;

# 4. List the top 5 customers who booked the highest number of rides:

select * from top5_customers;

# 5. Get the number of rides cancelled by drivers due to personal and car-related issues:

select * from total_cancelled_by_drivers_issues;

# 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

select * from maximum_and_minimum_driverrating;

# 7. Retrieve all rides where payment was made using UPI:

select * from upi_payment_rides;

# 8. Find the average customer rating per vehicle type:

select * from average_customer_rating_per_vehicle_type;

# 9. Calculate the total booking value of rides completed successfully:

select * from total_booking_value_of_complete_rides;

# 10. List all incomplete rides along with the reason:

select * from incomplete_rides_with_reasons;


