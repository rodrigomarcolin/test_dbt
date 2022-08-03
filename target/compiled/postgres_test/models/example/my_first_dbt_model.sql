

with agg as (
    select  SUM(new_tested) as Novos_Testados, 
            SUM(new_deceased) as Total_Mortos,
            SUM(total_tested) as Total_Testados,
    from epidemiology_data
    group by date 
)
    
select *
from agg

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null