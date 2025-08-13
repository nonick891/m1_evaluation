-- Database schema for m1_evaluation
CREATE SCHEMA IF NOT EXISTS m1_evaluation;

-- carts table
CREATE TABLE IF NOT EXISTS m1_evaluation.carts
(
    id          INTEGER(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_id INTEGER(11) NOT NULL,
    price       INTEGER(11) NOT NULL,
    created_at  DATETIME    NOT NULL,
    INDEX idx_customer_id (customer_id),
    INDEX idx_order_date (created_at)
);

-- cart_items table
CREATE TABLE IF NOT EXISTS m1_evaluation.cart_items
(
    id            INTEGER(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cart_id       INTEGER(11) NOT NULL,
    product_id    INTEGER(11) NOT NULL,
    price_rate_id INTEGER(11) NOT NULL,
    quantity      INTEGER(10) NOT NULL,
    price         INTEGER(11) NOT NULL,
    total         INTEGER(11) NOT NULL,
    INDEX idx_order_id (cart_id),
    INDEX idx_product_id (product_id),
    INDEX idx_price_rate_id (price_rate_id)
);

-- country_currencies table
CREATE TABLE IF NOT EXISTS m1_evaluation.country_currencies
(
    id              INTEGER(4)   NOT NULL AUTO_INCREMENT PRIMARY KEY,
    country_name    VARCHAR(255) NOT NULL,
    country_code    VARCHAR(4)   NOT NULL,
    currency_name   VARCHAR(30)  NOT NULL,
    currency_code   VARCHAR(4)   NOT NULL,
    currency_number INTEGER(4)   NOT NULL
);

-- customers table
CREATE TABLE IF NOT EXISTS m1_evaluation.customers
(
    id           INTEGER(11)  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    country_id   INTEGER(11)  NOT NULL,
    first_name   VARCHAR(100) NOT NULL,
    last_name    VARCHAR(100) NOT NULL,
    email        VARCHAR(255) NOT NULL UNIQUE,
    phone_number VARCHAR(17)  NOT NULL,
    address      VARCHAR(255) NOT NULL,
    INDEX idx_phone (phone_number),
    INDEX idx_email (email)
);

-- deliveries table
CREATE TABLE IF NOT EXISTS m1_evaluation.deliveries
(
    id                   INTEGER(11)  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    order_id             INTEGER(11)  NOT NULL,
    address              VARCHAR(255) NOT NULL,
    total_delivery_price INTEGER(11)  NOT NULL,
    delivery_currency    INTEGER(11)  NOT NULL,
    INDEX idx_order_id (order_id)
);

-- geo table
CREATE TABLE IF NOT EXISTS m1_evaluation.geo
(
    id          INTEGER(11)  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    country_id  INTEGER(11)  NOT NULL,
    currency_id INTEGER(11)  NOT NULL,
    region      VARCHAR(255) NOT NULL,
    name        VARCHAR(200) NOT NULL,
    INDEX idx_country_id (country_id),
    INDEX idx_currency_id (currency_id)
);

-- leads table
CREATE TABLE IF NOT EXISTS m1_evaluation.leads
(
    id          INTEGER(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cart_id     INTEGER(11) NOT NULL,
    customer_id INTEGER(11) NOT NULL,
    geo_id      INTEGER(11) NOT NULL,
    created_at  DATETIME    NOT NULL,
    INDEX idx_cart_id (cart_id),
    INDEX idx_customer_id (customer_id)
);

-- order_items table
CREATE TABLE IF NOT EXISTS m1_evaluation.order_items
(
    id         INTEGER(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    order_id   INTEGER(11) NOT NULL,
    product_id INTEGER(11) NOT NULL,
    quantity   INTEGER(11) NOT NULL,
    INDEX idx_order_id (order_id),
    INDEX idx_product_id (product_id)
);

-- orders table
CREATE TABLE IF NOT EXISTS m1_evaluation.orders
(
    id          INTEGER(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_id INTEGER(11) NOT NULL,
    delivery_id INTEGER(11) NOT NULL,
    price       INTEGER(11) NOT NULL,
    status      VARCHAR(10) NOT NULL,
    created_at  DATETIME    NOT NULL,
    INDEX idx_customer_id (customer_id),
    INDEX idx_delivery_id (delivery_id),
    INDEX idx_status (status),
    INDEX idx_order_date (created_at),
    INDEX idx_customer_status (customer_id, status),
    INDEX idx_date_status (created_at, status)
);

-- price_rates table
CREATE TABLE IF NOT EXISTS m1_evaluation.price_rates
(
    id           INTEGER(11)           NOT NULL AUTO_INCREMENT PRIMARY KEY,
    geo_id       INTEGER(11)           NOT NULL,
    product_id   INTEGER(11)           NOT NULL,
    leads_amount INTEGER(11)           NOT NULL,
    price        INTEGER(11) DEFAULT 0 NOT NULL,
    INDEX idx_product_id (product_id),
    INDEX idx_product_id_leads_amount (product_id, leads_amount)
);

-- products table
CREATE TABLE IF NOT EXISTS m1_evaluation.products
(
    id           INTEGER(11)  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    geo_id       INTEGER(11)  NOT NULL,
    warehouse_id INTEGER(11)  NOT NULL,
    name         VARCHAR(255) NOT NULL,
    sku          VARCHAR(255) NOT NULL,
    description  VARCHAR(255) NOT NULL,
    weight       INTEGER(11)  NOT NULL,
    width        INTEGER(11)  NOT NULL,
    length       INTEGER(11)  NOT NULL,
    INDEX idx_geo_id (geo_id),
    INDEX idx_warehouse_id (warehouse_id)
);

-- warehouses table
CREATE TABLE IF NOT EXISTS m1_evaluation.warehouses
(
    id         INTEGER(11)  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    geo_id     INTEGER(11)  NOT NULL,
    country_id INTEGER(4)   NOT NULL,
    name       VARCHAR(55)  NOT NULL,
    address    VARCHAR(255) NOT NULL
);