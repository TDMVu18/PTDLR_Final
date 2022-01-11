update.packages("tools")
install.packages("ggplot2", lib="C:\\Program Files\\R\\R-4.1.0")
update.packages("ggplot2")
update.packages("data.table")
update.packages("forcats")
update.packages("dplyr")
update.packages("ggrepel")
library(ggplot2)
library(data.table)
setwd('C:\\Users\\Administrator\\Desktop\\PTDLR_Final')
df = read.csv("popconvert2.csv", header =TRUE)
df
df[1,4]

#Tinh cac gia tri
fert<-df$Ti.Le.Sinh
fert
table(fert)

#Do dai
dodai<-length(fert)
print(dodai)
#Trung binh  
trung_binh<-mean(fert)
print(trung_binh)

#Yeu vi
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
yeu_vi<-getmode(fert)
print(yeu_vi)

#Trung vi
trung_vi<- median(fert)
print(trung_vi)

#Phuong sai
phuong_sai<-var(fert)
print(phuong_sai)

#Do lech chuan
do_lech_chuan<-sd(fert)
print(do_lech_chuan)

#Sai so chuan
sai_so_chuan = sd(fert)/sqrt(length(fert))
print(sai_so_chuan)

#Ve bieu do

#Bieu do tron(phan tram dan so)
country<-c("Trung Quoc", "An Do", "Hoa Ky", "Indonesia", "Pakistan", "Brazil", "Cac quoc gia khac")
pie(df$X..Dan.So, main = "Phan tram dan so", labels = country, radius = 0.8, clockwise = FALSE, col = rainbow(length(fert)))

#Bieu do cot ket hop(Tan suat ti le sinh)

a<-data.frame(QuocGia=c(df$Quoc.Gia),TiLe=c(df$Ti.Le.Sinh))
table(df$Ti.Le.Sinh)
barplot(table(a), main = "Ti Le Sinh Theo Quoc Gia", col = "yellow", horiz = TRUE)

#Bieu do duong

ggplot(a, aes(x = QuocGia, y = TiLe, group = 1)) + geom_line(color = "red") + geom_point(color ="blue")
               