setwd("D:\\Study  Materials\\R Language\\Gayathri")
my_variable = 4
print(my_variable)

Decimals = c(2.5,2.3)
Integernum = c(1,2,3,4,8)
Bool = Integernum !=2
Chara = c("Test")
class(Decimals)
class(Integernum)
class(Chara)
Bool
class(Bool)
Indexx = Integernum[Integernum !=2]
Integernum[Integernum !=2]
Indexx

week1 = c(140,-50,20,-120,240)
week2 = c(-24,50,-100,-350,10)
All_week = week1+week2
All_week
All_week[which.max(All_week)]
names(week1) = c("Monday","Tuesday","Wednesday","Thursday","Friday")
names(All_week) = c("Monday","Tuesday","Wednesday","Thursday","Friday")
All_week[which.max(All_week)]

which(All_week==max(All_week))

Gain = sum(week2 > 0)
Loss = sum(week2 < 0)
Gain
Loss
overall_gain = sum(All_week > 0)
overall_gain
overall_loss = sum(All_week < 0)
overall_loss
overall_gain[which(overall_gain)]



gdp_growth = c(6.8, 6.6,6.4,5.9,7.2)
names(gdp_growth) = c(2013,2014,2015,2016,2017)
gdphigh = which(gdp_growth > 6.5)
gdphigh


Matrix_low =matrix(1:9, byrow = TRUE, nrow =3)

new_hope=c(460.998, 314.4)
empire_strikes=c(290.475, 247.900)
return_jedi=c(309.306, 165.8)
region=c("US", "non-US")
titles=c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
star_wars_matrix = matrix(c(new_hope,empire_strikes,return_jedi),byrow = T,nrow=3)
star_wars_matrix
rownames(star_wars_matrix) = c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
colnames(star_wars_matrix) = c("US", "non-US")

rowSums(star_wars_matrix)


non_us_all = star_wars_matrix[ ,"non-US"]
non_us_all
mean(non_us_all)


non_us_some = star_wars_matrix[1:2 ,"non-US"]
non_us_some

runif(10000)
random=rnorm(10000)
hist(rnorm(10000),breaks = 50,xlab = "testdiagram",ylab = "countfirst",main="myfirsthist")

stdvtn=sd(random)
(stdvtn)^2

boxplot(random)

Q1 = quantile(random,0.25)
Q2 = quantile(random,0.5)
Q3 = quantile(random,0.75)
IQR = Q3 - Q1
IQR
UPL =IQR *1.5 +Q3
LWRL = IQR * 1.5 -Q1
outliers = random[(random > LWRL)& (random < UPL)]
outliers
##############################----OR---###################
y=rnorm(1000)
boxplot(y)
the_quantiles_Asked=quantile(y,c(0.25,0.5,0.75))
the_quantiles_Asked
IQR=the_quantiles_Asked[3]-the_quantiles_Asked
print(IQR)#ignore the name as 75%

########################################################
eg = c(rnorm(1000),10,-15)
boxplot(eg)