-- Trigger para 5 dif records de Investment
DELIMITER $$

CREATE Trigger InsertInvestingRecordsInv
AFTER INSERT ON primary_info
FOR EACH ROW
BEGIN
    IF NEW.account_typ = 'Investing' THEN
        -- Insert the specified records into another table (e.g., investing_records)
        INSERT INTO investing_records (user_id, account_number, first_name, second_name, last_name, sc_last_name, birthday_user, rfc_user, account_typ)
        VALUES 
        ('T6R9X1ZXP', '532609876234', 'Rosa', 'Maria', 'Monje', 'Ortiz', '1983-12-19', 'DFSE031456FDS99', 'Investing'),
        ('T2CKSDD5Q', '432451546012', 'Janeth', 'Nicole', 'Richardson', 'Anderson', '1983-06-02', 'KLMN234567OPQ90', 'Investing'),
        ('S5CKJ3T5H', '234541279123', 'Jack', 'Patrick', 'Lopez', 'Chavez', '1978-08-03', 'FGHI567890JKL90', 'Investing'),
        ('R4XCP8O9Q', '901231425478', 'Veronica', 'Emma', 'Wright', 'Gray', '1987-03-26', 'IJKL890123MNO45', 'Investing'),
        ('Q5C5R9X9A', '234564578987', 'Andrea', 'Ella', 'Foster', 'Evans', '1985-05-03', 'PQRS789012TUV56', 'Investing');
    END IF;
END $$

DELIMITER ;



-- Trigger para 5 dif records de Investment
DELIMITER $$

CREATE Trigger InsertInvestingRecordsInv2
AFTER INSERT ON primary_info
FOR EACH ROW
BEGIN
    IF NEW.account_typ = 'Investing' THEN
        -- Insert the specified records into another table (e.g., investing_records)
        INSERT INTO investing_records (user_id, account_number, first_name, second_name, last_name, sc_last_name, birthday_user, rfc_user, account_typ)
        VALUES 
        ('T6R9X1ZXP', '532789425234', 'Martha', 'Maria', 'Monje', 'Ortiz', '1983-12-19', 'DFSE031456FDS99', 'Investing'),
        ('T2CK5DPOQ', '434578604512', 'Mary', 'Nicole', 'Richardson', 'Anderson', '1983-06-02', 'KLMN234567OPQ90', 'Investing'),
        ('MACKS3T5H', '234454759123', 'Daniel', 'Patrick', 'Lopez', 'Chavez', '1978-08-03', 'FGHI567890JKL90', 'Investing'),
        ('R5YPS8O9Q', '954689425478', 'Monica', 'Emma', 'Wright', 'Gray', '1987-03-26', 'IJKL890123MNO45', 'Investing'),
        ('QFKSA549A', '234457778987', 'Paula', 'Ella', 'Foster', 'Evans', '1985-05-03', 'PQRS789012TUV56', 'Investing');
    END IF;
END $$

DELIMITER ;

