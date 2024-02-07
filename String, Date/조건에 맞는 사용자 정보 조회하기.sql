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

-- SUBSTR(TLNO,1,3) -> TLNO에서 1부터 3까지

-- SELECT WRITER_ID FROM USED_GOODS_BOARD GROUP BY WRITER_ID HAVING COUNT(*) >=3

-- USED_GOODS_BOARD 테이블에서 WRITER_ID를 기준으로 그룹화한다. 이렇게 하면 동일한 작성자가 여러 개의 게시물을 작성한 경우에 한 번만 나타나게 된다.

-- 그룹화된 결과에서 COUNT 함수를 사용하여 각 작성자별로 작성한 게시물의 개수를 셀 수 있습니다. 따라서 그룹화된 결과에서 각 작성자가 작성한 게시물의 개수가 3 이상인 경우만 선택합니다.

-- https://school.programmers.co.kr/learn/courses/30/lessons/164670