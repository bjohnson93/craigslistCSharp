CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';

CREATE TABLE 
  houses(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    year SMALLINT UNSIGNED DEFAULT 2000,
    bedrooms TINYINT UNSIGNED DEFAULT 3,
    bathrooms TINYINT UNSIGNED DEFAULT 2,
    price DECIMAL NOT NULL,
    sqft SMALLINT UNSIGNED DEFAULT 1500,
    hoa BOOLEAN DEFAULT FALSE,
    hasPool BOOLEAN DEFAULT FALSE,
    description VARCHAR(300) NOT NULL,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update'
  ) default charset utf8 COMMENT '';

  DROP TABLE houses;

  INSERT INTO 
    houses ( year, bedrooms, bathrooms, price, sqft, hoa, hasPool, description )
  VALUES ( '2003', 4, 2, 374000, 2000, true, false, 'split level, family neighborhood' ),
   ( '1952', 5, 3, 443000, 2500, false, true, 'mid century modern dream' ),
   ( '2023', 4, 3, 697000, 2300, true, true, 'perfect for entertaining' );
CREATE TABLE
  jobs(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL COMMENT 'job title',
    company VARCHAR(255) NOT NULL COMMENT 'company name',
    jobDescription VARCHAR(255) NOT NULL COMMENT 'description of work needed',
    salary INT UNSIGNED DEFAULT 40000,
    medBenefits BOOLEAN DEFAULT FALSE,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update'
  ) default charset utf8 COMMENT '';
  
INSERT INTO
  jobs ( title, company, jobDescription, salary, medBenefits )
VALUES 
( 'Software Developer', 'Idaho Power', 'BackEnd developer using C# and SQL, full time', 55000, true ),
( 'Dental Assistant', 'Paramount Family Dental', 'Fast paced dental office focused on relationships', 35000, true ),
( 'Store Greeter', 'Paulmart', 'Greet folks who want to shop', 18000, false),
( 'SalesForce Developer', 'Zennify', 'Salesforce certificate will be provided', 59000, true );

SELECT year FROM houses;

SELECT year, price FROM houses;

SELECT * FROM houses;
SELECT * FROM houses WHERE year = '1952';
SELECT * FROM houses WHERE id = 2;

DELETE FROM houses WHERE id = 2 LIMIT 1;

UPDATE houses SET hasPool = true WHERE id = 1 LIMIT 1;
SELECT LAST_INSERT_ID();

