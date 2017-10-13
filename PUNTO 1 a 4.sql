--1. Create Tablespace
--Create a tablespace called "COURSES" with two datafiles each one of 50Mb, the name of the datafiles should be: courses1.dbf and courses2.dbf

CREATE TABLESPACE COURSES  
datafile 'courses1.dbf' SIZE 50M,
'courses2.dbf' SIZE 50M
AUTOEXTEND ON NEXT 100K MAXSIZE 500M
EXTENT MANAGEMENT LOCAL 
SEGMENT SPACE MANAGEMENT AUTO 
ONLINE;

--2. Create profile
-----Create a profile named "admin" with the following specifications: a) Idle time of 15 minutes b) Failed login attempts 3 c) 2 sessions per user

CREATE PROFILE admin LIMIT
SESSIONS_PER_USER 2
CPU_PER_SESSION UNLIMITED
CPU_PER_CALL UNLIMITED
CONNECT_TIME 240
IDLE_TIME 15
PRIVATE_SGA 20 M
FAILED_LOGIN_ATTEMPTS 3
PASSWORD_LIFE_TIME 15
PASSWORD_REUSE_MAX 4
PASSWORD_LOCK_TIME 1
PASSWORD_GRACE_TIME 2;


--3. Create user
--Create an user named with your github's username (In my case would be amartinezg) with unlimited space on tablespace, the profile should be "admin"

CREATE USER taniamilena
IDENTIFIED BY therrerm2017
DEFAULT TABLESPACE COURSES
QUOTA UNLIMITED ON COURSES
PROFILE admin;


GRANT ALL PRIVILEGES
ON ANY COURSES
TO taniamilena 
WITH GRANT OPTION;

[(columna1[,columna2,...])]
[ON usuario[.objeto] | ANY TABLE]
TO {nombreUsuario | rol | PUBLIC}
[WITH GRANT OPTION];




