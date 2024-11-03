SELECT
    TO_CHAR(date_of_birth,'FMMonth') AS MONTH_NAME
    , COUNT(*) AS NUMBER_OF_EMPLOYEES
FROM
    tbl_employee
GROUP BY
    TO_CHAR(date_of_birth,'FMMonth'), TO_CHAR(date_of_birth,'FMMM')
ORDER BY
    TO_CHAR(date_of_birth,'FMMM');





--For each month in the date of birth,
--The count of the number of people
