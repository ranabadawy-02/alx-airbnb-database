-- 1. INNER JOIN: Bookings and Users
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    u.first_name,
    u.last_name,
    u.email
FROM Booking AS b
INNER JOIN User AS u
    ON b.user_id = u.user_id;

-- 2. LEFT JOIN: Properties and Reviews
SELECT
    p.property_id,
    p.name AS property_name,
    p.location,
    r.review_id,
    r.rating,
    r.comment
FROM Property AS p
LEFT JOIN Review AS r
    ON p.property_id = r.property_id;

-- 3. FULL OUTER JOIN: Users and Bookings
SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    b.booking_id,
    b.start_date,
    b.end_date
FROM User AS u
FULL OUTER JOIN Booking AS b
    ON u.user_id = b.user_id;
