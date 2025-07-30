CREATE TABLE IF NOT EXISTS m1_evaluation.country_currency (
    id INTEGER(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(255) NOT NULL,
    country_code VARCHAR(4) NOT NULL,
    currency_name VARCHAR(30) NOT NULL,
    currency_code VARCHAR(4) NOT NULL,
    currency_number INTEGER(4) NOT NULL,
);

insert into m1_evaluation.country_currency (country_name, country_code, currency_name, currency_code, currency_number) VALUES
    ('RUSSIAN FEDERATION (THE)', 'RUS', 'Russian Ruble', 'RUB', 643),
    ('BELARUS', 'BLR', 'Belarussian Ruble', 'BYN', 933),
    ('KAZAKHSTAN', 'KAZ', 'Tenge', 'KZT', 398);