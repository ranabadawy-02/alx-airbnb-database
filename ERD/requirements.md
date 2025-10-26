# Airbnb ER Diagram

This folder contains the Entity-Relationship Diagram (ERD) for the Airbnb database project.

## Entities and attributes

1)User

user_id: Primary Key, UUID, Indexed
first_name: VARCHAR, NOT NULL
last_name: VARCHAR, NOT NULL
email: VARCHAR, UNIQUE, NOT NULL
password_hash: VARCHAR, NOT NULL
phone_number: VARCHAR, NULL
role: ENUM (guest, host, admin), NOT NULL
created_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

2)Property

property_id: Primary Key, UUID, Indexed
host_id: Foreign Key, references User(user_id)
name: VARCHAR, NOT NULL
description: TEXT, NOT NULL
location: VARCHAR, NOT NULL
pricepernight: DECIMAL, NOT NULL
created_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
updated_at: TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP

3)Booking

booking_id: Primary Key, UUID, Indexed
property_id: Foreign Key, references Property(property_id)
user_id: Foreign Key, references User(user_id)
start_date: DATE, NOT NULL
end_date: DATE, NOT NULL
total_price: DECIMAL, NOT NULL
status: ENUM (pending, confirmed, canceled), NOT NULL
created_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

4)Payment

payment_id: Primary Key, UUID, Indexed
booking_id: Foreign Key, references Booking(booking_id)
amount: DECIMAL, NOT NULL
payment_date: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
payment_method: ENUM (credit_card, paypal, stripe), NOT NULL

5)Review

review_id: Primary Key, UUID, Indexed
property_id: Foreign Key, references Property(property_id)
user_id: Foreign Key, references User(user_id)
rating: INTEGER, CHECK: rating >= 1 AND rating <= 5, NOT NULL
comment: TEXT, NOT NULL
created_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

6)Message

message_id: Primary Key, UUID, Indexed
sender_id: Foreign Key, references User(user_id)
recipient_id: Foreign Key, references User(user_id)
message_body: TEXT, NOT NULL
sent_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP


## Relationships
1. User
	•	Relationships:
	•	One User can host many Properties → (User 1 - M Property)
	•	One User can make many Bookings → (User 1 - M Booking)
	•	One User can write many Reviews → (User 1 - M Review)
	•	One User can send and receive many Messages → (User 1 - M Message) (self-relationship via sender_id and recipient_id)

⸻

2. Property
	•	Relationships:
	•	Each Property belongs to one Host (User) → (Property M - 1 User)
	•	Each Property can have many Bookings → (Property 1 - M Booking)
	•	Each Property can have many Reviews → (Property 1 - M Review)

⸻

3. Booking
	•	Relationships:
	•	Each Booking is made by one User → (Booking M - 1 User)
	•	Each Booking belongs to one Property → (Booking M - 1 Property)
	•	Each Booking has one Payment → (Booking 1 - 1 Payment) ✅ (this is the correct relation for Payment)

⸻

4. Payment
	•	Relationships:
	•	Each Payment is related to one Booking → (Payment 1 - 1 Booking)
	•	So the relationship is Payment belongs to Booking, not to User or Property.

⸻

5. Review
	•	Relationships:
	•	Each Review belongs to one User and one Property → (Review M - 1 User, M - 1 Property)
	•	So Users write Reviews and Properties receive Reviews.

⸻

6. Message
	•	Relationships:
	•	Each Message is sent by one User and received by another User (self-relationship)
→ (User 1 - M Message) for sender
→ (User 1 - M Message) for recipient
	•	There’s no relationship between Message and Property/Booking/Payment.

The visual ER diagram will be added here once completed.
