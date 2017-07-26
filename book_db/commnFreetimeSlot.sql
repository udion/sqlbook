with batch as (
select *
from takes
where course_id = 'CS-101' and semester = 'Fall' and year = '2009'),
A as (
select takes.id, takes.course_id, takes.sec_id
from takes,batch
where takes.id = batch.id and takes.semester = 'Fall' and takes.year='2009'),
C as (
select *
from section
where section.semester = 'Fall' and section.year = '2009'),
stud_slot as (
select A.id, A.course_id, A.sec_id, C.time_slot_id
from A, C
where A.sec_id = C.sec_id and A.course_id = C.course_id)
select distinct X.time_slot_id
from time_slot as X
where X.time_slot_id in (
select Y.time_slot_id
from time_slot as Y
except
select stud_slot.time_slot_id
from stud_slot
)