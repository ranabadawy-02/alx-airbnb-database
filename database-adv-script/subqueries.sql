-- 1. Non-correlated subquery: Properties with average rating > 4.0
SELECT 
    p.property_id,
    p.name,
    p.location,
    p.pricepernight
FROM Property AS p
WHERE p.property_id IN (
    SELECT r.property_id
    FROM Review AS r
    GROUP BY r.property_id
    HAVING AVG(r.rating) > 4.0
)
ORDER BY p.property_id;

-- 2. Correlated subquery: Users with more than 3 bookings
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    u.email
FROM User AS u
WHERE (
    SELECT COUNT(*)
    FROM Booking AS b
    WHERE b.user_id = u.user_id
) > 3
ORDER BY u.user_id;
