-- 주석: 실행되지 않는 쿼리(설명을 위함)
-- 테이블 생성 쿼리(SQL 명령)
CREATE TABLE burgers (
	id INT,				-- id(숫자)
	name VARCHAR(50),	-- 이름(최대 50글자)
	price INT,			-- 가격(숫자)
	gram INT,			-- 무게(숫자)
	kcal INT,			-- 열량(숫자)
	protein INT			-- 단백질량(숫자)
);

-- 생성 쿼리
INSERT INTO
	burgers(id, name, price, gram, kcal, protein)
VALUES
	(1, '행운버거 골드 스페셜', 6000, 227, 699, 26);
	
-- 생성 쿼리#2
INSERT INTO
	burgers(id, name, price, gram, kcal, protein)
VALUES
	(2, '행운버거 골드', 5300, 222, 540, 25),
	(3, '트리플 치즈버거', 6300, 219, 619, 36),
	(4, '빅맥', 5300, 223, 583, 27),
	(5, '맥스파이시 상하이 버거', 5300, 235, 494, 20);



-- 조회 쿼리
SELECT
	*
FROM
	burgers;

-- 수정 쿼리
UPDATE
	burgers
SET
	price = 1000;

-- 수정 쿼리#2
UPDATE
	burgers
SET
	price = 500
WHERE
	id = 4;
	
SELECT * FROM burgers ORDER BY id DESC;

-- 삭제 쿼리
DELETE FROM
	burgers
WHERE 
	id = 4;