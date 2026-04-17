CREATE VIEW vwFVendas as
SELECT
	SalesKey AS 'ID_venda',
	CONVERT(VARCHAR(10), DateKey, 103) AS 'Data_venda',
	StoreKey AS 'ID_loja',
	ProductKey AS 'ID_produto',
	CurrencyKey AS 'ID_moeda',
	SalesQuantity AS 'Quantidade_vendida',
	ReturnQuantity AS 'Quantidade_devolvida',
	ReturnAmount AS 'Valor_devolução',
	DiscountAmount AS 'Valor_desconto',
	CONCAT(CONVERT(VARCHAR(10), DateKey, 103), CurrencyKey) AS 'Chave_data_moeda'
FROM FactSales
