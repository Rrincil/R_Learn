# 基本R语法
## 1. 向量
### 1.1 向量的创建 1. c(), 2. vector
a <- c(1,2,4,5)
c <- c("nihao","你好呀")
d <- c(T,F,F,T)
e <- sample(1:20,5,replace = T) #随机
f <- -1:6 #递增
print(a)
print(e)
print(f)

b <- vector(length = 3)
cat("\n",b)
b[1] <- 1
cat("\n赋值后:",b,"\n")

### 1.2 向量的索引
print(a[1]) #序号从1开始 
print(a[d]) #根据布尔值索引
print(a[1:3]) #多个

### 1.3 向量的修改
a[1] <- 33 #序号
a[d] <- 88 #依据布尔值索引后修改

### 1.4 向量的删除
a[-2] #创建一个新的对象，即在开辟新的地址上修改
#a <- a[-2]
print(a)

#a <- a[d] #布尔索引删除
print(a)

### 1.5 向量的增加
a <- c(a[1:2],666,777,888,a[3:4])
print(a)

### 1.6 基本函数
#### 1.6.1 获取长度length()
#### 1.6.2 判断类型 mode() , typeof() 控制台
x1 <- c(1,2,3)
x2 <- c("a","b","c")
#typeof(x2)
#mode(x2)
#### 1.6.3 顺序 字符》数字》布尔
x3 <- c("hahah",1,2,3) #mode(x3)为"character"
x4 <- c(12,4,T,F) #mode(x3)为"numeric"

#### 1.6.4 反着转即强制转换  -----字符转数字或者布尔:as.数据类型()可以进行强制转换
x5 <- as.character(x4) #数字转字符
#as.numeric(x3) #字符转数字

### 1.7 向量的循环补齐
### 1.8 相关函数













