create table if not exists m1_evaluation.order_items
(
    id integer(11) not null auto_increment primary key,
    order_id integer(11) not null,
    product_id integer(11) not null,
    quantity integer(11) not null,

    index idx_order_id (order_id),
    index idx_product_id (product_id)
);