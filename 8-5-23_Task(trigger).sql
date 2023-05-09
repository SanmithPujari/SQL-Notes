create table players(
id int,
name varchar(20),
costInM int
)

insert into players values(1,'Rashford',80)
insert into players values(2,'Foden',100)
insert into players values(3,'Ronaldo',45)
insert into players values(4,'Salah',60)
insert into players values(5,'Leao',100)

select * from players
create table playertriggeraudit(id int identity,audit text);
select * from playertriggeraudit
//delete from playertriggeraudit


1)
alter trigger tr_plyr_insertion
on players
for insert as begin declare @id int
select @id=id
from inserted 
insert into playertriggeraudit
values('New player with id ='+cast(@id as varchar)+'is added at'+cast(getdate() as varchar))
end

insert into players values(6,'Bellingham',80)


2)
alter trigger tr_plyr_deletion
on players
for delete as begin declare @id int
select @id=id
from deleted 
insert into playertriggeraudit
values('player with id ='+cast(@id as varchar)+'is deleted at'+cast(getdate() as varchar))
end

delete from players where id=6

3)
create trigger tr_plyr_updation
on players
for update 
as 
begin 
declare @id int
declare @oldname varchar(20),@newname varchar(20)
declare @oldprice int,@newprice int
declare @AuditText varchar(1000);

select * into #temptable from inserted

while(exists(select id from #temptable))
begin
set @AuditText=' '
select top 1 @id=id,@newname=name,@newprice=costinM from #temptable

select @oldname=name,@oldprice=costinM from deleted where id=@id

set @AuditText='Product with Id='+cast(@id as varchar)+'changed'
if (@oldname<> @newname )
set @AuditText=@AuditText+'product name from'+@oldname +' to '+@newname

if(@oldprice <>@newprice)
set @AuditText=@AuditText+'product price from'+cast(@oldprice  as varchar)+' to '+cast(@newprice as varchar)

insert into playertriggeraudit values (@AuditText)
delete from #temptable where Id=@id
end
end

update players set costinM=35 where name='Ronaldo'

select * from inserted


create trigger tg_sample
on players
for update
as
begin
select * from deleted
select * from inserted
end
