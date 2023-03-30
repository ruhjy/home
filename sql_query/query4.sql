-- 2022년 1월 순수익(이체 총합)은?
SELECT
  SUM(amount)
FROM
  transactions
WHERE
  created_at >= '2022-01-01'
AND
  created_at < '2022-02-01';
  
-- 2021년 12월의 순수익
SELECT
  SUM(amount)
FROM
  transactions
WHERE
  created_at >= '2021-12-01'
AND
  created_at < '2022-01-01';

-- EXTRACT() : 시간값에서 특정 속성을 숫자로 추출!
SELECT
  SUM(amount)
FROM
  transactions
WHERE
  EXTRACT(YEAR FROM created_at) = 2021
    AND
  EXTRACT(MONTH FROM created_at) = 12;
  
-- 2021년 11월의 순수익
SELECT
  SUM(amount)
FROM
  transactions
WHERE
  EXTRACT(YEAR FROM created_at) = 2021
    AND
  EXTRACT(MONTH FROM created_at) = 11;
  
-- TO_CHAR() : 특정값을 다양한 형식 문자로 바꿔!  
SELECT
  SUM(amount)
FROM
  transactions
WHERE
  TO_CHAR(created_at, 'YYYY-MM') = '2021-11'
;

-- 2021년 11월과 2022년 1월의 총 순수익
SELECT
  SUM(amount)
FROM
  transactions
WHERE
  TO_CHAR(created_at, 'YYYY-MM') = '2021-11'
    OR
  TO_CHAR(created_at, 'YYYY-MM') = '2022-01'
;

-- 2021년 11월 ~ 2022년 1월까지의 총 지출
SELECT
  SUM(amount)
FROM
  transactions
WHERE
  amount < 0
    AND
  (TO_CHAR(created_at, 'YYYY-MM') = '2021-11'
    OR
  TO_CHAR(created_at, 'YYYY-MM') = '2021-12'
    OR
  TO_CHAR(created_at, 'YYYY-MM') = '2022-01')
;