SELECT ROUND(AVG(DAILY_FEE), 0) AS AVERAGE_FEE FROM CAR_RENTAL_COMPANY_CAR WHERE CAR_TYPE = 'SUV'

-- CAR_RENTAL_COMPANY_CAR 테이블에서 자동차 종류가 'SUV'인 자동차들의 평균 일일 대여 요금을 출력하는 SQL문을 작성하는 문제

-- 평균을 구하기 위해 AVG 함수 이용

-- 소수점을 반올림 하기 위해 ROUND 함수 이용

-- SELECT ROUND(123.456, 0) -> 소수점 모두 반올림
-- SELECT ROUND(123.456, 1) -> 소수점 첫 번째 자리까지 반올림
-- SELECT ROUND(123.456, 2) -> 소수점 두 번째 자리까지 반올림


