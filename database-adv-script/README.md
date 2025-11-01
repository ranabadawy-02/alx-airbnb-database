# SQL Joins Queries

### 1. INNER JOIN: Bookings and Users
Retrieves all bookings along with the users who made them.

### 2. LEFT JOIN: Properties and Reviews
Retrieves all properties and their reviews, including those with no reviews.

### 3. FULL OUTER JOIN: Users and Bookings
Retrieves all users and all bookings, even if a user has no booking or a booking has no user.


# subqueries.sql
Contains SQL queries that demonstrate:
- **Non-correlated subquery**: Find all properties with an average rating greater than 4.0.
- **Correlated subquery**: Find users who have made more than 3 bookings.

# aggregations_and_window_functions.sql
Contains SQL queries that demonstrate:
- **Aggregation (COUNT + GROUP BY)** → Find total number of bookings made by each user.
- **Window function (RANK)** → Rank properties based on the total number of bookings they have received.

## How to Run
You can run these queries in any SQL database (e.g., MySQL, PostgreSQL) after creating the required tables.
