select * from person;
select * from department;

--1
Select personName, departmentname, departmentcode from
person P inner join department D
on p.DepartmentID=d.DepartmentID;

--2
Select DepartmentName, Max(salary) As 'Max_Sal', Min(salary) As 'Min_Sal' from
person P inner join department D
on P.DepartmentID=D.DepartmentID
group by D.departmentname;

--3
Select DepartmentName from person P inner join Department D
on p.DepartmentID=D.DepartmentID
group by Departmentname having sum(salary)>100000;


--4
select personName,salary,DepartmentName from
person P inner join Department D
on p.DepartmentID=d.DepartmentID
where P.city='jamnagar';

--5
Select personname from person P
where DepartmentID is null;

--6
select departmentName,count(personId) from person P inner join Department D
on P.DepartmentID=D.DepartmentID
group by D.DepartmentName;

--7
select city,avg(salary) from person
where city='Ahmedabad'
group by city 


--8
Select Concat(personName,' earns ',salary,' from department ',departmentName)
from person P inner join Department D
On P.DepartmentID=D.DepartmentID


--9
select DepartmentName from person P inner join Department D
On P.DepartmentID=D.DepartmentID
group by DepartmentName
having Count(p.DepartmentID)=0;

--10
select city,departmentName ,sum(salary) As 'Total_Sal',avg(salary) as 'Avg_Sal', Max(salary) as 'Max_Sal'
from person P inner join Department D
On P.DepartmentID=D.DepartmentID
Group by city,DepartmentName;


--11
select distinct city from person;

--12
select DepartmentName from person P inner join Department D
On P.DepartmentID=D.DepartmentID
group by DepartmentName
having Count(p.DepartmentID)>1;


--13
select left(personName,3)+right(city,3) from person


--14
update person
set salary=salary + salary*0.1 
where departmentID=(select DepartmentId from Department where DepartmentName='computer');




--15
select personName from person 
where datediff(day,joiningdate,getdate())>365;




