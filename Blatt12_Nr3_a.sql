with 

Komplettfakultaet as (
select Fakultaet, count(*) as Total 
from StudentenGF
group by Fakultaet),

Malefakultaet as (
select Fakultaet, count (*) as Males
from StudentenGF 
where Geschlecht = 'male'
group by Fakultaet)


select k.Fakultaet, (case when Males is null then 0 else m.Males/k.Total*1.00)
from Komplettfakultaet k left outer join Malefakultaet m on k.Fakultaet = m.Fakultaet
