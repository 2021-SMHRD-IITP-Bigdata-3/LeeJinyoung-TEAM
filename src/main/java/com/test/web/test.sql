select * from users

CREATE TABLE users
(
    user_id             VARCHAR(30)      NOT NULL, 
    user_name           VARCHAR(20)       NULL, 
    user_phone          VARCHAR(20)      NULL, 
    user_birthdate      DATE              NULL, 
    user_height         int(12)     NULL, 
    user_weight         int(12)     NULL, 
    user_gym            VARCHAR(150)     NULL, 
    user_joindate       DATE              NULL, 
    user_expire_date    DATE              NULL, 
    manager_yn          VARCHAR(1)       NULL, 
    ad_comment          VARCHAR(2000)    NULL, 
    CONSTRAINT PK_users PRIMARY KEY (user_id)
)

CREATE TABLE user_exercises
(
    ex_seq           int(100)      NOT NULL  AUTO_INCREMENT, 
    user_id          VARCHAR(20)       NULL, 
    ex_name          VARCHAR(20)      NULL,
    ex_kinds          VARCHAR(20)      NULL, 
    CONSTRAINT FK_user_exercises PRIMARY KEY (ex_seq),
    FOREIGN KEY (user_id) REFERENCES users (user_id)
)

CREATE TABLE user_exercises
(
    ex_seq           int(100)      NOT NULL  AUTO_INCREMENT, 
    user_id          VARCHAR(20)       NULL, 
    ex_name          VARCHAR(20)      NULL, 
    ex_start_time    DATE              NULL, 
    ex_end_time      DATE     NULL, 
    ex_count         int(30)     NULL,
    CONSTRAINT FK_user_exercises PRIMARY KEY (ex_seq),
    FOREIGN KEY (user_id) REFERENCES users (user_id)
)

drop table user_exercises
update users
set user_birthdate='1995-08-20',user_height='80', user_weight='177',user_joindate='2021-10-14',user_expire_date='2022-10-14'
where  user_id = '1234';
insert



INSERT INTO users (user_id, user_name, user_gym)
VALUES('1234', '이진영2', '광주남구');


insert into user_exercises(user_id , ex_name, ex_kinds)
values('1234','체스트프레스','팔')

insert into user_exercises(user_id , ex_name, ex_kinds)
values('1234','벤치프레스','팔')


select * from users

CREATE TABLE users
(
    user_id             VARCHAR(30)      NOT NULL, 
    user_name           VARCHAR(20)       NULL, 
    user_phone          VARCHAR(20)      NULL, 
    user_birthdate      DATE              NULL, 
    user_height         int(12)     NULL, 
    user_weight         int(12)     NULL, 
    user_gym            VARCHAR(150)     NULL, 
    user_joindate       DATE              NULL, 
    user_expire_date    DATE              NULL, 
    manager_yn          VARCHAR(1)       NULL, 
    ad_comment          VARCHAR(2000)    NULL, 
    CONSTRAINT PK_users PRIMARY KEY (user_id)
)

CREATE TABLE user_exercises
(
    ex_seq           int(100)      NOT NULL  AUTO_INCREMENT, 
    user_id          VARCHAR(20)       NULL, 
    ex_name          VARCHAR(20)      NULL, 
    ex_start_time    DATE              NULL, 
    ex_end_time      DATE     NULL, 
    ex_count         int(30)     NULL, 
    CONSTRAINT FK_user_exercises PRIMARY KEY (ex_seq),
    FOREIGN KEY (user_id) REFERENCES users (user_id)
)
CREATE TABLE access
(
    user_id          VARCHAR(20)       NULL, 
    ex_day          DATE      NULL, 
    ex_start_time    time              NULL, 
    ex_end_time      time     NULL,
    FOREIGN KEY (user_id) REFERENCES users (user_id)
)


drop table access
drop table user_exercises

update users
set ex_start_time = '2021-10-15 06:01:00',ex_end_time='2021-10-15 07:01:00'
where user_id = '1234';

update users
set user_weight = 70
where user_id = '1234';

SELECT TIMESTAMPDIFF(minute,'2021-10-15 06:01:00','2021-10-15 07:01:00')

SELECT TIMESTAMPDIFF(minute, ex_start_time, ex_end_time) AS time_diff 
from users
where user_id = '1234';

select * from access

select a.ex_day , u.user_weight
from access a , users u
where a.user_id = '1234' and u.user_id = '1234';

alter table users modify ex_start_time DATETIME;
alter table users modify ex_end_time DATETIME;

alter table users add ex_start_time DATETIME NULL;
alter table users add ex_end_time DATETIME NULL; 

alter table users add day VARCHAR(20) NULL;
alter table users add timediff VARCHAR(20) NULL; 

INSERT INTO users (user_id, user_name, user_gym,manager_yn)
VALUES('4073', '노유종', '광주남구','1');

select day(ex_start_time,ex_end_time) as day
from users
where user_id = '1234'

select day(ex_start_time) as day , TIMESTAMPDIFF(minute, ex_start_time , ex_end_time) as timediff
	    from users
	    where user_id = '1234'
	    
select * from users
insert into users(user_id,user_phone, user_name,user_gym,user_expire_date,user_birthdate,manager_yn)
	    values (right('010-1234-5678',4),'010-1234-5678','이소연','광주남구', date_add(DATE_FORMAT(now(),'%Y-%m-%d'),INTERVAL 3 MONTH) ,'1995-08-20',0)
	    
INSERT INTO access (user_id, ex_day, ex_start_time , ex_end_time)

VALUES('1234', '2021-10-19', '07:00','09:00');

VALUES('1234', '2021-10-23', '07:00','09:00');



	    
select ex_day , TIMESTAMPDIFF(minute, ex_start_time , ex_end_time) as timediff
	    from access
	    where user_id = '1234'  
	    
update users set user_expire_date = DATE_ADD(user_expire_date, INTERVAL 1 MONTH)
where user_id = '1111'

select * from users

update users set day='10', timediff='10' where user_id='1234';