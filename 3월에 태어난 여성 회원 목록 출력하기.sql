SELECT MEMBER_ID, MEMBER_NAME, GENDER, DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') AS DATE_OF_BIRTH
FROM MEMBER_PROFILE
WHERE MONTH(DATE_OF_BIRTH) = 03 AND TLNO != 'NULL' AND GENDER = 'W'
ORDER BY MEMBER_ID;

-- MEMBER_PROFILE 테이블에서 생일이 3월인 여성 회원의 ID, 이름, 성별, 생년월일을 조회하는 SQL문을 작성하는 문제

-- 이때 전화번호가 NULL인 경우는 출력대상에서 제외하고, 결과는 회원ID를 기준으로 오름차순 정렬

-- NULL은 출력 대상에서 제외시켜야 하기 때문에 != 'NULL' 또는 AND NOT TLNO IS NULL 이라는 방식으로 제외를 시켜줄 수 있다.

-- 그리고 ORDER BY 절에서 DESC 안붙이면 ASC로 처리된다. (자동으로 오름차순)