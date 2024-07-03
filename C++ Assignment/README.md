---
noteId: "42314e10392711ef956ec3cc80b6a800"
tags: []

---

# CAR RENTAL SYSTEM: C++ ASSIGNMENT, CS253
- This is the repository for the C++ Assignment of CS253 completed by Aditi Khandelia under Prof. Indranil Saha.



## Following are the build instructions:

- Ensure that all the files are present in the same folder.
- Type the following command on terminal
```
g++ -std=c++17 -o main main.cpp
  
./main
```



## Following are the contents of the repository

### main.cpp
- The main function of the system
  
### class.cpp
- The main classes file for the system.
- Contains the classes Car_Class, Customer_Class, Employee_Class and Manager_Class.
- Contains Utility Functions.
  
### car_database.csv
This is the database for cars. Each car will have the following attributes:
- **Car_ID:** Unique identifier for each car.
- **Car_Plate_No:** License plate number of the car.
- **Company:** Car manufacturing company.
- **Model:** Car model.
- **Engine:** Type of engine.
- **Engine_Size:** Size of the engine.
- **Power_Output:** Power output of the engine.
- **Litres_p100kms:** Fuel efficiency in liters per 100 kilometers.
- **Transmission:** Type of transmission (e.g., automatic, manual).
- **Kilometres_Driven:** Total kilometers driven by the car.
- **Seating_Capacity:** Number of seats in the car.
- **No_Of_Airbags:** Number of airbags in the car.
- **Air_Conditioning:** Availability of air conditioning.
- **Infotainment_System:** Features of the infotainment system.
- **Colour:** Car color.
- **No_Of_Dents:** Number of dents on the car.
- **No_Of_Scratches:** Number of scratches on the car.
- **Condition_Of_Headlights:** Condition of the headlights.
- **Other_Remarks:** Additional remarks about the car.
- **Booking_Charge_Day:** Daily charge for booking the car.
- **Overdue_Charge:** Charge for overdue rentals.
- **Damage_Cost:** Cost of damages to the car.
- **Available_For_Rent:** Availability status for renting.
- **On_Rent:** Current rental status.
- **Start_Date:** Start date of the current rental period.
- **End_Date:** End date of the current rental period.
- **Base_Payment:** Base payment for the rental.
- **Current_No_Of_Days:** Number of days the car has been rented.
- **Current_Payment_Due:** Current payment due for the rental.
- **Renter_ID:** ID of the current renter.
- **Managing_Employee_ID:** ID of the employee managing the car.
  
### customer_database.csv
This is the database for customers. Each customer will have the following attributes:
- **Customer_ID:** Unique identifier for each customer.
- **Password:** Customer's login password.
- **First_Name:** Customer's first name.
- **Last_Name:** Customer's last name.
- **Age:** Customer's age.
- **Gender:** Customer's gender.
- **Personal_Email:** Customer's personal email address.
- **Phone_No:** Customer's phone number.
- **DL_No.:** Customer's driving license number.
- **Total_Rented:** Total number of cars rented by the customer.
- **Total_OverdueDents_Caused:** Total number of overdue dents caused by the customer.
- **Scratches_Caused:** Number of scratches caused by the customer.
- **Damage_Cost:** Cost of damages caused by the customer.
- **Cars_Rented:** List of cars rented by the customer.
- **Discount:** Applicable discount for the customer.
- **Eligibility:** Eligibility status of the customer.
  
### employee_database.csv
This is the database for employees. Each employee will have the following attributes:
- **Employee_ID:** Unique identifier for each employee.
- **Password:** Employee's login password.
- **First_Name:** Employee's first name.
- **Last_Name:** Employee's last name.
- **Age:** Employee's age.
- **Gender:** Employee's gender.
- **Official_Email:** Employee's official email address.
- **Personal_Email:** Employee's personal email address.
- **Phone_No:** Employee's phone number.
- **DL_No.:** Employee's driving license number.
- **Total_Rented:** Total number of cars rented by the employee.
- **Total_OverdueDents_Caused:** Total number of overdue dents caused by the employee.
- **Scratches_Caused:** Number of scratches caused by the employee.
- **Damage_Cost:** Cost of damages caused by the employee.
- **Cars_Rented:** List of cars rented by the employee.
- **Employee_Score:** Score assigned to the employee's performance.
- **Discount:** Applicable discount for the employee.
- **Eligibility:** Eligibility status of the employee.
  
### manager_database.csv
This is the database for managers. The system can have a single Manager. The Manager attributes are going to be the following:
- **Manager_ID:** Unique identifier for each manager.
- **Password:** Manager's login password.
- **First_Name:** Manager's first name.
- **Second_Name:** Manager's last name.
  
### parameters.csv
This is the database for storing certain global attributes. The following will be the parameters stored:
- **Total_No_Of_Cars_AllTime:** 
- **Total_No_Of_Customers_AllTime:** 
- **Total_No_Of_Employees_AllTime:** 
- **Total_No_Of_Managers_AllTime**
- **Current_Date**

### rental_logo.txt
This stores the logo for the system.

## Brief Overview Of The System
- This system is meant for facillitating car rentals.
- It caters to three types of users:
  1. Customers
  2. Employees
  3. Managers
- The no. of cars that can be booked is given by the eligibility of the user.
  1. This will be updated depending upon the Total_Rented(Total no. of days Rented), Total_Overdue(Total no. of days overdue) and Damage_Cost( Money to be paid for the damage caused).
  2. The maximum eligibility is 10. The minimum is 2. It is set to 5 for the default user.
- The Employees are entitled to a discount.
  1. This will be updated in accordance with the sale of the employees.
  2. It ranges between 15 and 25 and is set by default to 15.
 
# Happy Renting!
