SELECT p.product_id
FROM ptbl_product p
LEFT JOIN ptbl_transaction t
ON p.product_id = t.product_id
WHERE t.product_id IS NULL
ORDER BY p.product_id;



UPDATE ptbl_transaction
SET TRANSACTION_DATE= ADD_MONTHS(TRANSACTION_DATE, 120);

SELECT
    transaction_id,
    product_id,
    reference_order_id,
    transaction_date,
    transaction_type,
    quantity,
    actual_cost
FROM
    ptbl_transaction;

ROLLBACK;

DELETE FROM ptbl_transaction
WHERE TRANSACTION_DATE > TO_DATE('2013-07-31', 'YYYY-MM-DD');
