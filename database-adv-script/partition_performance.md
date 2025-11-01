# Partition Performance Report

## 🔹 Objective
Optimize query performance on the large `Booking` table by implementing **partitioning** based on the `start_date` column.

---

## 🔹 Approach
- The `Booking` table was divided into yearly partitions using **RANGE partitioning**.
- Each partition stores bookings for a specific year (e.g., 2023, 2024, 2025).
- Queries that filter by `start_date` automatically scan only relevant partitions.

---

## 🔹 Performance Measurement

### Before Partitioning
```sql
EXPLAIN ANALYZE SELECT * FROM Booking WHERE start_date BETWEEN '2024-06-01' AND '2024-06-30';
