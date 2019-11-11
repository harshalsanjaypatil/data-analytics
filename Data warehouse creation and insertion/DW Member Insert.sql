USE [Services_DW]
GO

INSERT INTO [dbo].[Member]
           ([member_key]
           ,[lastname]
           ,[firstname]
           ,[city]
           ,[curr_balance]
           ,[prev_balance]
           ,[region_key]
           ,[corp_key])
		   SELECT [member_no]
      ,[lastname]
      ,[firstname]
      ,[city]
	  ,[curr_balance]
      ,[prev_balance]
      ,[region_no]
	  ,[corp_no]
  FROM [Credit].[dbo].[member]
     
GO


