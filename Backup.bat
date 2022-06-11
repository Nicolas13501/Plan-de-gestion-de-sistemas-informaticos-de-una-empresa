set anio=%date:~6,4%
set mes=%date:~3,2%
set dia=%date:~0,2%
set nombre=maxred_%anio%%mes%%dia%.sql

mysqldump -u root -p1234 tienda_maxred > C:\Backup\%nombre%
