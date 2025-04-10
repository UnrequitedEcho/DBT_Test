SELECT 
    ROW_NUMBER() OVER() AS id_segment_client,
    segment_client AS nom_segment_client
FROM {{ source("TechStore", 'Clients') }}
GROUP BY segment_client
ORDER BY id_segment_client