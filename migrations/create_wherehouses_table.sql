create table if not exists m1_evaluation.warehouses
(
    id integer(11) not null auto_increment primary key,
    geo_id integer(11) not null,
    country_id integer(4) not null,
    name varchar(55) not null,
    address varchar(255) not null
);

insert into m1_evaluation.warehouses (geo_id, country_id, name, address) VALUES
    (1, 1, 'City: St. Petersburg', 'Plot number 30, Shushary, Detskoselskiy enterprise territory, St. Petersburg, Russian Federation'),
    (2, 2, 'Kreuski sielski Saviet, Belarus', 'Belarus Hrodna, Smarhon, Kreuski sielski Saviet N6736'),
    (3, 3, 'DIGITAL SILK ROAD COMPANY, TOO', 'Zdanie 5a, N. P. 4, prospekt Saryarqa Astana, Astana city Kazakhstan');