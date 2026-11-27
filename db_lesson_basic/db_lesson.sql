CREATE TABLE departments (
 department_id INT unsigned NOT NULL auto_increment PRIMARY KEY,
 name VARCHAR(20) NOT NULL,
 created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
DESC departments;
ALTER TABLE people ADD department_id INT unsigned NULL AFTER email;
DESC people;
INSERT INTO departments (name) VALUES ('営業'),('開発'),('経理'),('人事'),('情報システム');
SELECT * FROM people;
UPDATE people SET department_id = 1 WHERE person_id IN (1,2,3);
UPDATE people SET department_id = 2 WHERE person_id IN (4,6);
INSERT INTO people (name, email, department_id, age, gender)
VALUES
('杉本ちさと', 'sugimoto@beyond-works.co.jp', 2, 20, 2),
('深川まひろ', 'hukagawa@beyond-works.co.jp', 2, 20, 2),
('木村こうし', 'kimura@beyond-works.co.jp', 3, 26, 1),
('山口たくや', 'yamaguchi@beyond-works.co.jp', 4, 46, 1),
('佐藤まさる', 'satou@beyond-works.co.jp', 5, 56, 1);
INSERT INTO reports (id, person_id, content)
VALUES
(1, '今日は晴れていたので徒歩で移動しました'),
(2, '今日は新規顧客の開拓をしました'),
(3, '今日は通勤中に電車が事故を起したため、遅刻しました'),
(4, '今日は昼食をお店で食べました'),
(6, '今日は出張のため、新幹線で移動しました'),
(14, '今日は昼休憩中に、シャープペンシルの芯を買いました'),
(15, '今日の夕食はお店で食べたので、昼食は抜きました'),
(16, '今日は月末なので、少し残業をしました'),
(17, '今日は2件の面接がありました'),
(18, '今日は午後から上司との打ち合わせがありました');
SELECT * FROM people WHERE person_id gender= 1 ORDER BY age DESC;
SELECT
  `name`, `email`, `age`
FROM
  `people`
WHERE
  `department_id` = 1
ORDER BY
  `created_at`;
peopleテーブルを対象に、カラムが1に一致するレコードに絞り込み、レコードが作成された日が古い順に、name,email,ageの3つのデータを取り込む。

SELECT * FROM people WHERE (age BETWEEN 20 AND 29 AND gender= 2) OR (age BETWEEN 40 AND 49 AND gender= 1);
SELECT * FROM people WHERE department_id= 1 ORDER BY age ASC;
SELECT AVG(age) AS average_age FROM people WHERE department_id = 2 AND gender = 2;
SELECT * FROM people INNER JOIN departments ON people.department_id = departments.department_id INNER JOIN reports ON people.person_id = reports.person_id;
SELECT p.person_id, p.name, r.person_id FROM people p RIGHT OUTER JOIN reports r USING (person_id);

