/*
NOM	                DESCRIPTION	USAGE
----------------------------------------------------------------------------------------------------------
AES_DECRYPT()	    Déchiffrement AES à l'aide d'une clé	AES_ENCRYPT(crypt_data, key)
----------------------------------------------------------------------------------------------------------
AES_ENCRYPT()	    Chiffrement AES à l'aide d'une clé	AES_ENCRYPT(str, key)
----------------------------------------------------------------------------------------------------------
CREATE_DIGEST()	    Génération d'un hash sous forme de chaîne binaire	CREATE_DIGEST(algorithm, str)
----------------------------------------------------------------------------------------------------------
MD5()	            Génération d'un hash MD5 (128 bits)	MD5(str)
----------------------------------------------------------------------------------------------------------
SHA()	            Génération d'un hash SHA-1 (160 bits)	SHA(str)
----------------------------------------------------------------------------------------------------------
SHA1	            Alias de sha()	SHA1(str)
----------------------------------------------------------------------------------------------------------
SHA2()          	Génération d'un hash SHA-2 (256 bits par défaut)	SHA2(str, length)
----------------------------------------------------------------------------------------------------------
*/

> Chiffrement : (Donnée en clair) -> clé -> (Donnée chiffrée)
> Hashage     : (Donnée en clair) -> (hash) 

N bits = N/4 caractères

SELECT MD5('bonjour') -> 128 bits (32 caractères) char(32)   <---Obsolète

SELECT SHA1('bonjour');                                      <---Obsolète

---Sur MySQL : SHA2 -> (choix) 224 bits, 256 bits, 384 bits, 512 bits

SELECT SHA2('bonjour', 224);         <---Choix du hash après la virgule


-----------------------------CHIFFREMENT MySQL-----------------------------

SELECT AES_ENCRYPT('bonjour', 'secret');
SELECT AES_DECRYPT()

SET @passw = AES_ENCRYPT('bonjour', 'secret');
SELECT @passw;
SET @text = AES_DECRYPT(@passw, 'secret');
SELECT @text;