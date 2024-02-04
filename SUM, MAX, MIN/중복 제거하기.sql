SELECT COUNT(DISTINCT NAME)
FROM ANIMAL_INS
WHERE NAME IS NOT NULL;

-- SELECT COUNT(DISTINCT NAME)

-- NAME 열에서 중복을 제외한 유니크한 값들의 개수를 세는 역할

-- WHERE NAME IS NOT NULL

-- NULL이 아닌 이름만 고려하도록 WHERE절 사용

-- https://school.programmers.co.kr/learn/courses/30/lessons/59408