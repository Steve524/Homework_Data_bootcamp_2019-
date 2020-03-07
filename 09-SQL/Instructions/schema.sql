CREATE TABLE "employees" (
    "emp_no" INT   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "gender" VARCHAR(1)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    PRIMARY KEY ("emp_no")
);

CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL,
    PRIMARY KEY ("emp_no"),
    FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no")
);

CREATE TABLE "departments" (
    "dept_no" VARCHAR(4)   NOT NULL,
    "dept_name" VARCHAR(30)   NOT NULL,
    PRIMARY KEY ("dept_no")
);

CREATE TABLE "dept_emp" (
    "dept_no" VARCHAR(4)   NOT NULL,
	"emp_no" INT   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL,
    FOREIGN KEY("dept_no") REFERENCES "departments" ("dept_no"),
    FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no"),
    PRIMARY KEY ("emp_no", "dept_no")
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(4)   NOT NULL,
    "emp_no" INT   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL,
    FOREIGN KEY("dept_no") REFERENCES "departments" ("dept_no"),
    FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no"),
    PRIMARY KEY ("dept_no", "emp_no")
);

CREATE TABLE "titles" (
    "emp_no" INT   NOT NULL,
    "title" VARCHAR(30)   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL,
    PRIMARY KEY ("emp_no", "title", "from_date"), 
    FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no")
);