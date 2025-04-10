SELECT
    id_vehicule,
    modele_vehicule,
    id_type_vehicule,
    immatriculation
FROM `Trajets.Vehicules`
WHERE immatriculation IS NOT NULL