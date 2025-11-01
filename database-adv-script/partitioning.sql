-- Step 1: Create a partitioned version of the Booking table based on start_date

CREATE TABLE Booking_partitioned (
    booking_id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE,
    status VARCHAR(50)
)
PARTITION BY RANGE (start_date);

-- Step 2: Create partitions by year (example for 2023–2025)
CREATE TABLE Booking_2023 PARTITION OF Booking_partitioned
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE Booking_2024 PARTITION OF Booking_partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE Booking_2025 PARTITION OF Booking_partitioned
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Step 3: Test query performance before and after partitioning
EXPLAIN ANALYZE SELECT * FROM Booking WHERE start_date BETWEEN '2024-06-01' AND '2024-06-30';
-- Before partitioning: Full table scan (slower)

EXPLAIN ANALYZE SELECT * FROM Booking_partitioned WHERE start_date BETWEEN '2024-06-01' AND '2024-06-30';
-- After partitioning: Scans only the relevant partition (faster)
