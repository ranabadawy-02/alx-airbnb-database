# Query Optimization Report

## 🔹 Initial Query
The original query joined four tables: `Booking`, `User`, `Property`, and `Payment`.
It retrieved all columns without any filters, resulting in a large dataset and slower performance.

```sql
EXPLAIN SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.status,
    u.first_name,
    u.last_name,
    u.email,
    p.name AS property_name,
    p.location,
    pay.amount,
    pay.payment_method,
    pay.payment_date
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id;
