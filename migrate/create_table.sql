/* 商品カテゴリ */
CREATE TABLE IF NOT EXISTS categories (
    category_id INTEGER NOT NULL, /* 商品カテゴリID */
    category_name VARCHAR(100), /* 商品カテゴリ名 */
    PRIMARY KEY (category_id)
);

/* 商品 */
CREATE TABLE IF NOT EXISTS commodities (
    commodity_id INTEGER NOT NULL,
    name VARCHAR(100),
    price INTEGER,
    tax_include_price INTEGER,
    class INTEGER, 
    category_id INTEGER NOT NULL,
    PRIMARY KEY (commodity_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

/* 顧客 */ 
CREATE TABLE IF NOT EXISTS customers (
    customer_id INTEGER NOT NULL,
    name VARCHAR(100),
    phone VARCHAR(100),
    PRIMARY KEY(customer_id)
);


/* 注文 */
CREATE TABLE IF NOT EXISTS orders (
    order_id INTEGER NOT NULL,
    count INTEGER,
    commodity_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    PRIMARY KEY(order_id),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY(order_id) REFERENCES commodities(commodity_id)
);
