SELECT 
    REST_ID, 
    REST_NAME, 
    FOOD_TYPE, 
    FAVORITES, 
    ADDRESS, 
    ROUND(AVG(REVIEW_SCORE),2) AS SCORE
FROM 
    REST_INFO JOIN REST_REVIEW USING(REST_ID)
GROUP BY 
    REST_NAME
HAVING 
    ADDRESS LIKE "서울%"
ORDER BY 
    SCORE DESC, FAVORITES DESC

-- 문제 (Level 4)

-- REST_INFO와 REST_REVIEW 테이블에서 서울에 위치한 식당들의 식당 ID, 식당 이름, 음식 종류, 즐겨찾기수, 주소, 리뷰 평균 점수를 조회하는 SQL문을 작성해주세요. 이때 리뷰 평균점수는 소수점 세 번째 자리에서 반올림 해주시고 결과는 평균점수를 기준으로 내림차순 정렬해주시고, 평균점수가 같다면 즐겨찾기수를 기준으로 내림차순 정렬해주세요.

-- SELECT 절:

-- ROUND(AVG(REVIEW_SCORE),2)를 통해 리뷰 점수의 평균을 계산하고 소수점 둘째 자리까지 반올림하여 SCORE라는 별칭으로 표시

-- FROM 절:

-- 두 테이블을 REST_ID를 사용하여 데이터를 결합

-- GROUP BY 절:

-- 레스토랑 이름을 기준으로 그룹화, 이를 통해 레스토랑에 속하는 여러 리뷰를 하나의 레코드로 합칠 수 있다.

-- HAVING 절

-- LIKE 연산자를 이용해서 그룹화된 결과 중에서 주소가 "서울"로 시작하는 레스토랑만을 선택

-- ORDER BY 절

-- 내림차순으로 정렬