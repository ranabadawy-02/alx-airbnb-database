# Airbnb Database Schema (DDL)

This directory contains the SQL Data Definition Language (DDL) scripts for the **Airbnb Database** project.

## Files
- `schema.sql`: Contains all SQL `CREATE TABLE` statements with primary keys, foreign keys, and indexes.

## Overview
The schema includes six main entities:
1. **Users** – stores information about guests, hosts, and admins.
2. **Property** – details of listed rental properties.
3. **Booking** – records reservations made by users for properties.
4. **Payment** – handles payment transactions linked to bookings.
5. **Review** – contains reviews written by users for properties.
6. **Message** – supports user-to-user communication.

All relationships and constraints are based on the ER diagram and follow **Third Normal Form (3NF)**.
