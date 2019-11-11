use Book_Sales
create table Authors(aut_key varchar(20) not null Primary key, au_id varchar(11), au_lname varchar(40), au_fname varchar(20), phone char(12), address varchar(40), 
city varchar(20), state char(2), zip char(5), contract bit)


 select * from Authors

 use Book_Sales
 create table Publishers(pub_key varchar(20) Not null Primary Key, pub_id char(4), pub_name varchar(40), city varchar(20), state char(2), country varchar(30))

 select * from Publishers

 use Book_Sales
 create table Stores(stor_key varchar(20) Not null Primary Key, stor_id char(4), stor_name varchar(40), stor_address varchar(40), city varchar(20),
  state char(2), zip char(5), discounttype varchar(40), lowqty smallint, highqty smallint, discount decimal(4,2))

 select * from Stores

 use Book_Sales
 create table Titles(title_key varchar(20) not null Primary key, title_id varchar(6), title varchar(80), type char(12), lorange int, hirange int, royalty int,
 price money, pubdate datetime)

 Select * from Titles

 create table Fact_Sales(ord_num varchar(20), ord_date datetime, qty smallint, payterms varchar(12), 
 stor_key varchar(20), Foreign key (stor_key) References Stores(stor_key),
 pub_key varchar(20), Foreign key (pub_key) References Publishers(pub_key),
 aut_key varchar(20), Foreign Key (aut_key) References Authors(aut_key),
 title_key varchar(20), Foreign Key (title_key) References Titles(title_key)
 
 select * from Fact_Sales






