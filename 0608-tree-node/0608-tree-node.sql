# Write your MySQL query statement below

SELECT
    t.id,
    CASE 
        WHEN p_id IS null THEN 'Root'
        WHEN id IN (SELECT p_id FROM Tree) THEN 'Inner'
        ELSE 'Leaf'
        END
         AS type 
FROM
    tree t
    ;