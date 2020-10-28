select distinct s.Name, s.MatrNr
from Studenten s1, Studenten s2, hoeren h1, hoeren h2
where s1.MatrNr = h1.MatrNr
and s2.MatrNr = h2.MatrNr
and s1MatrNr != s2.MatrNr
and h1.VorlNr= h2.VorlNr and s2.Name =’Fichte’;