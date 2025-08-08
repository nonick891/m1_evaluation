create table if not exists m1_evaluation.customers
(
    id integer(11) not null auto_increment primary key,
    country_id integer(11) not null,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    email varchar(255) not null unique,
    phone_number varchar(17) not null,
    address varchar(255) not null,

    -- indexes
    index idx_phone (phone_number),
    index idx_email (email)
);