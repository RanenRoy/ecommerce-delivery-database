# E-commerce Order and Delivery Tracking Database

## Project Overview

This project is a PostgreSQL database design for an e-commerce order and delivery tracking system. The database models the process from customer orders through to products, inventory, shipments, tracking events, and customer feedback.

The purpose of the project is to demonstrate relational database design, PostgreSQL schema creation, data integrity constraints, sample data insertion, indexing, and basic database maintenance.

## Database Design

The database includes the following main entities:

- Customers
- Product categories
- Products
- Warehouses
- Inventory
- Orders
- Order items
- Shipments
- Tracking events
- Customer feedback

The design separates data into related tables to reduce repetition and improve data integrity. For example, product categories are stored separately from products, and the many-to-many relationship between orders and products is handled through the `order_items` table.

## Key Features

- Entity Relationship Diagram (ERD)
- PostgreSQL table schema
- Primary keys and foreign keys
- NOT NULL, UNIQUE, and CHECK constraints
- Sample e-commerce data
- Indexes on frequently joined columns
- Basic database maintenance using `VACUUM ANALYZE`
- SQL queries for sales, inventory, and delivery analysis

## Files

- `schema.sql` — creates the database tables
- `sample_data.sql` — inserts sample records into the tables
- `constraints.sql` — adds extra validation rules
- `indexes.sql` — adds indexes for query performance
- `maintenance.sql` — runs database maintenance
- `analysis_queries.sql` — contains business analysis queries
- `erd.png` — entity relationship diagram

## Example Business Questions

This database can be used to answer questions such as:

- Which product categories generate the most sales?
- Which customers have placed orders?
- What products are included in each order?
- Which warehouse fulfilled each shipment?
- What is the latest tracking status for each shipment?
- Which products have stock available in each warehouse?

## Maintenance

`VACUUM ANALYZE` was used to clean dead tuples and update PostgreSQL query planner statistics after database creation and edits. In a real application, regular maintenance would help control database bloat and support stable query performance over time.

## Skills Demonstrated

- PostgreSQL
- SQL schema design
- Relational database modelling
- ERD design
- Primary key and foreign key relationships
- Data validation using constraints
- Query optimisation using indexes
- Database maintenance
