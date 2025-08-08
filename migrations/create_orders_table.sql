create table if not exists m1_evaluation.orders
(
    id integer(11) not null auto_increment primary key,
    customer_id integer(11) not null,
    delivery_id integer(11) not null,
    price integer(11) not null,
    status varchar(10) not null,
    created_at datetime not null,

    -- indexes
    index idx_customer_id (customer_id),
    index idx_delivery_id (delivery_id),
    index idx_status (status),
    index idx_order_date (created_at),
    index idx_customer_status (customer_id, status),
    index idx_date_status (created_at, status)
);