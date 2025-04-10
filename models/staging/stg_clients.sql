SELECT 
    id_client,
    nom_client,
    email_client,
    id_segment_client
FROM {{ source('TechStore', 'Clients') }} c
    JOIN {{ ref("stg_segments_client") }} sc ON c.segment_client = sc.nom_segment_client

