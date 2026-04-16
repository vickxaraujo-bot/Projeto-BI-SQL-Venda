CREATE VIEW vwProduto as 
SELECT
	DimProduct.ProductKey AS 'ID_Produto',
	DimProduct.ProductName AS 'Produto',
	DimProduct.BrandName AS 'Marca',
	DimProduct.ClassName AS 'Classe',
	DimProduct.ColorName AS 'Cor',
	DimProduct.UnitCost AS 'Custo Unitário',
	DimProduct.UnitPrice AS 'Preço Unitário',
	DimProduct.Status,
	DimProductSubcategory.ProductSubcategoryName AS 'Subcategoria',
	DimProductCategory.ProductCategoryName AS 'Categoria'
FROM
	DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
		INNER JOIN DimProductCategory
			ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
