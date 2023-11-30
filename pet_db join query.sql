select * from pets

select * from owners

select * from pets 
left join owners
on pets.ownerid = owners.ownerid;

select pets.name ,owners.name from pets
left join owners
on pets.ownerid = owners.ownerid

--using aliases in join query--
select a.name as Owners_Name,a.ownerid,a.city,b.name as Pets_Name,b.gender,b.kind
from owners as a
left join pets as b
on a.ownerid = b.ownerid ;

--inner join--
select * 
from pets as a 
inner join procedurehistory as b
on a.petid=b.petid;

--full outer join--
select * from pets as a 
full outer join procedurehistory as b
on a.petid = b.petid;

--multiple join on different table-
select * from procedurehistory as A
left join proceduredetails as B
on A.proceduresubcode = B.proceduresubcode
and A.proceduretype = B.proceduretype

select * from procedurehistory;
---complex joins --
select * from pets as A
inner join procedurehistory as B
on A.petid = B.petid
left join proceduredetails as C
on B.proceduretype = C.proceduretype
and B.proceduresubcode = C.proceduresubcode;

--cleaning up joins-
select a.petid,a.name,a.kind,a.gender,a.age,a.ownerid,b.proceduretype,b.proceduresubcode,c.description,c.price
 
from pets as A
inner join procedurehistory as B
on A.petid = B.petid
left join proceduredetails as C
on B.proceduretype = C.proceduretype
and B.proceduresubcode = C.proceduresubcode;
 
--- cross join--