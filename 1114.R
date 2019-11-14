#1. 建立家人的向量資料。
#a. 將家人或親人(至少 10 人)的血型建立為字元向量,同時為每一個元素建立名稱,並列印出來。
#b. 將家人名字(至少 10 人)建立為字串向量,可用英文,同時為每一個元素建立名稱,並列印出來。
#c. 將家人或親人(至少 10 人)的年齡建立為整數向量,同時為每一個元素建立名稱,並列印出來。
#d. 將上述所建的向量,執行從小排序到大,然後從大排到小。
blood=c("A","B","O","AB","B","O","A","AB","O","B")
NAME=c("x1","x2","x3","x4","x5","x6","x7","x8","x9","x0")
age=c("16","8","23","31","48","64","21","27","36","40")
sort(blood,decreasing=F)
sort(blood,decreasing=T)
sort(NAME,decreasing=F)
sort(NAME,decreasing=T)
sort(age,decreasing=F)
sort(age,decreasing=T)

#2. 建立 5 位同隊 NBA 球星的得分資料向量。
#a. 到美國 NBA 或運動網站查詢自己喜歡的球隊以及球星,為他們的 10 場比賽建立 5 場進球的向量。以及罰球的向量。
#b. 假設上一題的 5 位球星,每場比賽會進一顆 3 分球(如果該場次未進球,則此                             為 0),請計算此 5 位球星的總得分以及平均得分。
#c. 請計算該隊 5 人的進球數和得分總數。
#d. 請列出每場比賽得分最多的球員。
names.P1

#3. 參考實例 ch4_84,列出當月有 31 天的月份。
month.data = c(31,28,31,30,31,30,31,31,30,31,30,31)
names(month.data)=month.name
month.data
names(month.data[month.data==31])

#4. 使用系統內建數據集 islands,列出排序第 30 和 35 名的島名稱和面積。
islands
newislands=sort(islands,decreasing=T)
newislands
islands[c(30,35)]
#5. 使用系統內建數據集 islands,列出前 15 大和最後 15 大的島名稱和面積。
small15.islands=tail(sort(islands,decreasing=TRUE),15)
small15.islands
big15.islands=tail(sort(islands,decreasing=TRUE),15)
big15.islands
#6. 使用系統內建數據集 islands,分別列出排序奇數和偶數的島名稱和面積。
islands[c()]