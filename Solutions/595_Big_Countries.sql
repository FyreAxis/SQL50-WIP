--Find name, pop, area of BIG countries in any order

SELECT w.name, w.area, w.population --Corresponding criteria as stated in problem
FROM World AS w --Here we are renaming for convenience again
WHERE w.area >= 3000000 --This is one of the given conditions that means a country is big
OR w.population >= 25000000; --Same as above