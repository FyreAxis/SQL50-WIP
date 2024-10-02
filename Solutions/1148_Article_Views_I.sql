--Write a solution to find all the authors that viewed at least one of their own articles sorted by id in ascending order.

SELECT DISTINCT v.author_id AS id --Only display author_id once (no duplicates of authors viewing themselves more than once) when using DISTINCT
--also renamed author_id column to be called id
FROM Views AS v --We should be used to renaming by now, but there's no harm in reiterating
WHERE v.author_id = v.viewer_id --This is the logic that means authors that viewed their own article (written by themselves)
ORDER BY v.author_id; --This sorts in ascending order, default is ASC (or ascending)