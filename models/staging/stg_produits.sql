SELECT 
    id_produit,
    nom_produit,
    id_categorie_produit
FROM {{ source('TechStore', 'Produits') }} p
    JOIN {{ ref("stg_categories_produit") }} cp ON p.categorie_produit = cp.nom_categorie_produit