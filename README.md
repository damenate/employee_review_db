# Employee Reviews with a Database

## Description

Modify an existing Employee Reviews program to persist the information in a database. 

## Objectives

* Understand how the database can store information between code executions
* Understand ActiveRecord
* Be able to write migrations
* Be able to create, read from, and write to a development database
* Build a test suite which can access a test database

## Normal Mode

Modify existing Employee Reviews code to store all instance variables in Employee and Department objects to the database.  In addition, modify the test suite so that all existing tests pass given the new persistent data store.

Write additional methods on your models:

* Return the total number of employees in a department.
* Return the employee who is being paid the least in a department.
* Return all employees in a department, ordered alphabetically by name.
* Return all employees who are getting paid more than the average salary.
* Return all employees with names which are palindromes.
* Return the department with the most employees.
* Move everyone from one department to another department.
* Give a raise of 10% to ALL employees with good reviews.  This is different from the raise method which already exists, and also needs to operate over all employees of ALL departments.

TEST-DRIVEN DEVELOPMENT.
