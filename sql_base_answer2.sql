USE worldcup;

-- 問11
SELECT * FROM players
    WHERE name REGEXP 'ニョ' ;
-- 12
SELECT * FROM countries
    WHERE NOT group_name = 'A';
-- 13 pdfの結果が間違えてる id=1 => BMI:22.84
SELECT *,weight/POW(height/100,2) as BMI
FROM players
WHERE weight/POW(height/100,2) >= 20
  AND weight/POW(height/100,2) < 21
ORDER BY id;

SELECT *,weight/POW(height/100,2) as BMI 
FROM players
ORDER BY BMI DESC;
-- 14
SELECT * FROM players
    WHERE height < 165 OR weight < 60;

-- 15
SELECT * FROM players
    WHERE height < 170 AND position IN ('FW','MF');

-- 16
SELECT DISTINCT POSITION FROM players;
-- 17
SELECT name,club,height+weight FROM players;
-- 18
SELECT CONCAT(name,'選手のポジションは','\'',position,'\'',"です")  FROM players;
-- 19
SELECT name,club,height+weight AS '体力指数' FROM players;
-- 19
SELECT * FROM countries;
-- 20
SELECT * FROM countries
    ORDER BY ranking ASC;
-- 21
SELECT * FROM players
    ORDER BY birth DESC;