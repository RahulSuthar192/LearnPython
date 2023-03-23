use employees;

# Insert Statement (type integers as plain no. without using quotes for smooth operation of mySQL)
select * from employees order by emp_no desc limit 10;

insert into employees(
            emp_no,
            birth_date,
            first_name,
            last_name,
            gender,
            hire_date
) values(
		    '999801',
            '1986-04-21',
            'John',
            'Smith',
            'M',
            '2011-01-01'
);

# exercise L-126 (will get foreign key error if emp_no 999803 data is not recorded in employees table )
select * from titles order by emp_no desc limit 10;

INSERT INTO employees
VALUES
(
 999803,
    '1977-09-14',
    'Johnathan',
    'Creek',
    'M',
    '1999-01-01'
);

insert into titles(
            emp_no,
            title,
            from_date
) values(
		   999803,
           'Senior ENgineer',
           '1997-10-01'
);

# L-130 inserting into new table 
select * from departments limit 10;

create table departments_dup_practice
(
             dept_no char(4) not null,
             dept_name varchar(40) not null
);
# since column are same * will do the job
select * from departments_dup_practice;

# L-131 practice
insert into departments_dup_practice
values(
            'd010',
		    'Business Analysis'
);

# L-133 update statement

select * from employees
where emp_no = 999801;

update employees
set    first_name = 'Stella',
       last_name = 'Parkinson1',
       birth_date = '1990-12-31',
       gender = 'F'
where emp_no = 999801;

# L-136 commit and rollback
select * 
from departments_dup_practice;

commit;

update departments_dup_practice
set    dept_no = 'd011',
       dept_name = 'Quality Control';

rollback;
set autocommit=0;

commit;

# L-139 delete statement (on cascade - if value deleted in parent table primary key then all values from child table will be deleted as well )
select * from employees
where emp_no = 999903;

# delete from table name where condition
delete from employees
where emp_no = 999903;

 rollback;      






