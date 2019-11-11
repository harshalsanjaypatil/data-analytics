use Services_DW
create table Member(member_key int not null Primary key, lastname varchar(50), firstname varchar(50), city varchar(50), curr_balance money,
prev_balance money, region_key int, corp_key int)

select * from Member

create table Corporation(corp_key int not null Primary key, corp_name varchar(50),region_key int, region_name varchar(50), 
city varchar(50), state_prov char(20), country char(20))

select * from Corporation

create table Provider(provider_key int not null Primary Key, provider_name varchar(50), region_key int, country char(20), state_prov char(20),
issue_dt datetime, expr_dt datetime)

select * from Provider

create table Category(category_key int not null Primary Key, category_desc varchar(50), category_code char(20))

select * from Category

create table Service_fact(service_key int, service_dt datetime, servive_amt money, region_key int, 
member_key int, Foreign Key (member_key) References Member(member_key),
provider_key int, Foreign key (provider_key) References Provider(provider_key),
category_key int, Foreign key (category_key) References Category(category_key),
corp_key int, Foreign key (corp_key) References Corporation(corp_key))

select * from Service_fact
