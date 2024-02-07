SELECT 
  HISTORY_ID, 
  CAR_ID, 
  DATE_FORMAT(START_DATE, '%Y-%m-%d') AS START_DATE,   
  DATE_FORMAT(END_DATE,'%Y-%m-%d') AS END_DATE,
  IF((TIMESTAMPDIFF(DAY, START_DATE, END_DATE) + 1)>=30, '장기 대여','단기 대여') AS RENT_TYPE
FROM
  CAR_RENTAL_COMPANY_RENTAL_HISTORY
HAVING 
  START_DATE LIKE '2022-09%'
ORDER BY 
  HISTORY_ID DESC

-- IF((TIMESTAMPDIFF(DAY, START_DATE, END_DATE) + 1)>=30, '장기 대여','단기 대여') AS RENT_TYPE

-- TIMESTAMPDIFF(unit, datetime_expr1, datetime_expr2) 형식을 가지며, 각 인자는 다음과 같습니다:

-- unit: 차이를 계산할 때 사용할 단위입니다. 일(day), 시(hour), 분(minute) 등이 가능합니다.
-- datetime_expr1, datetime_expr2: 차이를 계산할 두 날짜나 시간 값입니다. 이 값들은 DATE, DATETIME, 또는 TIMESTAMP 형식이어야 합니다.

-- HAVING START_DATE LIKE '2022-09%'

-- HAVING 절과 LIKE 연산자를 이용해서 필터링