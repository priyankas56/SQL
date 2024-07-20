USE computer;
CREATE TABLE movie_info(id int,m_name varchar(20),m_director varchar(30),m_ticket int,m_theatre varchar(40));
ALTER TABLE movie_info ADD COLUMN m_hero varchar(20);
ALTER TABLE movie_info ADD COLUMN m_heroin boolean;
ALTER TABLE movie_info ADD COLUMN m_rating bigint;
ALTER TABLE movie_info ADD COLUMN m_releasing_Date bigint;
ALTER TABLE movie_info ADD COLUMN m_title varchar(30);

ALTER TABLE movie_info DROP COLUMN m_heroien;
ALTER TABLE movie_info DROP COLUMN m_realse_date;
ALTER TABLE movie_info DROP COLUMN m_running_days;
ALTER TABLE movie_info DROP COLUMN m_hero;

ALTER TABLE movie_info RENAME COLUMN m_hero TO new_m_hero;
ALTER TABLE movie_info RENAME COLUMN m_heroin TO new_m_heroin;
ALTER TABLE movie_info RENAME COLUMN m_rating TO new_m_rating;
ALTER TABLE movie_info RENAME COLUMN m_releasing_Date TO new_m_releasing_Date;
ALTER TABLE movie_info RENAME COLUMN m_title TO new_m_title;

INSERT INTO movie_info VALUES(1,'katera','sudeer',100,'prasanna','darshan',10,true,5,'kateraa');
INSERT INTO movie_info VALUES(2,'kalki','murali',100,'chitrakala','prabhas',25,true,3,'kalkii');
INSERT INTO movie_info VALUES(3,'aramani 4','avni',100,'pvr','raashi khanna',15,true,16,'aranmanai');
INSERT INTO movie_info VALUES(4,'toby','ravi rai kalasa',150,'pvr mall','raj b shetty',10,true,5,'toby official trailer');
INSERT INTO movie_info VALUES(5,'yuva','santosh ananddram',100,'vani theatre','yuva rajkumar',9,true,5,'yuva');
INSERT INTO movie_info VALUES(6,'pilwan','s krishna',100,'vr voyage','sudeep',10,true,17,'pilwaan');
INSERT INTO movie_info VALUES(7,'kgf','vijay kiragandur',100,'akshra theatre','yash',10,true,1,'kgf 2');
INSERT INTO movie_info VALUES(8,'uppi 2','upendra',100,'rockline cinimas','upendra',10,true,8,'uppi2');
INSERT INTO movie_info VALUES(9,'mussanje mathu','mahesh',100,'inox','sudeep',10,true,4,'musanjee mathu');
INSERT INTO movie_info VALUES(1,'lover','prabhu ram vyas',100,'gold cinimas','vijay devarkonda',10,true,5,'lover');

SELECT * FROM movie_info;
UPDATE movie_info SET m_name='salaga' where id=2;
ROLLBACK;
UPDATE movie_info SET m_director='mahesh babu' where id=5;
UPDATE movie_info SET m_theatre='pvr sonix' where new_m_rating=9;
UPDATE movie_info SET new_m_title='aramani 3' where id=3;
UPDATE movie_info SET m_name='kgf' where new_m_releasing_Date=1;
UPDATE movie_info SET m_theatre='vani theatre' where id=2;
UPDATE movie_info SET new_m_hero='kicha' where m_director='s krishna';
UPDATE movie_info SET m_ticket=200 where id=6;
UPDATE movie_info SET new_m_rating=7 where id=9;
UPDATE movie_info SET m_director='sudheer' where id=1;

DELETE FROM movie_info WHERE id=2;
DELETE FROM movie_info WHERE m_name='toby';
DELETE FROM movie_info WHERE m_director='s krishna';

SELECT * FROM movie_info WHERE id=1 or id=4 or id=7;
SELECT * FROM movie_info WHERE id=7 AND m_name='kgf';
SELECT * FROM movie_info WHERE id in(1,4,5,7);
SELECT * FROM movie_info WHERE id  not in(8,9,10);






