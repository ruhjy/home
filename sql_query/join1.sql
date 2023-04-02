CREATE TABLE users (
	id			SERIAL PRIMARY KEY,
	nickname	VARCHAR(50),
	email		VARCHAR(100)
);

CREATE TABLE photos (
	id			SERIAL PRIMARY KEY,
	filename	VARCHAR(255),
	user_id		INTEGER REFERENCES users(id)
);

CREATE TABLE comments (
	id 			SERIAL PRIMARY KEY,
	body		VARCHAR(1000),
	user_id		INTEGER REFERENCES users(id),
	photo_id	INTEGER REFERENCES photos(id)
);

CREATE TABLE settings (
	id				SERIAL PRIMARY KEY,
	private 		BOOLEAN,
	adding_photos	VARCHAR(15),
	user_id			INTEGER REFERENCES users(id)
);

CREATE TABLE likes (
	id			SERIAL PRIMARY KEY,
	user_id		INTEGER REFERENCES users(id),
	photo_id	INTEGER REFERENCES photos(id)
);

-- users 레코드
INSERT INTO
  users(nickname, email)
VALUES
  ('cloudstudying_kr', 'mail@cloudstudying.kr'),
  ('hongpark_cs',      'sehongpark@cloudstudying.kr'),
  ('haesamq',          'haesamq@naver.com')
;

-- photos 레코드
INSERT INTO
  photos(filename, user_id)
VALUES
  ('cat-on-road.jpg',           1),
  ('sunset-over-the-ocean.jpg', 1),
  ('andromeda-galaxy.jpg',      1),
  ('white-tiger.jpg',           2),
  ('nero-the-black-cat.jpg',    2),
  ('deleted-image.jpg',         NULL),
  ('blocked-image.jpg',         NULL)
;
-- comments 레코드
INSERT INTO
  comments(body, user_id, photo_id)
VALUES
  ('meow',             1, 1),
  ('nyaong',           2, 1),
  ('냐옹',              3, 1),
  ('sunset',           1, 2),
  ('falling slowly',   2, 2),
  ('Andromeda galaxy', 1, 3),
  ('mysteriouse..!',   3, 3),
  ('wow..!',           3, NULL),
  ('oh..!',            3, NULL)
;
-- settings 레코드
INSERT INTO
  settings(private, adding_photos, user_id)
VALUES
  (FALSE, 'MANUAL', 1),
  (FALSE, 'AUTO',   2),
  (TRUE,  'AUTO',   3)
;
-- likes 레코드
INSERT INTO
  likes(user_id, photo_id)
VALUES
  (1,    1),
  (2,    1),
  (1,    2),
  (2,    2),
  (3,    2),
  (1,    3),
  (3,    3),
  (NULL, 6),
  (NULL, 7)
;