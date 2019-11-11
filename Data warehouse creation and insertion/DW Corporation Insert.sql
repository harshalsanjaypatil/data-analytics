USE [Services_DW]
GO

INSERT INTO [dbo].[Corporation]
           ([corp_key]
           ,[corp_name]
           ,[region_key]
           ,[region_name]
           ,[city]
           ,[state_prov]
           ,[country])
     Select C.corp_no, C.corp_name, C.region_no, R.region_name, C.city, C.state_prov, C.country
	 From Credit.dbo.corporation AS C inner join Credit.dbo.region AS R
	 ON C.region_no=R.region_no 

