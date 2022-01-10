update.packages("tools")
install.packages("ggplot2", lib="C:\\Program Files\\R\\R-4.1.0")
update.packages("ggplot2")
update.packages("data.table")
library(data.table)
setwd('C:\\Users\\Administrator\\Desktop\\ptdlR')
df = read.csv("popconvert2.csv", header =TRUE)
df
df[1,4]/3

