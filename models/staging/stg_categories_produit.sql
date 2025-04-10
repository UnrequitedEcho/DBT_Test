SELECT 
    ROW_NUMBER() OVER() AS id_categorie_produit,
    categorie_produit AS nom_categorie_produit
FROM {{ source("TechStore", 'Produits') }}
GROUP BY categorie_produit
ORDER BY id_categorie_produit