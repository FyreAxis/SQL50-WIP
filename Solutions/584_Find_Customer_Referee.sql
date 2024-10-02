--Find the names of the customer that are not referred by the customer with id = 2 in any order.

SELECT c.name --Unlike the last solution, we are now going to specify columns with their table
FROM Customer AS c --renames Customer table as c in above line, otherwise it'd be Customer.name
WHERE referee_id IS NULL --NULL is what we're looking for. Note how the syntax is "IS NULL" not "= NULL"
OR referee_id <> 2; --<> is not equal to like != which means "not equal to"
--The condition after OR is not enough as NULL values will return UNKNOWN when compared to 2 instead of TRUE