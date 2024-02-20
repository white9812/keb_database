create table DEPT(
	DEPTNO integer NOT NULL,
    DNAME varchar(14),
    LOC varchar(13),
    PRIMARY KEY (DEPTNO)
    );
desc Dept;
create table EMP(
	EMPNO integer NOT NULL,
    ENAME varchar(10),
    JOB varchar(9),
	MGR  integer NULL,
    HIREDATE DATE NULL,
    SAL INTEGER NULL,
    COMM INTEGER NULL,
    DEPTNO integer NULL,
    PRIMARY KEY (EMPNO),
    FOREIGN KEY (DEPTNO) REFERENCES DEPT(DEPTNO) ON DELETE CASCADE 
    );
desc EMP;

INSERT INTO Dept(deptno,dname,loc) values(10,'ACCOUNTING','NEW YORK');
INSERT INTO Dept(deptno,dname,loc) values(20,'RESEARCH','DALLAS');
INSERT INTO Dept(deptno,dname,loc) values(30,'SALES','CHICAGO');
INSERT INTO Dept(deptno,dname,loc) values(40,'OPERATIONS','BOSTON');


SELECT *FROM Dept;
INSERT INTO Emp(empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7369,'SMITH','CLERK',7902,'1980-12-17 00:00:00',800,NULL,20);
INSERT INTO Emp(empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7499,'ALLEN','SALESMAN',7698,'1981-02-20 00:00:00',1600,300,30);
INSERT INTO Emp(empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7521,'WARD','SALESMAN',7698,'1981-02-22 00:00:00',1250,500,30);
INSERT INTO Emp(empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES (7566,'JONES','MANAGER',7839,'1981-04-02 00:00:00',2975,NULL,20);
select * from emp;
INSERT INTO Emp(empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES(7654,'MARTIN','SALESMAN',7698,'1981-09-28 00:00:00',1250,1400,30);

select ename,loc from emp,dept where emp.deptno=dept.deptno;

alter table dept add managername varchar(10);

select * from dept;

set SQL_SAFE_UPDATES=0;
UPDATE DEPT
SET MANAGERNAME ='JONES'
WHERE DEPTNO=20;
select * from dept;
