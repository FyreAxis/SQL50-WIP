--Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15
--Return the result table in any order.

SELECT t.tweet_id --Here is our selected attribute
FROM Tweets AS t --From this table
WHERE LENGTH(t.content) > 15; --length() returns # of bytes aka # of chars in string,
--but it is not an aggregate function (needing to be in a HAVING clause)
--therefore, we scrap the invalid tweets i.e. those larger than 15 chars