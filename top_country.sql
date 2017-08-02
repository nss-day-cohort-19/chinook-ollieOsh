--top_country.sql: Which country's customers spent the most?

select '$' || max(CountrySales.TotalSales) Sales, CountrySales.Country
from
	(select i.BillingCountry Country, sum(i.Total) TotalSales
	from Invoice i
	group by i.BillingCountry) CountrySales, Invoice i