#insert into student(netid,studentname,phonenumber,birthdate, username,password) values ('125', 'omar rizk', '7324945564', '2005-05-29', 'user', 'pass');
#insert into professor(professorid,professorname,phone,officenumber,courses,username,password) values ('555', 'prof', '7321110000', '2', 'databases', 'username', 'password');
#insert into professor(professorid,professorname,phone,officenumber,courses, username,password) values ('222', 'professor', '7321110002', '3', 'calculus', 'username', 'password');
#insert into department(deptid, professorid, departmentname) values ('198', '555', 'computer science');
#insert into department(deptid, professorid, departmentname) values ('111', '222', 'math');
#insert into course(courseid,deptid,coursename,departmentname,sectionNumber,listofTimes) values ('336', '198', 'databases', 'computer science', '2','2022-08-11 5:30:00');
#insert into course(courseid,deptid,coursename,departmentname,sectionNumber,listofTimes) values ('211', '111', 'calculus', 'math', '2','2022-08-11 5:30:00');
#insert into coursedetails(deptid,courseid,professorid,coursename,semesterNumber,credits) values ('198', '336', '555', 'databases', '4', '4');
#insert into result(netid,studentname,courseid,grade) values ('125', 'omar rizk','336', 'B+');
#insert into result(netid,studentname,courseid,grade) values ('125', 'omar rizk','211', 'A');
#insert into departmentadmin(did,dname,d_deptid) values ('1', 'computer science', '198');
#insert into registrationdetails(netid,studentname,courseid,coursename) values (125, 'omar rizk', '336', 'databases');
#insert into registrationdetails(netid,studentname,courseid,coursename) values (125, 'omar rizk', '211', 'calculus');
#insert into login(lid,username,password, birthdate) values (125, 'user', 'pass', '2005-05-29');

select * from department;
select * from student;
select * from professor;
select * from course;
select * from coursedetails;
select * from result;
select * from login;
select * from departmentadmin;
select * from registrationdetails;


