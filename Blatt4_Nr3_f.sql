select distinct v.Titel, count(h.MatrNr) as AnzahlHoerer
from Vorlesungen v left outer join hoeren h on (v.VorlNr = h.VorlNr)
group by v.Titel
order by AnzahlHoerer desc;