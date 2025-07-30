CREATE TABLE IF NOT EXISTS m1_evaluation.products (
    id INTEGER(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    sku VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
);

insert into m1_evaluation.products (name, sku, description) VALUES
    ('shoes ABC', 'ABC-12345-S-BL', 'color red'),
    ('shoes 01', '01-200-GR-M', 'color green'),
    ('shoes nike', 'NIK-RN4-10W', 'color white');