SELECT *
FROM ptbl_subcategory
WHERE UPPER(subcategory_name) LIKE '%BIKE%'
;

SELECT *
FROM ptbl_subcategory
WHERE product_category_id <= 2
;

SELECT *

FROM PTBL_SUBCATEGORY
WHERE product_category_id BETWEEN 3 AND 5
;

SELECT *
FROM ptbl_subcategory
WHERE product_category_id >= 3 AND product_category_id < 5
;
