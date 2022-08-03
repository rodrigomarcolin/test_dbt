


with vals as (
    select 
    MES_ACPORC as Mes
    
        , SUM(val_melhor_est) as SOMA_val_melhor_est
    
        , SUM(val_econ_parcial) as SOMA_val_econ_parcial
    
        , SUM(valprev_atu_acporc) as SOMA_valprev_atu_acporc
    
        , SUM(valprev_ini_acporc) as SOMA_valprev_ini_acporc
    
        , SUM(valreal_man_acporc) as SOMA_valreal_man_acporc
    
        , SUM(valreal_mis_acporc) as SOMA_valreal_mis_acporc
    
        , SUM(valprev_ver1_acporc) as SOMA_valprev_ver1_acporc
    
        , SUM(valprev_ver2_acporc) as SOMA_valprev_ver2_acporc
    
        , SUM(valprev_ver3_acporc) as SOMA_valprev_ver3_acporc
    
        , SUM(valprev_ver4_acporc) as SOMA_valprev_ver4_acporc
    
        , SUM(valprev_ver5_acporc) as SOMA_valprev_ver5_acporc
    
        , SUM(valprev_ver6_acporc) as SOMA_valprev_ver6_acporc
    
        , SUM(valreal_calc_acporc) as SOMA_valreal_calc_acporc
    
        , SUM(valrsrv_calc_acporc) as SOMA_valrsrv_calc_acporc
    
    from TB_ACPORC
    group by MES_ACPORC 
)
    
select *
from vals

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null