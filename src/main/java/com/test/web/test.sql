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

drop table user_exercises
update users
set user_birthdate='1995-08-20',user_height='80', user_weight='177',user_joindate='2021-10-14',user_expire_date='2022-10-14'
where user_id = '4073';


INSERT INTO users (user_id, user_name, user_gym)
VALUES('1234', '노유종', '광주남구');