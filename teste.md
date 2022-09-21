SELECT quantidade,
        COUNT(*)
FROM livro
GROUP BY quantidade
HAVING COUNT(*) > 50;


npx create-next-app --example with-mongodb example-app
yarn dev

MONGODB_DB=sample_mflix