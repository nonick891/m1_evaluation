CREATE TABLE IF NOT EXISTS m1_evaluation.geo
(
    id integer(11) not null auto_increment primary key,
    country_id integer(11) not null,
    currency_id integer(11) not null,
    region varchar(255) not null,
    name varchar(200) not null,

    -- Indexes
    index idx_country_id (country_id),
    index idx_currency_id (currency_id)
);