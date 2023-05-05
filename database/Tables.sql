--Login

Create table admin_login_tabl
(
username nvarchar(50) primary key,
password nvarchar(50),
full_name nvarchar(50)
)
Create table author_master_tbl
(
author_id nvarchar(10) primary key,
author_name nvarchar(50)
)
Create table book_master_tbl
(
book_id nvarchar(10) primary key,
book_name nvarchar(MAX),
genre nvarchar(MAX),
author_name nvarchar(MAX),
publisher_name nvarchar(MAX),
publisher_date nvarchar(50),
language nvarchar(MAX),
edition nvarchar(MAX),
book_cost nchar(10),
no_of_pages nchar(10),
book_description nvarchar(MAX),
actual_stock nchar(10),
current_stock nchar(10),
book_img_link nvarchar(MAX)
)

Create table book_issue_tbl
(
member_id nvarchar(50),
member_name nvarchar(50),
book_id nvarchar(50),
book_name nvarchar(50),
issue_date nvarchar(50),
due_date nvarchar(50)
)

Create table member_master_tbl
(
full_name nvarchar(50),
dob nvarchar(50),
contact_no nvarchar(50),
email nvarchar(50),
state nvarchar(50),
city nvarchar(50),
pincode nvarchar(50),
full_address nvarchar(MAX),
member_id nvarchar(50) primary key,
password nvarchar(50),
account_status nvarchar(50)
)

Create table publisher_master_tbl
(
publisher_id nchar(10) primary key,
publisher_name nvarchar(MAX)
)

Create table contact_tbl
(
full_name nvarchar(50),
contact_no nvarchar(50),
email nvarchar(50),
message nvarchar(50)
)