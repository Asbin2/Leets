# Write your MySQL query statement below
select Department, Employee, Salary
From(
select d.name as Department, e.name as Employee, e.Salary as Salary,
DENSE_RANK() OVER (
    PARTITION by e.departmentId
    order by e.salary desc
) As rnk
from Employee e 
join Department d
on e.departmentId = d.id 
) t
where rnk <=3
