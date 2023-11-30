CREATE TABLE pets (
    petid varchar,
    name varchar,
    kind varchar,
    gender varchar,
    age int,
    ownerid varchar
);
select * from pets
-- WINDOWS
COPY pets FROM 'C:\Program Files\PostgreSQL\15\data\P9-Pets.csv' DELIMITER ',' CSV HEADER;
-- MAC
--COPY pets FROM '/users/ilyaeremenko/Desktop/Pets.csv' DELIMITER ',' CSV HEADER;



CREATE TABLE owners (
    ownerid varchar,
    name varchar,
    surname varchar,
    streetaddress varchar,
    city varchar,
    state varchar(2),
    statefull varchar,
    zipcode varchar
);

-- WINDOWS
COPY owners FROM 'C:\Program Files\PostgreSQL\15\data\P9-Owners.csv' DELIMITER ',' CSV HEADER;
-- MAC 
--COPY owners FROM '/Users/ilyaeremenko/Desktop/Owners.csv' DELIMITER ',' CSV HEADER;



CREATE TABLE proceduredetails (
    proceduretype varchar,
    proceduresubcode varchar,
    description varchar,
    price float
);

-- WINDOWS
COPY proceduredetails FROM 'C:\Program Files\PostgreSQL\15\data\P9-ProceduresDetails.csv' DELIMITER ',' CSV HEADER;

-- MAC 
--COPY proceduredetails FROM '/Users/ilyaeremenko/Desktop/proceduredetails.csv' DELIMITER ',' CSV HEADER;



 
CREATE TABLE procedurehistory (
    petid varchar,
    proceduredate date,
    proceduretype varchar,
    proceduresubcode varchar
);

-- WINDOWS
COPY procedurehistory  FROM 'C:\Program Files\PostgreSQL\15\data\P9-ProceduresHistory.csv' DELIMITER ',' CSV HEADER;
-- MAC 
--COPY procedurehistory FROM '/Users/ilyaeremenko/Desktop/procedurehistory.csv' DELIMITER ',' CSV HEADER;

