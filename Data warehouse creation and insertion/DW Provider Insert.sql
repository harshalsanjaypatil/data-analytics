USE [Services_DW]
GO

INSERT INTO [dbo].[Provider]
           ([provider_key]
           ,[provider_name]
           ,[region_key]
           ,[country]
           ,[state_prov]
           ,[issue_dt]
           ,[expr_dt])
    SELECT [provider_no]
      ,[provider_name]
      ,[region_no]
      ,[country]
      ,[state_prov]
      ,[issue_dt]
      ,[expr_dt]
      
      
  FROM [Credit].[dbo].[provider]


