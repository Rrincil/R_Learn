# 数据框
# 数据框类似于矩阵可以看成每个组件长度相同的列表
## 1.数据框的创建
### (1) 用向量创建数据框
names <- c('小红','小绿','小草')
ages <- c(14,15,71)
sexs <- c('女','男','女')
students <- data.frame(names,ages,sexs)
print(students)
cat("输出姓名前两个元素",students$names[c(1,2)],'\n')

### (2) 直接创建数据框   要使用等于=符号
s <- data.frame(
  Name = c('x','y'),
  ages = c(13,14),
  row.names = paste('row',1:2) # 使用row.names参数直接为行命名
)
print(s)
print(typeof(s$Name))
x <- strsplit(s$Name,' ')

### (3) 使用read.table 或者read.csv 读取文本文件，返回数据
print(getwd())
x <- read.table('./work1/R_learn/读取数据框数据.txt',
                header = T, #包含标题
                row.names = 1, #第一列为标题
                encoding = 'utf-8'
)
print(x)
print(class(x))
print(x[1]) #序号索引整个组件
print(class(x[1]))  # "data.frame"


## 2. 数据框查看列名
###  (1)colnames 与行名names
print(class(names(x))) # "character"
print(names(x))
print(colnames(x))

### (2) 用row.names、rownames函数查看行名、修改行名
print(class(rownames(x))) # "character"
print(class(row.names(x)))
print(rownames(x))


### (3) 获取行列维度的函数 nrow()返回行数 ncol() 返回列数 dim() 返回行列数
print(dim(x))  # 返回可以用序号的索引来索引 
print(class(dim(x))) #"integer"
print(nrow(x))
print(ncol(x)) 







