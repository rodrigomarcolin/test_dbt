

  create  table "airbyte"."public"."dim_mes__dbt_tmp"
  as (
    

SELECT DISTINCT mes_acporc AS mes
FROM tb_acporc
  );