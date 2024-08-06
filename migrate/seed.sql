/* 商品カテゴリ */
INSERT categories (category_id, category_name) 
VALUES (1, "新商品"),(2, "ランチ"), (3, "ディナー");

/* 商品 */
INSERT commodities (commodity_id, name, price, tax_include_price, class, category_id)
VALUES (1, "カレー", 1000, 1080, 1, 2),
       (2, "ハンバーグ", 1200, 1296, 1, 2),
       (3, "ビール", 500, 540, 2, 3),
       (4, "ワイン", 800, 864, 2, 3);

/* 顧客 */
INSERT customers (customer_id, name, phone)
VALUES (1, "山田太郎", "090-1234-5678"),
       (2, "田中花子", "080-1234-5678"),
       (3, "佐藤次郎", "070-1234-5678");

/* 注文 */
INSERT orders (order_id, count, commodity_id, customer_id)
VALUES (1, 2, 1, 1),
       (2, 1, 3, 2),
       (3, 3, 2, 3);