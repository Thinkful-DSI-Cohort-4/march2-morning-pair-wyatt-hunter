--Select all fields and records from the houseprices table
SELECT *
FROM houseprices;

SELECT COUNT(*)
FROM houseprices;

-- Return a field calculating division of saleprice by lotarea
SELECT saleprice / lotarea AS price_per_unit
FROM houseprices;

--Return a field containing a string that reads like "This house was built in [yearbuilt]."
SELECT CONCAT('This house was built in ', yearbuilt, '.') AS yearbuilt
FROM houseprices;

--Generate a one-row report with the total number of rows, the earliest and latest year built, and the average lot area.
SELECT COUNT(*) AS total_rows,
		MIN(yearbuilt) AS earliest_build,
		MAX(yearbuilt) AS latest_build,
		ROUND(AVG(lotarea), 2) AS avg_lotarea
FROM houseprices;

--Generate a second report with all records and the neighborhood column, your year built column above, your price_per_unit column, and a column that
--concatenates building type and house style. (Maybe with a slash between them?)
SELECT neighborhood,
yearbuilt,
ROUND(saleprice::numeric / lotarea, 2) AS price_per_unit,
CONCAT(bldgtype, ' / ', housestyle) AS type_style
FROM houseprices;