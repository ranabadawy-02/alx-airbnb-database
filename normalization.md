# Database Normalization – Airbnb Database

## Step 1: First Normal Form (1NF)

**Rule:** Each attribute must contain only atomic (indivisible) values, and each record must be unique.

**Application:**
- All tables have unique primary keys (`user_id`, `property_id`, `booking_id`, `payment_id`, `review_id`, `message_id`).
- No repeating groups or arrays — each field stores a single value (e.g., `email`, `phone_number`, `location`).
✅ The database satisfies **1NF**.

---

## Step 2: Second Normal Form (2NF)

**Rule:** Every non-key attribute must depend on the entire primary key (no partial dependency).

**Application:**
- Each table has a single primary key (no composite keys), so partial dependencies do not exist.
✅ The database satisfies **2NF**.

---

## Step 3: Third Normal Form (3NF)

**Rule:** There must be no transitive dependencies — non-key attributes must depend only on the primary key.

**Application:**
- In the `User` table, attributes (`first_name`, `last_name`, `email`, etc.) depend only on `user_id`.
- In the `Property` table, all attributes (`name`, `description`, `location`, `pricepernight`) depend only on `property_id`. The `host_id` is a foreign key but not a transitive dependency.
- In the `Booking` table, `start_date`, `end_date`, and `total_price` depend only on `booking_id`.
- In the `Payment` table, `amount` and `payment_method` depend only on `payment_id`.
- In the `Review` table, `rating` and `comment` depend only on `review_id`.
- In the `Message` table, `message_body` and `sent_at` depend only on `message_id`.

✅ The database satisfies **3NF**.

---

## ✅ Conclusion

After reviewing all entities and their relationships, the Airbnb database schema satisfies **Third Normal Form (3NF)**.  
No data redundancy or transitive dependencies exist, ensuring efficient storage, consistency, and scalability.
