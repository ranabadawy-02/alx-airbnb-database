# Index Performance Report

## 🔹 Identified High-Usage Columns
Based on frequent use in ⁠ WHERE ⁠, ⁠ JOIN ⁠, and ⁠ ORDER BY ⁠ clauses:
•⁠  ⁠⁠ User.email ⁠ — used to find users by email (e.g., during login).
•⁠  ⁠⁠ Booking.status ⁠ — used to filter bookings (pending, confirmed, canceled).
•⁠  ⁠⁠ Property.pricepernight ⁠ — used for sorting or filtering listings.
•⁠  ⁠⁠ Booking.property_id ⁠ — used when joining bookings with properties.
•⁠  ⁠⁠ Payment.booking_id ⁠ — used when joining payments with bookings.

---

## 🔹 Created Indexes
```sql
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_booking_status ON Booking(status);
CREATE INDEX idx_property_price ON Property(pricepernight);
CREATE INDEX idx_booking_property ON Booking(property_id);
CREATE INDEX idx_payment_booking ON Payment(booking_id);

EXPLAIN SELECT * FROM Booking WHERE status = 'confirmed';
-- Result: Full Table Scan (slow)

EXPLAIN SELECT * FROM Booking WHERE status = 'confirmed';
-- Result: Index Scan using idx_booking_status (faster)

EXPLAIN SELECT * FROM User WHERE email = 'test@example.com';
-- Uses idx_user_email to quickly locate the user.
