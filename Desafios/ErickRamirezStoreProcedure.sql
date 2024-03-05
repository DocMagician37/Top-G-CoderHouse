-- Store Procedure para el balance info
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAccountInfoAndBalance`(IN input_account_number VARCHAR(20))
BEGIN
    DECLARE user_id INT;
    DECLARE job_title VARCHAR(50);
    DECLARE years_of_experience INT;
    DECLARE salary DECIMAL(10, 2);
    END
    -- Store Procedure para el balance
    CREATE DEFINER=`root`@`localhost` PROCEDURE `GetUserDetailsById`(IN input_user_id INT)
BEGIN
    SELECT *
    FROM users
    WHERE user_id = input_user_id;
END