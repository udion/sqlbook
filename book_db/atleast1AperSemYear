with X as (select id, semester, year, grade
from takes as A
where not exists (
select distinct id, semester, year
from takes as B
where B.id = A.id
except
select distinct id, semester, year
from takes as C
where C.id = A.id and (C.grade = 'A' or C.grade is null)
))
select id, name
from student
where student.id in (select id from X)