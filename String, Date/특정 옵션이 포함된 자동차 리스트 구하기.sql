SELECT CAR_ID, CAR_TYPE, DAILY_FEE, OPTIONS
FROM CAR_RENTAL_COMPANY_CAR
HAVING OPTIONS LIKE '%네비게이션%'
ORDER BY CAR_ID DESC

-- HAVING OPTIONS LIKE '%네비게이션%'

-- OPTIONS 컬럼에서 특정 문자가 포함 되었는지 확인하기 위해 %를 2번 사용하면 된다.

-- https://school.programmers.co.kr/learn/courses/30/lessons/157343