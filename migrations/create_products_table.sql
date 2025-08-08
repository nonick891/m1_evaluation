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

insert into m1_evaluation.products (geo_id, warehouse_id, name, sku, description, weight, width, length) values
    (1,1, 'shoes ABC', 'ABC-12345-S-BL', 'color red', 10, 15, 20),
    (2, 2, 'shoes 01', '01-200-GR-M', 'color green', 10, 15, 20),
    (3, 3, 'shoes nike', 'NIK-RN4-10W', 'color white', 10, 15, 20);