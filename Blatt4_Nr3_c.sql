select distinct a.Name, a.PersNr
from Assistenten a, Professoren p, Studenten s, hoeren h, Vorlesungen v
where a.Boss = p.PersNr
and p.PersNr = v.gelesenVon
and v.VorlNr = h.VorlNr
and h.MatrNr = s.MatrNr and s.Name = 'Carnap';