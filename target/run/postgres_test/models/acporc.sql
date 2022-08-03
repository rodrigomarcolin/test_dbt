
  create view "airbyte"."public"."acporc__dbt_tmp" as (
    -- Cria Modelo com todas as colunas da TB_ACPORC
-- mas sem salvá-lo como uma tabela no DB
SELECT *
FROM tb_acporc
  );