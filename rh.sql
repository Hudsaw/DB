create table departments( 
    dept_no char(4) not null, primary key(dept_no), 
    dept_name varchar(40) not null 
);

create index iddept_name on departments(dept_name);

create table employees( 
    emp_no int not null, primary key(emp_no), 
    birth_date date not null, 
    first_name varchar(14) not null, 
    last_name varchar(16) not null, 
    gender char(1) check (gender in ('M','F')) not null, 
    hire_date date not null 
);

create table dept_emp( 
    dept_no char(4) not null constraint fk_dept_no references departments(dept_no), 
    emp_no int not null constraint fk_emp_no references employees(emp_no), 
    primary key(dept_no, emp_no), 
    from_date date not null, 
    to_date date not null 
);

create table dept_manager( 
    emp_no int not null constraint fk_emp_no1 references employees(emp_no), 
    dept_no char(4) not null constraint fk_dept_no1 references departments(dept_no), 
    primary key(emp_no, dept_no), 
    from_date date not null, 
    to_date date not null 
);

create table salaries( 
    emp_no int not null constraint fk_emp_no2 references employees(emp_no), 
    saraly int not null, 
    from_date date not null, 
    to_date date not null, 
    primary key(emp_no, from_date) 
);

create table titles( 
    emp_no int not null constraint fk_emp_no3 references employees(emp_no), 
    title varchar(50) not null, 
    from_date date not null, 
    to_date date, 
    primary key(emp_no, from_date, title) 
);

desc departments


desc employees


desc dept_emp


desc dept_manager


desc salaries


desc titles


