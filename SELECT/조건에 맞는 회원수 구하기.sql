SELECT COUNT(*) AS USERS
FROM USER_INFO
WHERE YEAR(JOINED) = 2021 AND AGE >= 20 AND AGE <= 29;

-- COUNT는 집계함수

-- https://school.programmers.co.kr/learn/courses/30/lessons/131535