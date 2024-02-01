SELECT 
  PT_NAME,
  PT_NO,
  GEND_CD,
  AGE,
  COALESCE(TLNO, 'NONE') AS TLNO
FROM PATIENT
WHERE AGE <= 12 AND GEND_CD = 'W'
ORDER BY AGE DESC, PT_NAME ASC;

문제

PATIENT 테이블에서 12세 이하인 여자환자의 환자이름, 환자번호, 성별코드, 나이, 전화번호를 조회하는 SQL문을 작성하는 문제

전화번호가 없으면 'NONE'을 출력하고 결과는 나이를 기준으로 내림차순으로 정렬하고 나이가 같다면 환자이름을 기준으로 오름차순 정렬

COALESCE 함수를 이용해서 NULL값을 처리할 수 있다.

ORDER BY 절을 이용해서 정렬을 할 수 있으며, DESC는 내림차순, ASC는 오름차순이다.
