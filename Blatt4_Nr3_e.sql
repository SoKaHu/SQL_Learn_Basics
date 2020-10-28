select distinct v.Titel
from Studenten s, hoeren h, Vorlesungen v
where s.MatrNr = h.MatrNr
and h.VorlNr = v.VorlNr
and s.Semester between 1 and 6;