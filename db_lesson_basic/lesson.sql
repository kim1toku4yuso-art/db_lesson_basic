SHOW TABLES;
SELECT * FROM people;
SELECT * FROM reports;
DESCRIBE reports;
INSERT INTO reports (person_id, content)
    -> VALUES
    -> (1, '今日はPC基礎の学習をしました'),
    -> (2, '今日はIT基礎の学習をしました'),
    -> (3, '今日はHTMLの学習をしました'),
    -> (4, '今日はCSSの学習をしました'),
    -> (5,
    -> '今日はGitの学習をしました'),
    -> (6, '今日はDBの学習をしました'),
    -> (7, '今日はJavaScriptの学習をしました'),
    -> (8, '今日はjQueryの学習をしました'),
    -> (9, '今日はPHPの学習をしました'),
    -> (10,'今日もPHPの学習をしました'),
    -> (11,'今日はServerの学習をしました'),
    -> (12,'今日はExcelの学習をしました'),
    -> (77,'今日はDBの応用を学習しました');

     INSERT INTO reports (person_id, content)
    -> VALUES
    -> (1, '今日はPC基礎の学習をしました'),
    -> (2, '今日はIT基礎の学習をしました'),
    -> (3, '今日はHTMLの学習をしました'),
    -> (4, '今日はCSSの学習をしました'),
    -> (5, '今日はGitの学習をしました'),
    -> (6, '今日はDBの学習をしました'),
    -> (7, '今日はJavaScriptの学習をしました'),
    -> (8, '今日はjQueryの学習をしました'),
    -> (9, '今日はPHPの学習をしました'),
    -> (10,'今日もPHPの学習をしました'),
    -> (11,'今日はServerの学習をしました'),
    -> (12,'今日はExcelの学習をしました'),
    -> (13,''),
    -> (77,'今日はDBの応用を学習しました');

SELECT * FROM reports;
SELECT p.person_id, p.name, r.content
    -> FROM people AS p INNER JOIN reports AS r ON p.person_id = r.person_id;
    SELECT p.person_id, p.name, r.content
    -> FROM people p JOIN reports r ON p.person_id = r.person_id;


