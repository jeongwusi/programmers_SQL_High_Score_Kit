SELECT
    FACTORY_ID,
    FACTORY_NAME,
    ADDRESS
FROM
    FOOD_FACTORY
HAVING
    ADDRESS LIKE '강원도%'
ORDER BY
    FACTORY_ID;

-- 문제

-- FOOD_FACTORY 테이블에서 강원도에 위치한 식품공장의 공장 ID, 공장 이름, 주소를 조회하는 SQL문을 작성해주세요. 이때 결과는 공장 ID를 기준으로 오름차순 정렬해주세요.

-- HAVING 절

-- LIKE 연산자를 이용해서 강원도에 위치한 식품공장만 조회되도록 작성