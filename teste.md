SELECT quantidade,
        COUNT(*)
FROM livro
GROUP BY quantidade
HAVING COUNT(*) > 50;