

SELECT 
md5(CAST(mes_acporc AS TEXT)) as mes_id,
MES_ACPORC
FROM tb_acporc
GROUP BY mes_acporc