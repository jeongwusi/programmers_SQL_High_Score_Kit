SELECT ANIMAL_TYPE, COALESCE(NAME, 'No name') AS NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;

-- SELECT ANIMAL_TYPE, COALESCE(NAME, 'No name') AS NAME, SEX_UPON_INTAKE

-- COALESCE 함수를 이용해서 NULL 값이 'No name'이 될 수 있도록 처리

-- https://school.programmers.co.kr/learn/courses/30/lessons/59410