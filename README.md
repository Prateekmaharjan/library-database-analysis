\# Library Management Database



This project contains the database design for a simple library management system.  

The focus is on schema design, relationships, indexing, and basic database logic.



The database supports managing books, authors, members, physical book copies, and borrowing records.



\## Database Overview



The system is designed to handle:

\- Books and their authors

\- Multiple physical copies per book

\- Library members

\- Book borrowing and returns

\- Tracking availability and overdue items



The database is implemented using PostgreSQL.



\## Schema Structure



Main tables included:



\- `authors` – stores author information

\- `books` – stores book details

\- `book\_authors` – maps books to authors (many-to-many)

\- `members` – library members

\- `book\_copies` – physical copies of books

\- `borrow\_records` – borrowing and return history



\## Project Files



\- `01\_schema.sql`  

&nbsp; Core table definitions.



\- `02\_constraints.sql`  

&nbsp; Foreign keys and basic constraints.



\- `03\_indexes.sql`  

&nbsp; Indexes added based on common access patterns.



\- `04\_stored\_procedures.sql`  

&nbsp; Functions for borrowing and returning books.



\- `05\_sample\_queries.sql`  

&nbsp; Sample read-only queries demonstrating expected usage of the database.



\## Stored Procedures



The project includes basic database functions:

\- Borrowing a book copy

\- Returning a borrowed book



Business logic is kept explicit rather than using triggers.



\## Notes



This project is intentionally database-focused.  

No frontend or application layer is included, as the goal is to demonstrate database design and querying logic.





