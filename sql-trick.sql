with o as (

-- your old query

),
  
n as (

-- your new query	

), 
dif as ( 
  
select 
  'n' as src, * 
  from ( select * from n except distinct select * from o )
union all 

select 'o' as src, * 
  from ( select * from o except distinct select * from n ) )

select * from dif 
  order by col_1, src desc
