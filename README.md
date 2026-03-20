# Library Management System — Database Design & Data Validation

This project demonstrates practical database administration and design concepts using a library management system.

The focus extends beyond schema design to include operational DBA tasks such as backup and recovery, user access control, and performance optimization.

---

## Project Scope

The system supports:

- Book and author management
- Multiple physical copies per book
- Member registration
- Borrowing and return tracking
- Availability and overdue monitoring

---

## Database Technologies

- PostgreSQL
- MySQL
- SQL

---

## Core Database Features

### Schema Design
- Normalized relational schema
- Many-to-many relationships (books ↔ authors)
- Proper use of primary and foreign keys

### Performance Optimization
- Indexing on frequently queried columns
- Query performance analysis using EXPLAIN

### Backup & Recovery
- Logical database backups using:
  - PostgreSQL (`pg_dump`, `psql`)
  - MySQL (`mysqldump`, `mysql`)
- Restore procedures for data recovery

### User Management
- Role-based access control in PostgreSQL
- User and privilege management in MySQL
- Controlled access to database objects

---

## Database Structure

Main tables:

- authors
- books
- book_authors
- members
- book_copies
- borrow_records

---

## Project Files

- `01_schema.sql`  
  Core table definitions

- `02_constraints.sql`  
  Foreign key relationships and constraints

- `03_indexes.sql`  
  Indexes for performance optimization

- `04_stored_procedures.sql`  
  Business logic for borrowing and returning books

- `05_sample_queries.sql`  
  Example queries for data retrieval

- `06_backup_restore.sql`  
  Backup and recovery commands (PostgreSQL & MySQL)

- `07_user_management.sql`  
  User creation and permission management

---

## Key Learning Outcomes

- Designing and managing relational databases
- Implementing indexing strategies for performance
- Performing database backup and recovery
- Managing users and access control
- Understanding differences between PostgreSQL and MySQL administration

---

## Notes

This project is database-focused and does not include an application layer.

The goal is to demonstrate real-world database administration and engineering practices.