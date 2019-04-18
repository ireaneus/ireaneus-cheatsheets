```sql

# mysql default port 3306

# What does DD, DML, DCL stand for 
DDL is the abbreviation for Data Definition Language dealing with database schemas as well as the description of how data resides in the database. An example is CREATE TABLE command. 
DML denotes Data Manipulation Language such as SELECT, INSERT etc. 
DCL stands for Data Control Language and includes commands like GRANT, REVOKE etc.

# What are the types of joins
In MySQL the Joins are used to query data from two or more tables. The query is made using relationship between certain columns existing in the table. There are four types of Joins in MySQL. 
Inner Join returns the rows if there is at least one match in both the tables. 
Left Join returns all the rows form the left table even if there is no match in the right table. 
Right Join returns all the rows from the right table even if no matches exist in left table. 
Full Join would return rows when there is at least one match in the tables.

# what is heap
Basically HEAP tables are in-memory and used for high speed temporary storages. But TEXT or BLOB fields are not allowed within them. They also do not support AUTO INCREMENT.

# What are the different types of tables
MyISAM is the default table that is based on the sequential access method.

HEAP is the table that is used for fast data access but data will be lost if the table or system crashes. 
InoDB is the table that supports transactions using the COMMIT and ROLL BACK commands.
BDB can support transactions similar to InoDB but the execution is slower.

# what about disk is full
When the data disk is full and overloaded the way out is to create and soft link and move the .frm as well as the .idb files into that link location.


# To setup mysql initially
mysql_secure_installation

# To connect to a database
mysql -h localhost -u root -p

# To backup all databases
mysqldump --all-databases --all-routines -u root -p > ~/fulldump.sql
mysqldump -u root -ptecmint rsyslog > rsyslog.sql	# Specific databases

# To restore all databases
mysql -u root -p  < ~/fulldump.sql

# To create a database in utf8 charset
CREATE DATABASE owa CHARACTER SET utf8 COLLATE utf8_general_ci;

# To add a user and give rights on the given database
GRANT ALL PRIVILEGES ON database.* TO 'user'@'localhost'IDENTIFIED BY 'password' WITH GRANT OPTION;

# To list the privileges granted to the account that you are using to connect to the server. Any of the 3 statements will work. 
SHOW GRANTS FOR CURRENT_USER();
SHOW GRANTS;
SHOW GRANTS FOR CURRENT_USER;

# Basic SELECT Statement
SELECT * FROM tbl_name;

# Basic INSERT Statement
INSERT INTO tbl_name (col1,col2) VALUES(15,col1*2);

# Basic UPDATE Statement
UPDATE tbl_name SET col1 = "example";

# Basic DELETE Statement
DELETE FROM tbl_name WHERE user = 'jcole';


# Show commands
show databases;
show tables;        # after connecting to database

# To connect to a database
use database;

# To show fields of a table
describe tablename;

# Delete tables and databases
drop table name;
drop database name;

# View all content of a table
select * from tablename;
select fieldname from tablename;
select fieldname, fieldname from tablename where fieldname="value";
select count(*) from table;


# View size of database
SELECT table_schema AS "Database", 
ROUND(SUM(data_length + index_length) / 1024 / 1024, 2) AS "Size (MB)" 
FROM information_schema.TABLES 
GROUP BY table_schema;

# What is a .frm file 
FRM files are used to define the format of a table used with MySQL. MySQL is a cross-platform relational database. FRM files will have the same name as the table they reference, but with a .FRM extension. FRM files are created by MySQL when the table is created.
```
