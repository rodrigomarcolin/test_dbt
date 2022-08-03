{{ config(materialized='table') }}


with vals as (
    select 
    MES_ACPORC as Mes
    {% for col in adapter.get_columns_in_relation(ref('acporc')) if 'val' in col.name %}
        , SUM({{col.name}}) as SOMA_{{col.name}}
    {% endfor %}
    from TB_ACPORC
    group by MES_ACPORC 
)
    
select *
from vals

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
