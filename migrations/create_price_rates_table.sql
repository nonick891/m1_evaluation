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

insert into m1_evaluation.price_rates (geo_id, product_id, leads_amount, price)
values
    (1, 1, 1000, 350000),
    (1, 1, 10000, 345000),
    (1, 1, 100000, 340000),
    (1, 1, 1000000, 330000),
    (1, 2, 1000, 150000),
    (1, 2, 10000, 145000),
    (1, 2, 100000, 140000),
    (1, 2, 1000000, 130000),
    (2, 3, 1000, 865000),
    (2, 3, 10000, 844500),
    (2, 3, 100000, 817500),
    (2, 3, 1000000, 799999);
