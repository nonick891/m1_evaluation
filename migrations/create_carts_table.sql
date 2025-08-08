create table if not exists m1_evaluation.carts
(
    id integer(11) not null auto_increment primary key,
    customer_id integer(11) not null,
    price integer(11) not null,
    created_at datetime not null,

    -- Indexes
    index idx_customer_id (customer_id),
    index idx_order_date (created_at)
);