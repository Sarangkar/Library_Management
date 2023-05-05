
--- Login Stored procedure  

select * from member_master_tbl
create procedure sp_UserLogin
(
@member_id [nvarchar](50),
@password [nvarchar](50)
)

as
begin
set nocount on;
select full_name,member_id,password,account_status from member_master_tbl where member_id=@member_id and password=@password
end
go

-------------------------
select * from admin_login_tabl

Create procedure sp_AdminLogin
(
@username [nvarchar](50),
@password [nvarchar](50)
)

as
begin
set nocount on;
select username, password,full_name from admin_login_tabl where username=@username and password=@password
end
go










----------- Author --------------

create procedure sp_InsertAuthor
(
@id nchar(10),
@name nvarchar(50)
)
as
begin 
Insert into author_master_tbl(author_id,author_name) values(@id,@name)
end
go

create procedure spGetAuthorById
(
@id nchar(10)
)
as
begin
set nocount on;
select author_id,author_name from author_master_tbl where author_id=@id
end
go

----------

create procedure sp_UpdateAuthor
(
@id nchar(10),
@name nvarchar(50)
)
as
begin 
update author_master_tbl set author_name=@name where author_id=@id
end
go

---------

create procedure sp_DeleteAuthor
(
@id nchar(10)
)
as
begin 
delete from author_master_tbl where author_id=@id
end
go


---------- publisher --------------

create procedure sp_InsertPublisher
(
@publisher_id nchar(10),
@publisher_name nvarchar(50)
)
as
begin 
Insert into publisher_master_tbl(publisher_id,publisher_name) values(@publisher_id,@publisher_name)
end
go

create procedure spGetPublisherById
(
@publisher_id nchar(10)
)
as
begin
set nocount on;
select publisher_id,publisher_name from publisher_master_tbl where publisher_id=@publisher_id
end
go

----------

create procedure sp_UpdatePublisher
(
@publisher_id nchar(10),
@publisher_name nvarchar(50)
)
as
begin 
update publisher_master_tbl set publisher_name=@publisher_name where publisher_id=@publisher_id
end
go

---------

create procedure sp_DeletePublisher
(
@publisher_id nchar(10)
)
as
begin 
delete from publisher_master_tbl where publisher_id=@publisher_id
end
go

create procedure spGetPublisher
as
begin
set nocount on;
select publisher_id,publisher_name from publisher_master_tbl
end
go

------------ book -------
create procedure sp_InsertBook
(
@book_id nchar(10),
@book_name nvarchar(MAX),
@genre nvarchar(MAX),
@author_name nvarchar(MAX),
@publisher_name nvarchar(MAX),
@publisher_date nvarchar(50),
@language nvarchar(MAX),
@edition nvarchar(MAX),
@book_cost nchar(10),
@no_of_pages nchar(10),
@book_description nvarchar(MAX),
@actual_stock nchar(10),
@current_stock nchar(10),
@book_img_link nvarchar(MAX)
)
as
begin 
Insert into book_master_tbl(book_id,book_name,genre,author_name,publisher_name,publisher_date,language,edition,book_cost,no_of_pages,book_description,actual_stock,current_stock,book_img_link) values(@book_id,@book_name,@genre,@author_name,@publisher_name,@publisher_date,@language,@edition,@book_cost,@no_of_pages,@book_description,@actual_stock,@current_stock,@book_img_link)

end
go

create procedure spGetPublisherById
(
@publisher_id nchar(10)
)
as
begin
set nocount on;
select publisher_id,publisher_name from publisher_master_tbl where publisher_id=@publisher_id
end
go

----------

create procedure sp_UpdateBook
(
@book_id nchar(10),
@book_name nvarchar(MAX),
@genre nvarchar(MAX),
@author_name nvarchar(MAX),
@publisher_name nvarchar(MAX),
@publisher_date nvarchar(50),
@language nvarchar(MAX),
@edition nvarchar(MAX),
@book_cost nchar(10),
@no_of_pages nchar(10),
@book_description nvarchar(MAX),
@actual_stock nchar(10),
@current_stock nchar(10),
@book_img_link nvarchar(MAX)

)
as
begin 
update book_master_tbl set book_name=@book_name,genre=@genre,author_name=@author_name,publisher_name=@publisher_name,publisher_date=@publisher_date,language=@language,edition=@edition,book_cost=@book_cost,no_of_pages=@no_of_pages,book_description=@book_description,actual_stock=@actual_stock,current_stock=@current_stock,book_img_link=@book_img_link where book_id=@book_id
end
go

---------

create procedure sp_DeletePublisher
(
@publisher_id nchar(10)
)
as
begin 
delete from publisher_master_tbl where publisher_id=@publisher_id
end
go

create procedure spGetBook
as
begin
set nocount on;
select book_id,book_name,genre,author_name,publisher_name,publisher_date,language,edition,book_cost,no_of_pages,book_description,actual_stock,current_stock,book_img_link from book_master_tbl
end
go

SELECT * from book_issue_tbl

select full_name from member_master_tbl WHERE member_id=1001
select book_name from book_master_tbl WHERE book_id=11

truncate table book_issue_tbl

------  Member Signup --------------

select * from member_master_tbl

select max(member_id) from member_master_tbl


Create procedure sp_CheckDuplicateMember
(
@member_id  [nvarchar](50),
@email [nvarchar](50)
)
as
begin
set nocount on;
select * from member_master_tbl where member_id=@member_id  and email=@email
end
go

Create procedure sp_InsertSignup
(
@full_name nvarchar(50),
@dob nvarchar(50),
@contact_no nvarchar(50),
@email nvarchar(50),
@state nvarchar(50),
@city nvarchar(50),
@pincode nvarchar(50),
@full_address nvarchar(max),
@member_id  nvarchar(50),
@password nvarchar(50),
@account_status nvarchar(50)
)
as
begin

insert into member_master_tbl(full_name,dob,contact_no,email,state,city,pincode,full_address,member_id,password,account_status)
 values(@full_name,@dob,@contact_no,@email,@state,@city,@pincode,@full_address,@member_id,@password,@account_status)
end
go



------------ Contact Stored Procedure --------------
Create procedure sp_ContactMsg
(
@full_name nvarchar(50),
@contact_no nvarchar(50),
@email nvarchar(50),
@message nvarchar(50)
)
as
begin

insert into contact_tbl(full_name,contact_no,email,message)
 values(@full_name,@contact_no,@email,@message)
end
go

Create procedure sp_CheckDuplicateContact
(
@contact_no  [nvarchar](50),
@email [nvarchar](50)
)
as
begin
set nocount on;
select * from contact_tbl where contact_no=@contact_no and email=@email
end
go