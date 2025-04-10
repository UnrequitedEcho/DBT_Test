SELECT 
    d.annee,
    d.mois,
    SUM(v.montant_total) AS ventes_par_mois
FROM {{ source('TechStore', 'Ventes') }} v
    JOIN {{ ref("stg_dates") }} d USING(id_date)
GROUP BY d.annee, d.mois
ORDER BY d.annee, d.mois