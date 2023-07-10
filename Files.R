# 1. 文件读取 what写读入的数据类型，如果文件有好几种类型，可以啥也不写（what=" "），sep表示文件中数据的分隔符
#read.table(file = "E:/R_languge/R_work/practice1.xlsx",sep = "")
library("xlsx")
x <- c(read.xlsx("E:/R_languge/R_work/practice1.xlsx",1,colIndex = 1,header= F))# sheetIndex 开始的序号
print(x)
y <- read.xlsx("E:/R_languge/R_work/practice1.xlsx",sheetIndex = 1,colIndex = 2,header= TRUE)
print(x[1])
print(y)
.p <- 5 #.开头为隐藏对象
# 2. 文件存储
# 3. 文件删除
