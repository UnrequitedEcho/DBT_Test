SELECT
    annee,
    mois,
    jour
FROM {{ ref('ventes_par_mois') }}
    JOIN {{ ref('stg_dates') }} USING (id_date)
WHERE DATEFROMPARTS(annee, mois, jour) BETWEEN '1900-01-01' AND CURRENT_DATE()