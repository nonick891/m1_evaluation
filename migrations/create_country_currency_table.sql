create table if not exists m1_evaluation.country_currencies
(
    id integer(4) not null auto_increment primary key,
    country_name varchar(255) not null,
    country_code varchar(4) not null,
    currency_name varchar(30) not null,
    currency_code varchar(4) not null,
    currency_number integer(4) not null
);

insert into m1_evaluation.country_currencies (country_name, country_code, currency_name, currency_code, currency_number) values
    ('RUSSIAN FEDERATION (THE)', 'RUS', 'Russian Ruble', 'RUB', 643),
    ('BELARUS', 'BLR', 'Belarussian Ruble', 'BYN', 933),
    ('KAZAKHSTAN', 'KAZ', 'Tenge', 'KZT', 398);