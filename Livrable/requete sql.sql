Select N.country,N.oilcons_ej,N.ISO3166_alpha3
FROM country AS C
JOIN fossil_energy AS N
on N.ISO3166_alpha3 = C.ISO3166_alpha3
WHERE N.country NOT LIKE '%Total%'
AND N.Years = 2019
ORDER BY N.oilcons_ej DESC
LIMIT 10;

