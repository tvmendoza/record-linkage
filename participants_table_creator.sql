CREATE TABLE participants_table
(
participants_id number(10) CONSTRAINT pk_p_p1 PRIMARY KEY,
one_florida_id varchar(255),
first_name varchar(255),
last_name varchar(255),
address varchar(255),
city varchar(255),
county varchar(255),
state varchar(255),
zipcode number(5),
dob varchar(255),
gender varchar(255),
race varchar(255)
);

CREATE TABLE insurance_table
(
insurance_id number(10) CONSTRAINT pk_p_p2 PRIMARY KEY,
participants_id CONSTRAINT fk_f_f1 REFERENCES participants_table(participants_id),
insuranceNumber varchar(255)
);
