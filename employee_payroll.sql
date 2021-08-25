create database payroll_service;


use payroll_service;


#UC2
Create Table employee_payroll(
	id INT unsigned NOT NULL AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	salary Double NOT NULL,
	start DATE NOT NULL,
	PRIMARY KEY (id)
	);


#UC3
INSERT INTO employee_payroll(name, salary, start) VALUES
	("Bill", "1000000.00", "2018-01-03"), 
	("Terisa", "2000000.00", "2019-11-13"),
	("Charlie", "3000000.00", "2020-05-21");
	

#UC4
select * from employee_payroll;


#UC5
select salary from employee_payroll 
	where name = "Bill";
select * from employee_payroll 
	where start BETWEEN CAST('2018-01-01' AS DATE) AND DATE(NOW());
		//Using cast to convert date in string format to date


#UC6
ALTER TABLE employee_payroll ADD gender CHAR(1) AFTER name;
UPDATE employee_payroll e set gender = 'M' where e.name = "Bill" or e.name = "Charlie"
UPDATE employee_payroll e set gender = 'F' where e.name = "Terisa";

//describe employee_payroll: to see description


#UC7(MIN/MAX/AVG/SUM/COUNT be collowd by GROUP BY)
SELECT SUM(salary) FROM employee_payroll
	where gender = "M" GROUP BY gender;
SELECT AVG(salary) FROM employee_payroll
	where gender = "M" GROUP BY gender;
SELECT MAX(salary) FROM employee_payroll;
SELECT MIN(salary) FROM employee_payroll;
SELECT COUNT(*) FROM employee_payroll;
SELECT gender,COUNT(*) FROM employee_payroll group by gender;
SELECT COUNT(*) FROM employee_payroll
	WHERE gender = "F" GROUP BY gender;