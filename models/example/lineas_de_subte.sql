

{{ config(materialized='table') }} 


with data_cte as (

   SELECT *
   FROM SUBTEDATA

)

SELECT ROUTE_ID AS "LINEAS DE SUBTE",
       COUNT(DISTINCT STOP_NAME) AS "CANTIDAD DE ESTACIONES",
       CURRENT_TIMESTAMP() AS created_at
FROM data_cte
GROUP BY ROUTE_ID


