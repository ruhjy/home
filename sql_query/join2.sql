SELECT
  comments.body,
  users.nickname
FROM
  comments
JOIN users ON
  users.id = comments.user_id
WHERE
  comments.photo_id = 1
;

-- 사진#5의 파일명 과 사진 게시자 닉네임 을 조회
SELECT
  photos.filename,
  users.nickname
FROM
  photos
JOIN users ON
  users.id = photos.user_id
WHERE
  photos.id = 5;

select * from photos;  

