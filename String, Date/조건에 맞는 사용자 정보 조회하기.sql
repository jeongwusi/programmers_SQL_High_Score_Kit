SELECT USER_ID, 
        NICKNAME, 
        CONCAT(CITY,' ',STREET_ADDRESS1,' ',STREET_ADDRESS2) AS '전체주소',
        CONCAT(SUBSTR(TLNO,1,3),'-',SUBSTR(TLNO,4,4),'-',SUBSTR(TLNO,8,4)) AS '전화번호'
FROM USED_GOODS_USER
WHERE USER_ID IN (
    SELECT WRITER_ID
    FROM USED_GOODS_BOARD
    GROUP BY WRITER_ID
    HAVING COUNT(*) >=3
)
ORDER BY USER_ID DESC;

-- 서브 쿼리에서 여러개면 IN, 1개면 =

-- SUBSTR를 이용해서 문자열 자를 수 있다.

-- USED_GOODS_BOARD 테이블에서 WRITER_ID를 기준으로 그룹화하고, 각 작성자가 게시한 게시물의 수가 3 이상인 작성자들의 WRITER_ID를 선택합니다. 이는 서브쿼리 (SELECT WRITER_ID FROM USED_GOODS_BOARD GROUP BY WRITER_ID HAVING COUNT(*) >=3) 를 통해 수행됩니다.
-- 선택된 작성자들의 WRITER_ID를 사용하여 USED_GOODS_USER 테이블에서 해당 작성자들의 정보를 가져옵니다.
-- 가져온 정보 중에서 USER_ID, NICKNAME, CITY, STREET_ADDRESS1, STREET_ADDRESS2, TLNO 컬럼 값을 사용하여 새로운 열인 전체주소와 전화번호를 생성합니다. 이때 CONCAT() 함수와 SUBSTR() 함수를 사용하여 주소와 전화번호의 형식을 지정합니다.
-- 최종 결과는 USER_ID를 내림차순으로 정렬하여 반환됩니다.

-- https://school.programmers.co.kr/learn/courses/30/lessons/164670