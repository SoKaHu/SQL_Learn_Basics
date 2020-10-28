# SQL_Learn_Basics
SQL Queries


These are some of the SQL queries I wrote when visiting the university lecture: Grundlagen: Datenbanken at TU Munich in the winter term 2018.
The queries use the data base you can find here: http://hyper-db.com/interface.html

The tasks are the following:

**Exercise Sheet 4**

**Nr. 3b:** Find all students that attend the same lectures as Fichte (without duplicates).
**Nr. 3c:** Find all assisstents from professors that teach the student Carnap (without duplicates).
**Nr. 3e:** Find all lectures that are attended by students in their Bachelor's (semester 1-6). What are the lecture titles (without duplicates)?
**Nr. 3f:** Determine for every lecture how many students are attending. Also determine lectures without students. Sort the results descending order by the number of listeners.

**Exercise Sheet 11 Nr 3b:** 
select s.matrnr, s.name 
from studenten s 
where (
select sum(v.sws) from vorlesungen v, hoeren h
where v.vorlnr = h.vorlnr and h.matrnr = s.matrnr ) > 10

The where- part in this query is dependent on the outer query as it uses the s.matrnr.
Unnest this query. 

**Exercise Sheet 12** 
Given is an extended university scheme with the following additional relations StudentGF and ProfessorsF:
StudentenGF : {[MatrNr : integer, Name : varchar(20), Semester : integer, Geschlecht : char, Fakultaet : varchar(20)]}
ProfessorenF : {[PersNr : integer, Name : varchar(20), Rang : char(2), Raum : integer, Fakultaet : varchar(20)]}

**Nr 3a:** Determine the proportion of men in the various faculties.
**Nr 3b:** Determine the students that attend all lectures of their faculties.
