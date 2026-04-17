create view vw_taxa_cambio as
SELECT
	CONVERT(VARCHAR(10), FactExchangeRate.DateKey,103) AS 'Data',
	DimCurrency.CurrencyName AS 'Moeda',
	DimCurrency.CurrencyDescription AS 'Nome_Moeda',
	FactExchangeRate.AverageRate AS 'Taxa_Media',
	FactExchangeRate.EndOfDayRate AS 'Taxa_Fechamento',
	CONCAT(CONVERT(VARCHAR(10), FactExchangeRate.DateKey,103), DimCurrency.CurrencyKey) AS 'Chave_da_moeda'
FROM
	FactExchangeRate
INNER JOIN DimCurrency
	ON FactExchangeRate.CurrencyKey = DimCurrency.CurrencyKey
