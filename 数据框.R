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


###  (4)  获取数据框的结构信息 str()
print(str(x))

### (5) 返回数据框的前几行与后几行的数据 head(x,2) tail(x, 3)
print(head(x,2)) #  返回前两的数据
print(tail(x,2)) # 返回后两行的数据
cat("\n=========\n")

## 3. 数据框的索引 
print(x[1,])  # 索引的是第一行
#print(x['A',])  # 
print(x[1,]$V1)  #第一行中的v1的元素
print(x[,2:3])   #访问多列元素 2到3列的元素
print(x[,c(2,4)]) # 访问第2列与第4列的元素
cat('\n==================\n')

## 4. 数据框的筛选 
### （1）访问所有性别为男记录  which
print(x[which(x$V2 == '李小明'),])  # 查找所有姓名为李小明的那一行的数据
print(x[which(x$V4 >= 18),])  # 查找所有大于等于18的数据
print(x[which(x$V3 == '男'),])  # 查找所有男生的数据
cat('\n==========\n')

# 查找 所有大于18岁 并且 是男生 的人的姓名
print(x[which(x$V4 >= 18 & x$V3 == '男'),'V2'])

### (2) subset() 函数过滤
re1 <- subset(x,V4 >= 18 & V3 == '男', c('V1','V2'))
print(class(re1))  #"data.frame"
print(re1)

## 5. 使用SQL查询语句

## 6. 遍历数据框的每一个值
a <- dim(x)[1]
b <- dim(x)[2]
for (i in 1:a) {
  for (j in 1:b) {
    print(x[i,j])
  }
}

## 7. 使用table函数获得统计量

## 8. 数据框增删
### (1)增加新列
x$V5 <- c('ccupy','老师','学生','学生','学生','学生')
print(x)
cat('\n======\n')
### (2) 删除列 subset()
subset(x,select = -V1)
print(x)
m <- x[,-5]  # 删除第五列
print(x)
print(m)  # 返回一个新的数据框

m <- x[-which(x$V3 == '女'),] # 返回的是一个新的列表，而不是改变原来的列表；删除姓名等于女生的那一行
print(m)  # 返回的是一个新的数据框
print(x)  # 

## 9. 连接和拆分数据框
### (1) 使用merge() 横向连接数据框 通过相同的标识连接
score  <- data.frame(
  V7 = c('score',55,23,45,34,34),
  V6 = c('sub','语文','数学','英语','生物','物理'),
  V1 = c('ID','A','B','C','D','E')
)
m = merge(x,score,by = 'V1')
print(m)

### (2) 使用cbind() 和rbind() 连接

#### 2.1 cbind() 横向连接=》列更多  **行数必须相同，不够会自动补齐**没有外键关联
m2 = cbind(x,score)
print(m2)

#### 2.2 rbind 纵向连接=》行更多 
score2 <- data.frame(
  V1 = c('F','G'),
  V2 = c('小红','小绿'),
  V3 = c('女','男'),
  V4 = c(24,25),
  V5 = c('学生','老师')
)
m3 = rbind(x,score2)
print(m3)
print('=================')
### (3) 拆分数据框 split
#### 3.1 按照性别拆分成两个数据框
m4  <- split(x,x$V3)
print(m4$男)
print(class(m4)) #"list"  
print(class(m4$男)) #"data.frame"
print(m4[2]) # 从1开始


## 10. 求数据框的各种平均值



