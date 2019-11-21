# 大數據分析 教育部大專校院校務資訊公開平臺
# 學16.學士班以下就學穩定率-以「校(含學制班別)」統計
# https://udb.moe.edu.tw/DetailReportList/%E5%AD%B8%E7%94%9F%E9%A1%9E

# install.packages('cellranger')
# install.packages('tibble')
#  install.packages('readxl')
# library(readxl)
# install.packages('xlsx')
# library(xlsx)
# dataset <- read_excel("學16.學士班以下就學穩定率-以「校(含學制班別)」統計.xlsx")
# read.xlsx(file=Table_Names,sheetIndex=1,startRow = 3,endRow = 26,header = F,colIndex =3:5,encoding = "UTF-8")
filename <- "學16.學士班以下就學穩定率-以「校(含學制班別)」統計.csv"
a <- read.csv(filename,skip=1,header=TRUE,stringsAsFactors=FALSE,fileEncoding="UTF-8-BOM",check.names = FALSE)
# 清洗資料 先判斷總列數，然後刪除 193-210 列, 也就是只取 1:192
names(a)
head(a[,5])
nrow(a)
b <- a[1:192,]
str(b)
# 'data.frame':   192 obs. of  9 variables:
#  $ 學年度                               : chr  "107" "107" "107" "107" ...
#  $ 設立別                               : chr  "公立" "公立" "公立" "公立" ...
#  $ 學校類別                             : chr  "一般大學" "一般大學" "一般大學" "一般大學" ...
#  $ 學校統計處代碼                       : chr  "0001" "0002" "0003" "0004" ...
#  $ 學校名稱                             : chr  "國立政治大學" "國立清華大學" "國立臺灣大學" "國立臺灣師範大學" ...
#  $ 學制班別                             : chr  "學士班(日間)" "學士班(日間)" "學士班(日間)" "學士班(日間)" ...
#  $ 前一學年度錄取1年級在學學生人數(A)   : int  2014 1913 3261 1716 2467 1778 1191 1442 1054 1311 ...
#  $ 當學年度2年級在學學生數(B)           : int  1945 1829 3135 1625 2325 1687 1137 1358 1009 1236 ...
#  $ 前一學年度學生就學穩定率(%)(C)(C=B/A): num  96.6 95.6 96.1 94.7 94.2 ...
b[,2]=="私立"
nrow(b[b[,2]=="私立",])
nrow(subset(b, 設立別== "私立" ) )
subset(b, 學校類別=="技專校院" )
subset(b, 學制班別== "學士班(日間)"  )
c=subset(b,  設立別== "私立"& 學校類別=="技專校院" & 學制班別== "學士班(日間)"  )
c.私立技專校院學士班日間=subset(b,設立別=="私立"&學校類別=="技專校院"&學制班別=="學士班(日間)")
nrow(subset(b,  設立別== "私立"& 學校類別=="技專校院" & 學制班別== "學士班(日間)"  ) )
summary(c)
subset(b,學校名稱=="城市學校財團法人臺北城市科技大學")
subset(b,grepl("*臺北城市科技大學",學校名稱))
subset(b,grepl("*臺北",學校名稱))

