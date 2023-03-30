-- 테이블 생성
CREATE TABLE transactions (
	id 		    INTEGER,
	amount      DECIMAL(12, 2),   -- 거래 금액(총 12자리 숫자, 소수점 이하 2자리까지)
	msg 	    VARCHAR(15),
	created_at   TIMESTAMPTZ      -- 거래 시각
);

drop table transactions;

SELECT * FROM transactions;

-- 레코드 등록
INSERT INTO
  transactions(id, amount, msg, created_at)
VALUES
  (1,   -24.20, 'Google',          '2021-11-01 10:02:48'),
  (2,   -36.30, 'Amazon',          '2021-11-02 10:01:05'),
  (3,   557.13, 'Udemy',           '2021-11-10 11:00:09'),
  (4,  -684.04, 'Bank of America', '2021-11-15 17:30:16'),
  (5,   495.71, 'PayPal',          '2021-11-26 10:30:20'),
  (6,   726.87, 'Google',          '2021-11-26 10:31:04'),
  (7,   124.71, 'Amazon',          '2021-11-26 10:32:02'),
  (8,   -24.20, 'Google',          '2021-12-01 10:00:21'),
  (9,   -36.30, 'Amazon',          '2021-12-02 10:03:43'),
  (10,  821.63, 'Udemy',           '2021-12-10 11:01:19'),
  (11, -837.25, 'Bank of America', '2021-12-14 17:32:54'),
  (12,  695.96, 'PayPal',          '2021-12-27 10:32:02'),
  (13,  947.20, 'Google',          '2021-12-28 10:33:40'),
  (14,  231.97, 'Amazon',          '2021-12-28 10:35:12'),
  (15,  -24.20, 'Google',          '2022-01-03 10:01:20'),
  (16,  -36.30, 'Amazon',          '2022-01-03 10:02:35'),
  (17, 1270.87, 'Udemy',           '2022-01-10 11:03:55'),
  (18, -540.64, 'Bank of America', '2022-01-14 17:33:01'),
  (19,  732.33, 'PayPal',          '2022-01-25 10:31:21'),
  (20, 1328.72, 'Google',          '2022-01-26 10:32:45'),
  (21,  824.71, 'Amazon',          '2022-01-27 10:33:01'),
  (22,  182.55, 'Coupang',         '2022-01-27 10:33:25'),
  (23,  -24.20, 'Google',          '2022-02-03 10:02:23'),
  (24,  -36.30, 'Amazon',          '2022-02-03 10:02:34'),
  (25,  -36.30, 'Notion',          '2022-02-03 10:04:51'),
  (26, 1549.27, 'Udemy',           '2022-02-14 11:00:01'),
  (27, -480.78, 'Bank of America', '2022-02-14 17:30:12')
;

-- 거래 내역 총합
SELECT
  SUM(amount)
FROM
  transactions;
  
-- 최대 거래 금액과 최소 거래 금액
SELECT
  MAX(amount), MIN(amount)
FROM
  transactions;
  
-- google 과 거래한 총 횟수
SELECT
  COUNT(*)
FROM
  transactions
WHERE
  msg = 'Google';
  
-- 거래 내역의 평균 금액
SELECT
  ROUND (AVG(amount), 2) -- 평균 계산 후, 소수점 2자리로 반올림
FROM
  transactions;
  
-- 거래 메시지 목록을 중복되지 않게 추출
SELECT
  DISTINCT(msg)
FROM
  transactions;
  
-- 거래 내역의 입금 총액
SELECT
  SUM(amount)
FROM
  transactions
WHERE
  amount >= 0;