CREATE DATABASE insurance_db

USE insurance_dbCREATE DATABASE insurance_db

USE insurance_db;

CREATE TABLE insurance_data (
    PolicyNumber VARCHAR(10),
    CustomerID VARCHAR(10),
    Gender ENUM('Male', 'Female', 'Other'),
    Age INT,
    PolicyType VARCHAR(50),
    PolicyStartDate DATE,
    PolicyEndDate DATE,
    PremiumAmount DECIMAL(10, 2),
    CoverageAmount DECIMAL(15, 2),
    ClaimNumber VARCHAR(10),
    ClaimDate DATE,
    ClaimAmount DECIMAL(10, 2),
    ClaimStatus ENUM('Pending', 'Rejected', 'Approved')
);

LOAD DATA INFILE 'C:\ProgramData\MySQL\MySQL Server 9.1\Uploads\InsuranceData.csv'
INTO TABLE insurance_data
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(PolicyNumber, CustomerID, Gender, Age, PolicyType, PolicyStartDate, PolicyEndDate, PremiumAmount, CoverageAmount, ClaimNumber, ClaimDate, ClaimAmount, ClaimStatus);

SHOW VARIABLES LIKE 'secure_file_priv';

