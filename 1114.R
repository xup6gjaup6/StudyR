#1. 建立家人的向量資料。
#a. 將家人或親人(至少 10 人)的血型建立為字元向量,同時為每一個元素建立名稱,並列印出來。
blood=c("A","B","O","AB","B","O","A","AB","O","B")
#b. 將家人名字(至少 10 人)建立為字串向量,可用英文,同時為每一個元素建立名稱,並列印出來。
NAME=c("x1","x2","x3","x4","x5","x6","x7","x8","x9","x0")
#c. 將家人或親人(至少 10 人)的年齡建立為整數向量,同時為每一個元素建立名稱,並列印出來。
age=c("16","8","23","31","48","64","21","27","36","40")
#d. 將上述所建的向量,執行從小排序到大,然後從大排到小。
sort(blood,decreasing=F)
sort(blood,decreasing=T)
sort(NAME,decreasing=F)
sort(NAME,decreasing=T)
sort(age,decreasing=F)
sort(age,decreasing=T)


#2. 建立 5 位同隊 NBA 球星的得分資料向量。
#a. 到美國 NBA 或運動網站查詢自己喜歡的球隊以及球星,為他們的 10 場比賽建立 5 場進球的向量。以及罰球的向量。
NBA.player=c("JAMES HARDEN","STEPHEN CURRY","LEBRON JAMES","KAWHI LEONARD","GIANNIS ANTETOKOUNMPO")

NBA.baskts.HARDEN=sample(2:15,5)
NBA.baskts.CURRY=sample(2:15,5)
NBA.baskts.JAMES=sample(2:15,5)
NBA.baskts.LEONARD=sample(2:15,5)
NBA.baskts.ANTETOKOUNMPO=sample(2:15,5)

NBA.free.HARDEN=sample(1:5,5)
NBA.free.CURRY=sample(1:5,5)
NBA.free.JAMES=sample(1:5,5)
NBA.free.LEONARD=sample(1:5,5)
NBA.free.ANTETOKOUNMPO=sample(1:5,5)
#b. 假設上一題的 5 位球星,每場比賽會進一顆 3 分球(如果該場次未進球,則此為 0),請計算此 5 位球星的總得分以及平均得分。
score.HARDEN=NBA.baskts.HARDEN*2+NBA.free.HARDEN
sum(score.HARDEN)+5
sum(score.HARDEN)/5
score.CURRY=NBA.baskts.CURRY*2+NBA.free.CURRY
sum(score.CURRY)+5
sum(score.CURRY)/5
score.JAM.ES=NBA.baskts.JAMES*2+NBA.free.JAMES
sum(score.JAMES)+5
sum(score.JAMES)/5
score.LEONARD=NBA.baskts.LEONARD*2+NBA.free.LEONARD
sum(score.LEONARD)+5
sum(score.LEONARD)/5
score.ANTETOKOUNMPO=NBA.baskts.ANTETOKOUNMPO*2+NBA.free.ANTETOKOUNMPO
sum(score.ANTETOKOUNMPO)+5
sum(score.ANTETOKOUNMPO)/5
#c. 請計算該隊 5 人的進球數和得分總數。
sum(NBA.baskts.HARDEN)
HARDEN=sum(NBA.baskts.HARDEN)*2
HARDEN
sum(NBA.baskts.CURRY)
CURRY=sum(NBA.baskts.CURRY)*2
CURRY
sum(NBA.baskts.JAMES)
JAMES=sum(NBA.baskts.JAMES)*2
JAMES
sum(NBA.baskts.LEONARD)
LEONARD=sum(NBA.baskts.LEONARD)*2
LEONARD
sum(NBA.baskts.ANTETOKOUNMPO)
ANTETOKOUNMPO=sum(NBA.baskts.ANTETOKOUNMPO)*2
ANTETOKOUNMPO

#d. 請列出每場比賽得分最多的球員。
NBA.s=c(HARDEN,CURRY,JAMES,LEONARD,ANTETOKOUNMPO)
i=which.max(NBA.s)
NBA.player[i]



#3. 參考實例 ch4_84,列出當月有 31 天的月份。
month.data = c(31,28,31,30,31,30,31,31,30,31,30,31)
names(month.data)=month.name
month.data
names(month.data[month.data==31])

#4. 使用系統內建數據集 islands,列出排序第 30 和 35 名的島名稱和面積。
a=islands
b=sort(a)
b[30]
b[35]
c=sort(islands,decreasing=T)
c[30]
c[35]

#5. 使用系統內建數據集 islands,列出前 15 大和最後 15 大的島名稱和面積。
small15.islands=tail(sort(islands,decreasing=TRUE),15)
small15.islands
big15.islands=head(sort(islands,decreasing=TRUE),15)
big15.islands
#6. 使用系統內建數據集 islands,分別列出排序奇數和偶數的島名稱和面積。
length(islands)
x=1:length(islands)
islands[x%%2==1]
islands[x%%2==0]

