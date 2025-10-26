-- Airbnb Database Sample Data (Seeding Script)
-- File: seed.sql

-- Insert Users
INSERT INTO Users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
('11111111-1111-1111-1111-111111111111', 'Alice', 'Johnson', 'alice@example.com', 'hash123', '1234567890', 'guest', NOW()),
('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hash456', '9876543210', 'host', NOW()),
('33333333-3333-3333-3333-333333333333', 'Charlie', 'Brown', 'charlie@example.com', 'hash789', '1112223333', 'admin', NOW());

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Cozy Apartment', 'A modern apartment in downtown Cairo.', 'Cairo, Egypt', 75.00, NOW(), NOW()),
('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', 'Beach House', 'Beautiful house by the sea.', 'Alexandria, Egypt', 120.00, NOW(), NOW());

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
('c1c1c1c1-c1c1-c1c1-c1c1-c1c1c1c1c1c1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-11-01', '2025-11-05', 300.00, 'confirmed', NOW()),
('d2d2d2d2-d2d2-d2d2-d2d2-d2d2d2d2d2d2', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '11111111-1111-1111-1111-111111111111', '2025-12-10', '2025-12-15', 600.00, 'pending', NOW());

-- Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
('e3e3e3e3-e3e3-e3e3-e3e3-e3e3e3e3e3e3', 'c1c1c1c1-c1c1-c1c1-c1c1-c1c1c1c1c1c1', 300.00, NOW(), 'credit_card');

-- Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
('f4f4f4f4-f4f4-f4f4-f4f4-f4f4f4f4f4f4', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 5, 'Amazing stay! Very clean and cozy.', NOW()),
('g5g5g5g5-g5g5-g5g5-g5g5-g5g5g5g5g5g5', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '11111111-1111-1111-1111-111111111111', 4, 'Great location, but the WiFi was slow.', NOW());

-- Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
('h6h6h6h6-h6h6-h6h6-h6h6-h6h6h6h6h6h6', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi Bob, is the apartment available next week?', NOW()),
('i7i7i7i7-i7i7-i7i7-i7i7-i7i7i7i7i7i7', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Yes Alice, it is available!', NOW());
