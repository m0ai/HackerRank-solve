SELECT ANIMAL_INS.NAME, ANIMAL_INS.DATETIME
FROM ANIMAL_INS
WHERE NOT EXISTS (SELECT ANIMAL_INS.ANIMAL_ID FROM ANIMAL_OUTS WHERE ANIMAL_INS.ANIMAL_ID = ANIMAL_OUTS.ANIMAL_ID) 
ORDER BY ANIMAL_INS.DATETIME
LIMIT 3
