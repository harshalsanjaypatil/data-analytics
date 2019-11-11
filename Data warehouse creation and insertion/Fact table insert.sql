USE [Services_DW]
GO

INSERT INTO [dbo].[Service_fact]
           ([service_key]
           ,[service_dt]
           ,[servive_amt]
           ,[member_key]
           ,[provider_key]
           ,[category_key]
           ,[region_key])
SELECT charge_no, charge_dt, charge_amt, C.member_no, provider_no, category_no, Credit.dbo.region.region_no 
FROM  Credit.dbo.charge as C INNER JOIN
	  Credit.dbo.member ON C.member_no = Credit.dbo.member.member_no INNER JOIN 
	  Credit.dbo.region ON Credit.dbo.region.region_no = Credit.dbo.region.region_no










