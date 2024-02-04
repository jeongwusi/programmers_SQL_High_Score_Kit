SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID
HAVING COUNT(*) > 1
ORDER BY USER_ID, PRODUCT_ID DESC;

-- GROUP BY USER_ID, PRODUCT_ID

-- GROUP BY를 통해 동일한 회원 ID와 상품 ID 조합에 대해 그룹화합니다. 이는 동일한 회원이 동일한 상품을 여러 번 구매한 경우에 해당 그룹을 형성합니다.

-- HAVING COUNT(*) > 1

-- 그룹화된 결과 결과 중에서 해당 그룹의 행 개수가 1보다 큰 경우만 선택합니다. 즉, 동일한 회원이 동일한 상품을 재구매한 경우를 필터링합니다.