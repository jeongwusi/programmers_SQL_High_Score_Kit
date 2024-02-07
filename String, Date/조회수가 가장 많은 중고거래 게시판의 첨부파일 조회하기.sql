SELECT CONCAT('/home/grep/src/',BOARD_ID,'/',FILE_ID,FILE_NAME,FILE_EXT) AS FILE_PATH
FROM USED_GOODS_FILE
WHERE BOARD_ID = (SELECT BOARD_ID FROM USED_GOODS_BOARD ORDER BY VIEWS DESC LIMIT 1)
ORDER BY FILE_ID DESC

-- SELECT CONCAT('/home/grep/src/',BOARD_ID,'/',FILE_ID,FILE_NAME,FILE_EXT) AS FILE_PATH

-- `CONCAT()` 함수는 여러 문자열을 결합하여 하나의 문자열로 반환

-- WHERE BOARD_ID = (SELECT BOARD_ID FROM USED_GOODS_BOARD ORDER BY VIEWS DESC LIMIT 1)

-- 가장 상위에 있는 레코드의 BOARD_ID 값을 선택하는 서브쿼리

-- 즉, 이 부분은 가장 조회수가 높은 게시판의 BOARD_ID를 반환

-- https://school.programmers.co.kr/learn/courses/30/lessons/164671