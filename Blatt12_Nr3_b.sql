select s.Name, s.MatrNr
from StudentenGF s
where not exists 
(select *
from Vorlesungen v, ProfessorenF p 
where v.gelesenVon = p.PersNr
and p.Fakultaet = s.Fakultaet and not exists 
(select *
from hoeren h
where h.VorlNr = v.VorlNr
and h.MatrNr = s.MatrNr));