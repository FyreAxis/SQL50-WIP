--Write a solution to find the ids of products that are both low fat and recyclable in any order.

SELECT product_id --We are looking for this attribute AKA column
FROM Products --From this table named Products
WHERE Products.low_fats = 'Y' --Meeting the condition that low_fats is set to Y which means Yes
AND Products.recyclable = 'Y'; --and is also recyclable

--Note that we are only working with one table and could have wrote
-- WHERE low_fats = 'Y'
--Additionally, the AND statement does not need to be on a separate line. It is only separated for
--the readability of my comments.
