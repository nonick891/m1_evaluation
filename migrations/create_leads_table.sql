create table if not exists m1_evaluation.leads
(
    id integer(11) not null auto_increment primary key,
    cart_id integer(11) not null,
    customer_id integer(11) not null,
    geo_id integer(11) not null,
    created_at datetime not null,

    index idx_cart_id (cart_id),
    index idx_customer_id (customer_id)
)