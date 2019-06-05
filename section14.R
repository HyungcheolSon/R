install.packages("sqldf")
library(sqldf)
library(googleVis)
Fruits

sqldf('SELECT * FROM Fruits')

sqldf('SELECT * FROM Fruits WHERE Fruits=\'Apples\'')

sqldf('SELECT * FROM Fruits limit 3')

sqldf('SELECT * FROM Fruits ORDER BY Year')

sqldf('SELECT * FROM Fruits ORDER BY Year Desc')

sqldf("SELECT Fruit, sum(sales) from Fruits group by Fruit")

sqldf("SELECT Fruit, sum(Sales), sum(Expenses), sum(Profit) from Fruits group by Fruit")

sqldf("SELECT Year, avg(sales), avg(Expenses), avg(Profit) from Fruits group by Year")

sqldf("SELECT Fruit, sum(sales), sum(Expenses), sum(Profit) from Fruits group by Fruit order by avg(Profit) desc")

sqldf("select max(sales), min(sales) from Fruits")

sqldf("select Fruit, max(sales), min(sales) from Fruits")

sqldf('SELECT * FROM Fruits where Sales=(select min(sales) from Fruits)')

sqldf('SELECT * FROM Fruits where expenses=(select max(expenses) from Fruits)')

song <- read.csv('song.csv',header = F, fileEncoding = 'utf8')
names(song) <- c('_id','title','lyrics','girl_group_id')

girl_group <- read.csv('girl_group.csv',header = F, fileEncoding = 'utf8')
names(girl_group) <- c('_id','name','debut')
girl_group

sqldf("select gg._id, gg.name, gg.debut, s.title 
      FROM girl_group AS 
      gg INNER JOIN song AS s ON gg._id= s.girl_group_id")
