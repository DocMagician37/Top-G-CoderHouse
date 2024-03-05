-- Views for Finance_Tracker
use top_g_investments;
-- View Saving Accounts
CREATE VIEW Saving_account AS 
SELECT 
    User_ID, 
    account_nbr, 
    saving_amt, 
    Saving_typ, 
    yrs_saved, 
    Saving_percent
FROM 
    Saving_info
WHERE 
    Saving_typ LIKE '%FUND%';

-- Years Saved 

CREATE VIEW Years_Saved AS 
SELECT 
    User_ID AS user_id, 
    account_nbr AS account_number, 
    saving_amt AS saving_amount, 
    Saving_typ AS saving_type, 
    yrs_saved AS years_saved, 
    Saving_percent AS saving_percent
FROM 
    Saving_account
WHERE 
    yrs_saved < 0;
    
-- Salary amt greater than 75k
CREATE VIEW Salary_amt AS
SELECT 
    User_ID AS user_id, 
    account_nbr AS account_number, 
    Occupation_usr AS Occupation_user, 
    Years_wk_usr AS Years_worked, 
    Salary_usr AS Income_amount
FROM 
    work_experience
WHERE 
    Salary_usr < 75000;

-- Salary below 75k
    CREATE VIEW Salary_amtLess AS
SELECT 
    User_ID AS user_id, 
    account_nbr AS account_number, 
    Occupation_usr AS Occupation_user, 
   Years_wk_usr AS Years_worked, 
    Salary_usr AS Income_amount
FROM 
    work_experience
WHERE 
    Salary_usr > 75000


