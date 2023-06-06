DROP TABLE IF EXISTS tb_salaries CASCADE;
CREATE TABLE IF NOT EXISTS tb_salaries(
			player_id_salaries SERIAL PRIMARY KEY,
			player_name VARCHAR(45),
			Season_start_year SMALLINT,
			salary NUMERIC(10,2),
			inflation_adj_salary NUMERIC(10,2)
);

SELECT * FROM tb_salaries;

DROP TABLE IF EXISTS tb_boxscores CASCADE;
CREATE TABLE IF NOT EXISTS tb_boxscores(
	game_id INT,
	team_name VARCHAR(65),
	player_name VARCHAR(45),
	mp TIME,
	fg SMALLINT,
	fga SMALLINT,
	three_points SMALLINT,
	three_points_a SMALLINT,
	ft SMALLINT,
	fta SMALLINT,
	orb SMALLINT,
	drb SMALLINT,
	trb SMALLINT,
	ast SMALLINT,
	stl SMALLINT,
	blk SMALLINT,
	tov SMALLINT,
	pf SMALLINT,
	pts SMALLINT,
	plus_minus SMALLINT,
	isStarter BOOLEAN
);

DROP TABLE IF EXISTS tb_player_info;
CREATE TABLE IF NOT EXISTS tb_player_info( 
     id_player SERIAL PRIMARY KEY,
	 player VARCHAR(65),
	 date_from SMALLINT,
	 date_to SMALLINT,
	 pos VARCHAR(3),
	 feet INT,
	 inches INT,
	 Height VARCHAR(10),
	 weight SMALLINT, 
	 birth_date DATE,
	 colleges VARCHAR(100)
);


UPDATE tb_player_info SET Height = REPLACE(Height, ',', '.')::NUMERIC;
ALTER TABLE tb_player_info ALTER COLUMN Height TYPE NUMERIC(10,3) USING Height::Numeric(10,3);
SELECT * FROM tb_player_info;

select player_name, MAX(salary) AS salarios from tb_salaries GROUP BY salarios ORDER BY player_name, MAX DESC LIMIT 5; 

-- CREATE TABLE tb_2021_22_stats (
-- 	id_player SERIAL PRIMARY KEY,
-- 	player VARCHAR(45),
-- 	pos  VARCHAR(3),
-- 	age SMALLINT,
-- 	team VARCHAR(5),
-- 	game 
-- );
