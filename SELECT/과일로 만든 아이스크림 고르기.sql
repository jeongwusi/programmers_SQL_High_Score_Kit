SELECT
    F.FLAVOR
FROM
    FIRST_HALF F,
    ICECREAM_INFO I
WHERE
    F.FLAVOR = I.FLAVOR AND F.TOTAL_ORDER > 3000 AND I.INGREDIENT_TYPE = 'fruit_based'
ORDER BY
    F.TOTAL_ORDER DESC;

    -- 문제

    -- 상반기 아이스크림 총주문량이 3,000보다 높으면서 아이스크림의 주 성분이 과일인 아이스크림의 맛을 총주문량이 큰 순서대로 조회하는 SQL 문을 작성해주세요.

    -- 총주문량이 큰 순서대로 조회하는 SQL문을 작성하는 부분에서 내림차순으로 해야 하는 점 염두에 두기