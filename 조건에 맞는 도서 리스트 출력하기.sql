SELECT BOOK_ID, DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE FROM BOOK WHERE CATEGORY = '인문' AND YEAR(PUBLISHED_DATE) = '2021';

-- BOOK 테이블에서 2021년에 출판된 인문 카테고리에 속하는 도서 리스트를 찾아서 도서 BOOK_ID와 PUBLISHED_DATE를 출럭하는 SQL문을 작성하는 문제

-- DATE_FORMAT

-- PUBLISHED_DATE의 데이트 포맷이 예시와 동일하게 하기 위해 DATE_FORMAT 함수를 이용

-- 이때 주의해야 할 점은 DATE_FORMAT에서 '%Y-%m-%d'를 만약 '%Y-%M-%D' 이렇게만 작성해도 데이트 포맷이 완전 다르게 나온다.

-- AND

-- 조건식이 2개 이상 필요한 경우 AND를 이용해서 연결 해줄 수 있다.

-- 처음에 WHERE CATEGORY = '인문' AND WHERE YEAR(PUBLISHED_DATE) = '2021'이라고 적었는데 이렇게 작성하면 안되고 WHERE CATEGORY = '인문' AND YEAR(PUBLISHED_DATE) = '2021'이라고 적어야 한다.

-- YEAR

-- 날짜에서 연도만 추출할 수 있다.