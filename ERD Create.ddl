CREATE TABLE Customer (CustomerID int(20) NOT NULL AUTO_INCREMENT, firstName varchar(100) NOT NULL, surname varchar(150) NOT NULL, emailAddress varchar(255) NOT NULL UNIQUE, address varchar(255) NOT NULL, phoneNumber int(11) NOT NULL UNIQUE, valuedCustomer bit(1) NOT NULL, PRIMARY KEY (CustomerID));
CREATE TABLE Job (JobID int(10) NOT NULL AUTO_INCREMENT, `Customer CustomerID` int(20) NOT NULL, UserstaffID int(20) NOT NULL, dateAccepted timestamp NOT NULL, dateExpected timestamp NOT NULL, status varchar(10) NOT NULL, priority int(1) NOT NULL, price float NOT NULL, duration int(5) NOT NULL, PRIMARY KEY (JobID));
CREATE TABLE Job_Task (JobJobID int(10) NOT NULL, TasktaskID int(10) NOT NULL, UserstaffID int(20) NOT NULL, discountType varchar(255), status varchar(255) NOT NULL, startTime timestamp NOT NULL, endTime timestamp NULL, PRIMARY KEY (JobJobID, TasktaskID));
CREATE TABLE Payment (PaymentID int(10) NOT NULL AUTO_INCREMENT, JobJobID int(10) NOT NULL, `Customer CustomerID` int(20) NOT NULL, amount float NOT NULL, paymentType varchar(255) NOT NULL, nameOnCard varchar(255), last4digits int(4), cardType varchar(100), expiryDate timestamp NULL, PRIMARY KEY (PaymentID));
CREATE TABLE Report (ReportID int(10) NOT NULL AUTO_INCREMENT, UserStaffID int(20) NOT NULL, dateCreated timestamp NOT NULL, PRIMARY KEY (ReportID));
CREATE TABLE Rota (RotaID int(10) NOT NULL AUTO_INCREMENT, `date` timestamp NOT NULL, shiftStartTime timestamp NOT NULL, shiftEndTime timestamp NOT NULL, clockInTime timestamp NULL, clockOutTime timestamp NULL, PRIMARY KEY (RotaID));
CREATE TABLE Task (JobJobID int(10) NOT NULL, TaskID int(10) NOT NULL AUTO_INCREMENT, taskDuration int(5) NOT NULL, description varchar(255), price float NOT NULL, location varchar(255) NOT NULL, PRIMARY KEY (TaskID));
CREATE TABLE `User` (StaffID int(20) NOT NULL AUTO_INCREMENT, RotaRotaID int(10) NOT NULL, firstName varchar(100) NOT NULL, surname varchar(150) NOT NULL, role varchar(150) NOT NULL, location varchar(150) NOT NULL, PRIMARY KEY (StaffID));
ALTER TABLE `User` ADD CONSTRAINT FKUser604843 FOREIGN KEY (RotaRotaID) REFERENCES Rota (RotaID);
ALTER TABLE Report ADD CONSTRAINT FKReport501948 FOREIGN KEY (UserStaffID) REFERENCES `User` (StaffID);
ALTER TABLE Payment ADD CONSTRAINT FKPayment954821 FOREIGN KEY (`Customer CustomerID`) REFERENCES `Customer ` (CustomerID);
ALTER TABLE Payment ADD CONSTRAINT FKPayment170102 FOREIGN KEY (JobJobID) REFERENCES Job (JobID);
ALTER TABLE Job_Task ADD CONSTRAINT FKJob_Task131706 FOREIGN KEY (UserstaffID) REFERENCES `User` (StaffID);
ALTER TABLE Job ADD CONSTRAINT FKJob577887 FOREIGN KEY (UserstaffID) REFERENCES `User` (StaffID);
ALTER TABLE Job_Task ADD CONSTRAINT FKJob_Task968081 FOREIGN KEY (TasktaskID) REFERENCES Task (TaskID);
ALTER TABLE Job_Task ADD CONSTRAINT FKJob_Task457140 FOREIGN KEY (JobJobID) REFERENCES Job (JobID);
ALTER TABLE Job ADD CONSTRAINT FKJob118602 FOREIGN KEY (`Customer CustomerID`) REFERENCES `Customer ` (CustomerID);

