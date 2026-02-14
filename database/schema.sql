-- DATABASE SCHEMA
-- Project: SQL Sales Management and Analysis
-- Author: Karla Rubio
-- Description: Relational database schema for managing
-- customers, products, and sales transactions.
-- =====================================================

-- ==========================
-- TABLE: customers
-- ==========================
CREATE TABLE customers (
    customer_id NUMBER PRIMARY KEY,
    customer_name VARCHAR2(100) NOT NULL,
    email VARCHAR2(100) UNIQUE,
    phone VARCHAR2(20),
    registration_date DATE
);

-- ==========================
-- TABLE: products
-- ==========================
CREATE TABLE products (
    product_id NUMBER PRIMARY KEY,
    product_name VARCHAR2(100) NOT NULL,
    price NUMBER(10,2) NOT NULL,
    stock NUMBER NOT NULL
);

-- ==========================
-- TABLE: sales
-- ==========================
CREATE TABLE sales (
    sale_id NUMBER PRIMARY KEY,
    customer_id NUMBER NOT NULL,
    product_id NUMBER NOT NULL,
    quantity NUMBER NOT NULL,
    total_amount NUMBER(10,2),
    sale_date DATE,

    CONSTRAINT fk_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_product
        FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);

-- ==========================
-- TABLE: employees (optional if included in your project)
-- ==========================
CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    employee_name VARCHAR2(100),
    position VARCHAR2(50),
    hire_date DATE
);

Add schema.sql
