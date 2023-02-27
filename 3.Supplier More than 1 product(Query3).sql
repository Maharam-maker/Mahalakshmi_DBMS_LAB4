#Display the Supplier Details who can supply more than one product

#Identifying the tables
SELECT * FROM supplier;
SELECT * FROM product;
SELECT * FROM supplier_pricing;

#Query to Display the Supplier Details who can supply more than one product
SELECT sup.SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE 
FROM supplier AS sup
INNER JOIN (
    SELECT * 
    FROM supplier_pricing 
    GROUP BY SUPP_ID 
    HAVING COUNT(SUPP_ID) > 1
) AS sp ON sup.SUPP_ID = sp.SUPP_ID;


