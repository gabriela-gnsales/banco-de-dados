-- 1) Quantos são os produtos que são da CategoryID 2?

SELECT COUNT (*) FROM products 
GROUP BY category_id
HAVING category_id = 2;
-- RESULTADO: 12

-- 2) Quantos produtos com SupplierID idêntico ao CategoryID e que custam mais do que 10?

SELECT COUNT (*) FROM products 
WHERE unit_price > 10
GROUP BY category_id, supplier_id
HAVING supplier_id = category_id;
-- RESULTADO: 5

-- 3) Liste todos os nomes de produtos, suas *"Units"* e seus respectivos preços distintos que pertecem às categorias 1, 2 e 7;

SELECT category_id, product_name, unit_price, units_in_stock, units_on_order FROM products
WHERE category_id = 1 OR category_id = 2 OR category_id = 7

-- 4) Liste os 5 primeiros nomes de produtos que começam com "A" ou tenham "h" no meio do nome. Retorne em português os nomes das colunas;

SELECT product_name AS nome_produto FROM products
WHERE product_name LIKE 'A%' OR product_name LIKE '%h%'
LIMIT 5;

-- 5) Dê a média de preços de todos os produtos das categorias entre 1 e 5. Arredonde para 1 casa decimal;

SELECT ROUND(AVG(unit_price)::numeric, 1) FROM products
WHERE category_id < 6;
-- RESULTADO: 27.5

-- 6) Liste a média de preços e a quantidade de produtos distintos por SupplierID; ordene pela média de preço, do maior para o menor, e só mostre os 5 primeiros;

SELECT supplier_id, COUNT(*) AS qtde_produtos, ROUND(AVG(unit_price)::numeric, 2) AS media_precos FROM products
GROUP BY supplier_id
ORDER BY media_precos DESC
LIMIT 5;

-- 7) Liste os clientes com mais pedidos - mas somente aqueles que tiverem a partir de 2 pedidos. Corte explicitamente os clientes que compraram de funcionários sem ID;

SELECT DISTINCT customer_id, COUNT(*) FROM orders
GROUP BY customer_id, employee_id
HAVING COUNT(*) >= 2 AND employee_id IS NOT NULL

-- 8) Existe alguma cidade com mais de um código de área de telefone?


-- 9) Gere uma relação com os nomes dos clientes, suas cidades e países, em ordem alfabética de nome;

SELECT contact_name, city, country FROM customers
ORDER BY contact_name;

-- 10) Na relação do item (9), filtre pelos clientes da Alemanha, da França e da Espanha, excluindo-se os clientes que vivem nas capitais destes países;

SELECT contact_name, city, country FROM customers
WHERE (country LIKE 'Germany' OR country LIKE 'France' OR country LIKE 'Spain')
AND (city NOT LIKE 'Berlin' AND city NOT LIKE 'Paris' AND city NOT LIKE 'Madrid')
ORDER BY contact_name;