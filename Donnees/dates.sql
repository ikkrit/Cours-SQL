/*
NOM	                    DESCRIPTION
--------------------------------------------------------
CURDATE()	            Date actuelle
--------------------------------------------------------
CURTIME()	            Temps actuell
--------------------------------------------------------
CURRENT_DATE()	        Alias de curdate()
--------------------------------------------------------
CURRENT_TIME()	        Alias de curtime()
--------------------------------------------------------
CURRENT_TIMESTAMP()	    Alias de now()
--------------------------------------------------------
DATE()	                Extraction de la date
--------------------------------------------------------
DATEDIFF()	            Différence entre deux dates
--------------------------------------------------------
DATE_FORMAT()	        Formatage d'une date
--------------------------------------------------------
DAY()	                Extraction du jour
--------------------------------------------------------
HOUR()	                Extraction de l'heure
--------------------------------------------------------
LOCALTIME()	            Alias de now()
--------------------------------------------------------
LOCALTIMESTAMP()	    Alias de now()
--------------------------------------------------------
MINUTE()	            Extraction des minutes
--------------------------------------------------------
MONTH()	                Extraction du mois
--------------------------------------------------------
NOW()	                Horodatage (date + temps)
--------------------------------------------------------
SECOND()	            Extraction des secondes
--------------------------------------------------------
TIME()	                Extraction du temps
--------------------------------------------------------
TIMEDIFF()	            Différence entre deux temps
--------------------------------------------------------
WEEK()	                Extraction de la semaine
--------------------------------------------------------
YEAR()	                Extraction de l'année
--------------------------------------------------------
*/

%d -> 01 -> Jours
%m -> 05 -> mois
%Y -> 2020 -> Années

%H -> 00 -> Heures
%i -> 00 -> minutes
%S -> 00 -> Secondes

---NOW()---
SELECT NOW();          <---Retourne date actuel
(2020-03-03 16:51:00)  <---Exemple de format retourné

---DAY()---
SELECT DAY('2020-02-13'); <---Retourne le jour correspondant (ex le 2020-02-13 et le 13 eme jours)
SELECT MONTH('2020-02-13');
SELECT YEAR('2020-02-13');

SELECT HOUR('2020-02-13 16:45:21');

---DATEDIFF()---
SELECT DATEDIFF('2020-02-17', '2019-11-16');     <---Retourne la difference en jours

---DATE_FORMAT---
SELECT DATE_FORMAT('2020-12-06 14:07:23', '%d/%m/%Y, à %H:%i:%S');    <---Transforme le format
                  (2020-12-06 14:07:23) -> (06/12/2020 à 14:07:23)



