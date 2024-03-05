-- Calcuate Balance Fuction
CREATE DEFINER=`root`@`localhost` FUNCTION `CalculateBalance`(
    Deposit_amt VARCHAR(6),
    Withdraws_amt VARCHAR(6),
    fee_amt VARCHAR(6)
) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE deposit DECIMAL(10, 2);
    DECLARE withdraw DECIMAL(10, 2);
    DECLARE fee DECIMAL(10, 2);
    DECLARE balance DECIMAL(10, 2);

    SET deposit = CAST(Deposit_amt AS DECIMAL(10, 2));
    SET withdraw = CAST(Withdraws_amt AS DECIMAL(10, 2));
    SET fee = CAST(fee_amt AS DECIMAL(10, 2));

    SET balance = deposit - withdraw - fee;

    RETURN balance;
END

-- 
-- This Function will concate my users primary information
CREATE DEFINER=`root`@`localhost` FUNCTION `ConcatenateFields`(
    first_name VARCHAR(50),
    Second_name VARCHAR(50),
    Last_name VARCHAR(50),
    birthday_user VARCHAR(20)
) RETURNS varchar(170) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE result VARCHAR(170);

    -- Concatenate the fields using the CONCAT function
    SET result = CONCAT(first_name, Second_name, Last_name, birthday_user);

    RETURN result;
END

-- 