
--Counting rows

SELECT COUNT(*) 
FROM `Customer Details` ;



--FINDING DUPLICATES

SELECT ID, Gender, Ever_Married, Age, Graduated, Profession, Work_Experience, Spending_Score, Family_Size, Var_1, Segmentation, COUNT(*) 
FROM `Customer Details`
GROUP BY ID, Gender, Ever_Married, Age, Graduated, Profession, Work_Experience, Spending_Score, Family_Size, Var_1, Segmentation
HAVING COUNT (*) > 1;


--FINDING NULLS

SELECT COUNT(*) FROM `Customer Details` 
WHERE Gender IS NULL 
OR Ever_Married IS NULL 
OR Age IS NULL 
OR Graduated IS NULL
OR Profession IS NULL 
OR Work_Experience IS NULL 
OR Spending_Score IS NULL 
OR Family_Size IS NULL 
OR Var_1 IS NULL 
OR Segmentation IS NULL ;


--Counting nulls by column

SELECT SUM (CASE WHEN  ID IS NULL THEN 1 ELSE 0 END) AS null_id,
SUM (CASE WHEN  GENDER IS NULL THEN 1 ELSE 0 END) AS null_gender,
SUM (CASE WHEN  Ever_Married IS NULL THEN 1 ELSE 0 END) AS null_Ever_Married,
SUM (CASE WHEN  Age IS NULL THEN 1 ELSE 0 END) AS null_age, 
SUM (CASE WHEN  Graduated IS NULL THEN 1 ELSE 0 END) AS null_Graduated, 
SUM (CASE WHEN  Profession IS NULL THEN 1 ELSE 0 END) AS null_Profession,
SUM (CASE WHEN  Work_Experience IS NULL THEN 1 ELSE 0 END) AS null_Work_Experience,
SUM (CASE WHEN  Spending_Score IS NULL THEN 1 ELSE 0 END) AS null_Spending_Score,
SUM (CASE WHEN  Family_Size IS NULL THEN 1 ELSE 0 END) AS null_Family_Size,
SUM (CASE WHEN  Var_1 IS NULL THEN 1 ELSE 0 END) AS null_Var_1,
SUM (CASE WHEN  Segmentation IS NULL THEN 1 ELSE 0 END) AS null_Segmentation
 FROM `Customer Details`



--Replacing null work experince with median value

UPDATE `Customer Details`
SET Work_Experience = 1
WHERE Work_Experience IS NULL;


--Replacing null Family Size with median value

UPDATE `Customer Details`
SET Work_Experience = 3
WHERE Work_Experience IS NULL;


--Replacing null Profession with "Unknown"

UPDATE `Customer Details`
SET Profession = "Unknown"
WHERE Work_Experience IS NULL;


--Dropping null values

DELETE FROM `Customer Details`
WHERE Ever_Married IS NULL
OR Graduated IS NULL
OR Var_1 IS NULL ;
