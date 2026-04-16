Create view vwLoja as 
SELECT
	DimStore.StoreKey AS 'ID_Loja',
	DimStore.StoreName AS 'Nome_Loja',
	DimStore.Status AS 'Status_Lojas',
	DimStore.OpenDate AS 'Data_Abertura',
	DimStore.EmployeeCount AS 'Quantidade_Funcionarios',
	DimGeography.ContinentName AS 'Continente',
	DimGeography.CityName AS 'Cidade',
	DimGeography.StateProvinceName AS 'Estado',
	DimGeography.RegionCountryName AS 'País'
FROM
	DimStore
INNER JOIN DimGeography
	ON DimStore.GeographyKey = DimGeography.GeographyKey
