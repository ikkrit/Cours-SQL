/*
NOM	                     DESCRIPTION
---------------------------------------------------------------------------------------
ASCII()	                 Valeur ASCII du premier caractère d'une chaîne
---------------------------------------------------------------------------------------
BIN()	                 Représentation binaire d'un nombre
---------------------------------------------------------------------------------------
BIT_LENGTH()	         Longueur d'une chaîne en bits
---------------------------------------------------------------------------------------
CHAR_LENGTH()	         Nombre de caractères d'une chaîne
---------------------------------------------------------------------------------------
CHARACTER_LENGTH()	     Alias de char_length()
---------------------------------------------------------------------------------------
CONCAT()	             Concaténation de chaînes
---------------------------------------------------------------------------------------
CONCAT_WS()	             Concaténation de chaînes avec un séparateur
---------------------------------------------------------------------------------------
ELT()	                 Nème élément d'une liste de chaînes
---------------------------------------------------------------------------------------
INSTR()	                 Position d'une occurrence dans une chaîne
---------------------------------------------------------------------------------------
LCASE()	                 Alias de lower()
---------------------------------------------------------------------------------------
LENGTH()	             Longueur d'une chaîne en octets
---------------------------------------------------------------------------------------
LOCATE()	             Position de la première occurrence dans une chaîne
---------------------------------------------------------------------------------------
LOWER()	                 Conversion d'une chaîne en minuscule
---------------------------------------------------------------------------------------
LTRIM()	                 Suppression des caractères blancs en début de chaîne
---------------------------------------------------------------------------------------
OCT()	                 Représentation octale d'un nombre
---------------------------------------------------------------------------------------
REPLACE()	             Remplacement des caractères d'une chaîne
---------------------------------------------------------------------------------------
REVERSE()	             Inversion des caractères d'une chaîne
---------------------------------------------------------------------------------------
RTRIM()	                 Suppression des caractères blancs en fin de chaîne
---------------------------------------------------------------------------------------
SUBSTR()	             Extraction d'une sous-chaîne
---------------------------------------------------------------------------------------
SUBSTRING()	             Alias de substr()
---------------------------------------------------------------------------------------
TRIM()	                 Suppression des caractères blancs en début et fin de chaîne
---------------------------------------------------------------------------------------
UCASE()	                 Alias de upper()
---------------------------------------------------------------------------------------
UPPER()	                 Conversion d'une chaîne en majuscule
---------------------------------------------------------------------------------------
*/

SOURCE C:/Users/Kirik/OneDrive/Bureau/Utile MySql/Donnees/chaine_carc_res.sql

---char_length()---
SELECT carbrand_name, char_length(carbrand_name)
FROM fv_carbrands;                                        <---Compter le nombre de caracteres de fv_carbrands

---concat()---
SELECT concat(carbrand_name, ' (', carbrand_country, ')') <---Concatener carbrand_name avec carbrand_country de la table fv_carbrands     
FROM fv_carbrands;

---upper()---
SELECT upper(carbrand_name) FROM fv_carbrands;            <---Convertire champs carbrand_name de la table fv_carbrands en MAJUSCULE
SELECT lower(carbrand_name) FROM fv_carbrands;            <---En MINUSCULE

---reverse()---
SELECT reverse(carbrand_name) FROM fv_carbrands;          <---Inverse les caracteres de la chaine

---trim()---
SELECT trim(carbrand_name) FROM fv_carbrands;             <---Supprime les espaces blanc (Les espaces)

---replace()---
UPDATE fv_carbrands                                                    <---De la table
SET carbrand_website = REPLACE(carbrand_website, 'group', 'groupe')    <---Remplace 'group' par 'groupe' du champ carbrand_website
WHERE carbrand_name = 'Renault';                                       <---Du champ carbrand_name de la ligne Renault

---locate()---
SELECT carbrand_name, LOCATE('yo', carbrand_name) FROM fv_carbrands;   <---Position d'une occurence dans une chaine de caractere

---substring---
SELECT carbrand_name, substring(carbrand_name, 2, 3) FROM fv_carbrands;  <---Extraction d'une sous chaine(une parti de chaine de caractere)
                                                                         <---carbrand_name a partir de la position 2 et retourner 3 caracteres

                                                                         
