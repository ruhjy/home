-- 학생 테이블 생성
CREATE TABLE students (
	id INT,
	nickname VARCHAR(20),
	math_score INT,
	english_score INT,
	programming_score INT
);

-- 전체 조회
SELECT * FROM students;

-- 학생 레코드 추가
INSERT INTO students
	(id, nickname, math_score, english_score, programming_score)
VALUES
	(1, 'Sparkies', 98, 96, 93),
	(2, 'Soldier', 82, 66, 98),
	(3, 'Lapooheart', 84, 70, 82),
	(4, 'Slick', 87, 99, 98),
	(5, 'Smile', 75, 73, 70),
	(6, 'Jellyboo', 84, 82, 70),
	(7, 'Bagel', 97, 91, 87),
	(8, 'Queen', 99, 100, 88);

-- 모든 과목 성적이 다 90점 이상인 학생 정보
SELECT * FROM students
WHERE math_score >= 90 AND english_score >= 90 AND programming_score >= 90;

-- 75점 미만 과목이 하나라도 있는 학생 정보
SELECT * FROM students
WHERE math_score < 75 OR english_score < 75 OR programming_score < 75;

-- 모든 학생 정보와 성적 총점
SELECT * FROM students;

SELECT
  *,
  math_score + english_score + programming_score AS total
FROM
  students;

-- 모든 학생 정보와 성적 평균
SELECT
  *,
  (math_score + english_score + programming_score) / 3 AS average
FROM
  students;
  
SELECT *, (math_score + english_score + programming_score) / 3 AS average FROM students 
ORDER BY average DESC;

-- 총점이 270 이상인 학생의 이름, 성적 총점, 성적 평균
SELECT
  nickname,
  (math_score + english_score + programming_score) AS total,
  (math_score + english_score + programming_score) / 3 AS avgerage
FROM
  students
WHERE
  (math_score + english_score + programming_score) >= 270
ORDER BY
  total DESC;