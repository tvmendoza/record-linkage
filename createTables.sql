CREATE TABLE Patients
(
participant_ID int unique,
OneFloridaID int unique,
first_name varchar(255),
last_name varchar(255),
address varchar(255),
city varchar(255),
county varchar(255),
state varchar(255),
zipcode int,
dob varchar(255),
gender varchar(255),
race varchar(255),
PRIMARY KEY(participant_ID)
);

CREATE TABLE Insurance
(
insuranceID int unique,
participantsID int,
insuranceNumber varchar(255),
PRIMARY KEY(insuranceID),
FOREIGN KEY(participant_ID) REFERENCES Patients(participant_ID)
);
