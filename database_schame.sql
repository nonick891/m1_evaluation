create table if not exists m1_evaluation.cart_items
(
    id integer(11) not null auto_increment primary key,
    cart_id integer(11) not null,
    product_id integer(11) not null,
    price_rate_id integer(11) not null,
    quantity integer(10) not null,
    price integer(11) not null,
    total integer(11) not null,
    created_at datetime not null,
    updated_at datetime not null,
    deleted_at datetime not null,
    index idx_order_id (cart_id),
    index idx_product_id (product_id),
    index idx_price_rate_id (price_rate_id),
    index idx_created_at (created_at),
    index idx_updated_at (updated_at),
    index idx_deleted_at (deleted_at)
);

create table if not exists m1_evaluation.carts
(
    id integer(11) not null auto_increment primary key,
    customer_id integer(11) not null,
    price integer(11) not null,
    created_at datetime not null,
    updated_at datetime not null,
    index idx_customer_id (customer_id),
    index idx_order_date (created_at),
);

create table if not exists m1_evaluation.country_currencies
(
    id integer(4) not null auto_increment primary key,
    country_name varchar(255) not null,
    country_code varchar(4) not null,
    currency_name varchar(30) not null,
    currency_code varchar(4) not null,
    currency_number integer(4) not null
);

create table if not exists m1_evaluation.customers
(
    id integer(11) not null auto_increment primary key,
    country_id integer(11) not null,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    email varchar(255) not null unique,
    phone_number varchar(17) not null,
    address varchar(255) not null,
    index idx_phone (phone_number),
    index idx_email (email)
);

create table if not exists m1_evaluation.deliveries
(
    id integer(11) not null auto_increment primary key,
    order_id integer(11) not null,
    address varchar(255) not null,
    total_delivery_price integer(11) not null,
    delivery_currency integer(11) not null,
    index idx_order_id (order_id)
);

create table if not exists m1_evaluation.geo
(
    id integer(11) not null auto_increment primary key,
    country_id integer(11) not null,
    currency_id integer(11) not null,
    region varchar(255) not null,
    name varchar(200) not null,
    index idx_country_id (country_id),
    index idx_currency_id (currency_id)
);

create table if not exists m1_evaluation.leads
(
    id integer(11) not null auto_increment primary key,
    cart_id integer(11) not null,
    customer_id integer(11) not null,
    geo_id integer(11) not null,
    created_at datetime not null,
    index idx_cart_id (cart_id),
    index idx_customer_id (customer_id)
);

create table if not exists m1_evaluation.order_items
(
    id integer(11) not null auto_increment primary key,
    order_id integer(11) not null,
    product_id integer(11) not null,
    quantity integer(11) not null,
    index idx_order_id (order_id),
    index idx_product_id (product_id)
);

create table if not exists m1_evaluation.orders
(
    id integer(11) not null auto_increment primary key,
    customer_id integer(11) not null,
    delivery_id integer(11) not null,
    price integer(11) not null,
    status varchar(10) not null,
    created_at datetime not null,
    index idx_customer_id (customer_id),
    index idx_delivery_id (delivery_id),
    index idx_status (status),
    index idx_order_date (created_at),
    index idx_customer_status (customer_id, status),
    index idx_date_status (created_at, status)
);

create table if not exists m1_evaluation.price_rates
(
    id integer(11) not null auto_increment primary key,
    geo_id integer(11) not null,
    product_id integer(11) not null,
    leads_amount integer(11) not null,
    price integer(11) default 0 not null,
    index idx_product_id (product_id),
    index idx_product_id_leads_amount (product_id, leads_amount)
);

create table if not exists m1_evaluation.products
(
    id integer(11) not null auto_increment primary key,
    geo_id integer(11) not null,
    warehouse_id integer(11) not null,
    name varchar(255) not null,
    sku varchar(255) not null,
    description varchar(255) not null,
    weight integer(11) not null,
    width integer(11) not null,
    length integer(11) not null,
    index idx_geo_id (geo_id),
    index idx_warehouse_id (warehouse_id)
);

create table if not exists m1_evaluation.warehouses
(
    id integer(11) not null auto_increment primary key,
    geo_id integer(11) not null,
    country_id integer(4) not null,
    name varchar(55) not null,
    address varchar(255) not null
);