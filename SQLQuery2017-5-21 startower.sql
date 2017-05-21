declare @i int=0
set @i =1
while(@i<=3)
begin
	print i
	set @i =@i+1
	
end

declare @layer int=0
declare @col int=0
declare @line varchar(255)
set @layer =1
while(@layer<=5)
begin
	set @line =''
	set @col =1
	while(@col<=@layer)
	begin
	set @line = @line+'*'
	set @col = @col+1

	end
	print @line
	set @layer = @layer + 1
end