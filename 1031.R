X=1:5
X

a="hello"
b=c("hello")
c="hello"
identical(a,c)
c[2]
strsplit(c,"")
d="apple banana cat"
e=strsplit(d,"")
e
unlist(e)
length(d)
nchar(d)
f="台北城市"
nchar(f)
as.bigz(2)^500
y=as.bigz(2)
y^500
install.packages('gmp')
library(gmp)
p = c(first=28,second=31,third=35)
p
names(p)
x=1:5
names(x)=c("a","b","c","d","e")
x
c=as.bigz(2)
c^500

month.name
m = c(31,28,31,30,31,30,31,31,30,31,30,31)
m
names(m)=month.name
m
month.abb
names(m)=month.abb
sum(m)
m==30
m[m==30]

a=1:5
a
b=c(TRUE,FALSE,TRUE,FALSE,TRUE)
b
a
a[b]
a
a=sample(1:100,50)
summary(a)
islands
