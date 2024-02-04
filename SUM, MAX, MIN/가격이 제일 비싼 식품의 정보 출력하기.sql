SELECT *
FROM FOOD_PRODUCT
WHERE PRICE = (SELECT MAX(PRICE) FROM FOOD_PRODUCT);

-- WHERE PRICE = (SELECT MAX(PRICE) FROM FOOD_PRODUCT)

-- PRICE 열의 값이 FOOD_PRODUCT 테이블에서 최대값과 동일한 행만 선택하도록 하는 조건

-- MAX(PRICE)는 FOOD_PRODUCT 테이블에서 PRICE 열의 최대값을 가져오는 서브쿼리

-- 따라서 이 조건은 가격이 최대인 행만 선택하게 된다.