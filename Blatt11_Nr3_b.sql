select s.Name, s.MatrNr
from Studenten s, hoeren h, Vorlesungen v
where s.MatrNr = h.MatrNr
and h.VorlNr = v.VorlNr
group by s.MatrNr, s.Name
having sum(v.sws) > 10