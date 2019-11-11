USE [Services_DW]
GO

INSERT INTO [dbo].[Category]
           ([category_key]
           ,[category_desc]
           ,[category_code])
     SELECT [category_no]
      ,[category_desc]
      ,[category_code]
  FROM [Credit].[dbo].[category]


