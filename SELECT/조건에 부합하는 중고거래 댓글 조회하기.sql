SELECT
    B.TITLE,
    B.BOARD_ID,
    R.REPLY_ID,
    R.WRITER_ID,
    R.CONTENTS,
    DATE_FORMAT(R.CREATED_DATE, "%Y-%m-%d") AS CREATED_DATE
FROM 
    USED_GOODS_BOARD B, 
    USED_GOODS_REPLY R
WHERE
    B.BOARD_ID = R.BOARD_ID AND YEAR(B.CREATED_DATE) = 2022 AND MONTH(B.CREATED_DATE) = 10
ORDER BY
    R.CREATED_DATE, B.TITLE

-- 문제

-- USED_GOODS_BOARD와 USED_GOODS_REPLY 테이블에서 2022년 10월에 작성된 게시글 제목, 게시글 ID, 댓글 ID, 댓글 작성자 ID, 댓글 내용, 댓글 작성일을 조회하는 SQL문을 작성해주세요. 결과는 댓글 작성일을 기준으로 오름차순 정렬해주시고, 댓글 작성일이 같다면 게시글 제목을 기준으로 오름차순 정렬해주세요.

-- SELECT 절:

-- CREATED_DATE의 포맷이 예시의 포맷과 일치하게 DATE_FORMAT 사용

-- FROM 절:

-- 두개의 테이블을 이용(USED_GOODS_BOARD와 USED_GOODS_REPLY)

-- 각 테이블에 별칭을 붙임

-- WHERE 절:

-- 테이블에서 특정 조건에 부합하는 데이터만 조회

-- YEAR(), MONTH()를 통해서 연도와 월을 추출

-- ORDER BY

-- 오름차순이라서 따로 키워드 안붙임