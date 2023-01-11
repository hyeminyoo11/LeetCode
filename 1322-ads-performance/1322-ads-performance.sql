# Write your MySQL query statement below

WITH count AS(SELECT ad_id,
                IFNULL(SUM(CASE WHEN action = "Clicked" THEN 1 END), 0) AS clicked,
                IFNULL(SUM(CASE WHEN action = "Viewed" THEN 1 END), 0) AS viewed
            FROM Ads
            GROUP BY ad_id)
            
SELECT ad_id,
    CASE
        WHEN clicked + viewed = 0 THEN 0
        ELSE ROUND(clicked / (clicked + viewed) * 100, 2)
    END AS ctr
FROM count
ORDER BY ctr DESC, ad_id ASC
