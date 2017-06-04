drop  table test1
create table test1
(
id int identity(1,1) not null primary key,
data int null default 100,
data2 int  null

)
alter table test1 add constraint chk_data check(data>=0)
insert into test1(data,data2) values(100,1000)
select*from test1