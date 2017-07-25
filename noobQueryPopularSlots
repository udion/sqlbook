with A(slots, n_bookids) as(
select cd.bookings.slots, count(distinct cd.bookings.bookid)
from cd.bookings
group by cd.bookings.slots)
select *
from A
where A.n_bookids> 500;