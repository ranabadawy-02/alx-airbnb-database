# Database Performance Monitoring Report

## 🔹 Objective
To monitor and refine the database performance by analyzing query execution plans and applying schema optimizations.

---

## 🔹 Step 1: Monitoring with EXPLAIN ANALYZE

### Example Query 1 — Fetch User Bookings
```sql
EXPLAIN ANALYZE
SELECT * FROM Booking
JOIN User ON Booking.user_id = User.id
WHERE Booking.status = 'confirmed';
