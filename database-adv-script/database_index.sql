-- Optimize lookups by user email (often used in WHERE or JOIN)
CREATE INDEX idx_user_email ON User(email);

-- Optimize property lookups and joins
CREATE INDEX idx_property_location ON Property(location);
CREATE INDEX idx_property_price ON Property(pricepernight);

-- Optimize booking lookups
CREATE INDEX idx_booking_status ON Booking(status);
CREATE INDEX idx_booking_dates ON Booking(start_date, end_date);

-- Optimize joins between Booking and Property
CREATE INDEX idx_booking_property ON Booking(property_id);

-- Optimize joins between Payment and Booking
CREATE INDEX idx_payment_booking ON Payment(booking_id);
