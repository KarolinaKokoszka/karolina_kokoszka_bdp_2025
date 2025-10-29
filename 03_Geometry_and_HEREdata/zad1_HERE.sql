-- 1. Budynki wybudowane (nowe) lub wyremontowane (z inną wysokością lub geomeyrią) między 2018 a 2019
SELECT 
    b2019.*
FROM buildings2019 b2019
LEFT JOIN buildings2018 b2018
    ON b2019.geom = b2018.geom
WHERE 
    -- budynek nie występuje w 2018 lub miał inną geometrię
    b2018.geom IS NULL
    OR
    -- budynek istnieje w obu, ale ma inną wysokość
    b2018.height <> b2019.height;
