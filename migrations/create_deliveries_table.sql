create table if not exists m1_evaluation.deliveries
(
    id integer(11) not null auto_increment primary key,
    order_id integer(11) not null,
    address varchar(255) not null,
    total_delivery_price integer(11) not null,
    delivery_currency integer(11) not null,

    -- indexes
    index idx_order_id (order_id)
);