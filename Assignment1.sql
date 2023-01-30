SELECT count(speed)
from planes
where speed is not NULL;
-- How many airplanes have listed speeds? 23

SELECT MIN(speed)
from planes
where speed is not NULL;
--What is the minimum listed speed? 90

SELECT MAX(speed)
from planes
where speed is not NULL;
--What is the maximum listed speed? 432

SELECT SUM(distance)
FROM flights
WHERE year = 2013 AND month = 1;
--What is the total distance flown by all of the planes in January 2013? 27188805

SELECT SUM(distance)
FROM flights
WHERE year = 2013 AND month = 1 AND tailnum = "";
-- What is the total distance flown by all of the planes in January 2013 where the tailnum is missing? 81763

SELECT SUM(distance), manufacturer
from flights
inner join planes on flights.year = planes.year
where flights.month = '7' and flights.day = '5' and flights.year ='2013'
GROUP by manufacturer;
--INNER JOIN What is the total distance flown for all planes on July 5,2013 grouped by aircraft manufacturer? 

SELECT manufacturer, SUM(distance)
from flights
LEFT OUTER join planes on flights.year = planes.year
where flights.month = '7' and flights.day = '5' and flights.year ='2013'
GROUP by planes.manufacturer;
-- LEFT OUTER JOIN What is the total distance flown for all planes on July 5,2013 grouped by aircraft manufacturer? 

SELECT MAX(arr_delay)
from flights
LEFT OUTER join airlines on flights.carrier = airlines.carrier
where flights.month = '1' and flights.day = '3' and flights.year ='2013'
GROUP BY flights.carrier;
-- Which airline has the most delayes on Jan 3,2013? Southwest Airlines CO
