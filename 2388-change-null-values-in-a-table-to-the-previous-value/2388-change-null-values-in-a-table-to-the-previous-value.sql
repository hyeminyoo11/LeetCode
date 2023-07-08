# Write your MySQL query statement below


SELECT id,@previous:=IFNULL(drink,@previous) as drink
FROM CoffeeShop
JOIN (SELECT @previous:=NULL) a