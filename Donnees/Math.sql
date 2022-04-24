/*
NOM	DESCRIPTION	USAGE

ABS()	Valeur absolue	ABS(n)
ACOS()	Arc cosinus	ACOS(n)
ASIN()	Arc sinus	ASIN(n)
ATAN()	Arc tangente	ATAN(n)
CEIL()	Alias de ceiling()	CEIL(n)
CEILING()	Arrondi à l'entier supérieur	CEILING(n)
CONV()	Conversion d'une base à une autre	CONV(n, from, to)
COS()	Cosinus	COS(n)
COT()	Cotangente	COT(n)
DEGREES()	Conversion radians en degrés	DEGREES(n)
EXP()	Exponentielle	EXP(n)
FLOOR()	Arrondi à l'entier inférieur	FLOOR(n)
LN()	Alias de log()	LN(n)
LOG()	Logarithme népérien	LOG(n)
LOG(n, base)
LOG2()	Logarithme en base 2	LOG2(n)
LOG10()	Logarithme en base 10	LOG10(n)
MOD()
%
MOD	Modulo (reste de la division Euclidienne)	MOD(n, m)
n % m
n MOD m
PI()	Valeur de PI	PI()
POW()	Puissance	POW(n, p)
POWER()	Alias de pow()	POWER(n, p)
RADIANS()	Conversion degrés en radians	RADIANS(n)
RAND()	Valeur aléatoire à virgule flottante	RAND()
RAND(seed)
ROUND()	Arrondi sur décimales	ROUND(n)
ROUND(n, decimals)
SIGN()	Signe	SIGN(n)
SIN()	Sinus	SIN(n)
SQRT()	Racine carrée	SQRT(n)
TAN()	Tangente	TAN(n)
TRUNCATE()	Troncature sur décimales	TRUNCATE(n, decimals)
*/

SELECT ABS(-1);            <---Exemple retourne la valeur absolu de -1
SELECT PI();               <---Retourne PI
SELECT PI() + 0.00000000;  <---Retourne avec choix de decimal
SELECT RADIANS(60);        <---Retourne 60 degrées en radians
SELECT DEGREES(60);        <---Retourne 60 radians en degrées

SELECT CEIL(14.26334);            <---Retourne la valeur arrondi à l'entier superieur
SELECT FLOOR(14.26334);           <---Retourne la valeur arrondi à l'entier inferieur
SELECT ROUND(14.26334);           <---Arrondir la valeur
SELECT ROUND(14.26334, 3);        <---Arrondi la valeur au 3eme chiffres aprés la virgule
SELECT TRUNCATE(14.26334, 2);     <---Tronque au deuxieme chiffres aprés la virgule

SELECT CONV(145, 10, 2);          <---Convertis 145 de base 10 en base 2 (binaire)








