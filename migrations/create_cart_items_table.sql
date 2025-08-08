create table if not exists m1_evaluation.cart_items
(
    id integer(11) not null auto_increment primary key,
    cart_id integer(11) not null,
    product_id integer(11) not null,
    price_rate_id integer(11) not null,
    quantity integer(10) not null,
    price integer(11) not null,
    total integer(11) not null,

    -- Indexes
    index idx_order_id (cart_id),
    index idx_product_id (product_id),
    index idx_price_rate_id (price_rate_id)
);