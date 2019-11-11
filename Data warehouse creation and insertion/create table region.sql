USE [Services_DW]
GO

INSERT INTO [dbo].[Region]
           ([region_key]
           ,[region_name])
     SELECT [region_no]
      ,[region_name]
  FROM [Credit].[dbo].[region]

