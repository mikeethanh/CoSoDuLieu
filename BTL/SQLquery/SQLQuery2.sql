create database BTL_CSDL 
on 
(	name = 'BTL_CSDL_database',
	filename = 'E:\theFourSemester\CoSoDuLIeu\BTL\database\BTL_CSDL_database.mdf',
	size = 20mb,
	maxsize = 200mb,
	filegrowth = 5mb)
log on 
(	name = 'BTL_CSDL_log',
	filename = 'E:\theFourSemester\CoSoDuLIeu\BTL\database\BTL_CSDL_log.ldf',
	size = 10mb,
	maxsize = 100mb,
	filegrowth = 5mb)

