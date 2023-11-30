-- Language: SQL

CREATE TABLE tdf_finishers2 (
    Year INT,
    Rank VARCHAR(50),
    Rider VARCHAR(5000),
    Time VARCHAR(5000),
    Team VARCHAR(5000)
);

BULK INSERT tdf_finishers2
FROM 'C:\Program Files\Microsoft SQL Server\MSAS16.MSSQLSERVER\OLAP\Data\tdf_finishers2.csv'
WITH (
    FORMAT = 'CSV',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2 ,-- Assuming the first row in the CSV file is the header row
	CODEPAGE = '65001' -- UTF-8 codepage
);
UPDATE tdf_finishers2
SET Time = REPLACE(Time, '+', '+ ')
WHERE Time LIKE '+%'
  AND Time NOT LIKE '+ %'

Select  * from tdf_finishers2
UPDATE tdf_finishers2
SET Time = REPLACE(Time, '+ ', '+ 0h ')
WHERE Time NOT LIKE '%h%'

UPDATE tdf_finishers2
SET Time = REPLACE(Time, '+ 0h', '+ 0h 0''')
WHERE Time LIKE '+ 0h%' AND Time NOT LIKE '%''%'


select * from tdf_finishers2