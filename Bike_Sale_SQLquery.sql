
With CTE as
(Select * From bike_share_yr_0
 Union
 Select *From bike_share_yr_1)

 Select 
 dteday,
 season,
 a.yr,
 weekday,
 hr,
 rider_type,
 riders,
 price,
 COGS,
 riders*price as revenue,
 riders*price-COGS*riders as Profit
 
 From CTE a
 left join cost_table b
 on a.yr=b.yr