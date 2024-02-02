SELECT gangs.name, COUNT(CASE WHEN criminals.role = 'C' AND criminals.date_of_death IS NULL THEN 1 ELSE NULL END) AS chiefs, COUNT(CASE WHEN criminals.role = 'S' AND criminals.date_of_death IS NULL THEN 1 ELSE NULL END) AS soldiers FROM gangs LEFT JOIN criminals ON gangs.gang_id = criminals.gang_id GROUP BY gangs.name ORDER BY gangs.name;