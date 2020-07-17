set _METHOD_=%1
set _DBNAME_=dbname
set _DBUSER_=root
set _DBPASS_=""
set _DB_=%cd%\database\%_DBNAME_%.sql.bak
set _MYSQL_="c:\xampp\mysql\bin\mysql.exe"
set _MYSQLDUMP_="c:\xampp\mysql\bin\mysqldump.exe"

IF "%_METHOD_%" == "pull" (
 echo Database %DBNAME% pulled...
 %_MYSQLDUMP_% -u %_DBUSER_% %_DBNAME_% -p%_DBPASS_% > %_DB_%
) ELSE (
  IF "%_METHOD_%" == "push" (
	 %_MYSQL_% -u %_DBUSER_% %_DBNAME_% -p%_DBPASS_% < %_DB_%
	) ELSE (
	 echo Not found.
	)
