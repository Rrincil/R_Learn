# 2. 基础语法
## 2.1 向量
### 2.1 向量的创建 1. c(), 2. vector
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

### 2.2 向量的索引
print(a[1]) #序号从1开始 
print(a[d]) #根据布尔值索引
print(a[1:3]) #多个

### 2.3 向量的修改
a[1] <- 33 #序号
a[d] <- 88 #依据布尔值索引后修改

### 2.4 向量的删除
a[-2] #创建一个新的对象，即在开辟新的地址上修改
#a <- a[-2]
print(a)
#a <- a[d] #布尔索引删除
print(a)

### 2.5 向量的增加
a <- c(a[1:2],666,777,888,a[3:4])
print(a)

### 2.6 基本函数

#### 2.6.1 获取长度length()

#### 2.6.2 判断类型 mode() , typeof() 控制台
x1 <- c(1,2,3)
x2 <- c("a","b","c")
#typeof(x2)
#mode(x2)

#### 2.6.3 顺序 字符》数字》布尔
x3 <- c("hahah",1,2,3) #mode(x3)为"character"
x4 <- c(12,4,T,F) #mode(x3)为"numeric"
#### 2.6.4 反着转即强制转换符转数字或者布尔:as.数据类型()可以进行强制转换
x5 <- as.character(x4) #数字转字符
#as.numeric(x3) #字符转数字

### 2.7 向量的计算
#### 2.7.1 向量的加减乘除取余%%，商%/%-- 循环加减
a <- c(1,2)
b <- c(3,4,5,6)
c <- a+b  #长度不相同的向量加减 ------循环加减
d <- a-b
print(c)
print(d)

a2 <- c(3,4)
c2 <- a+a2  #长度相等的向量加减
print(c2)

### 2.8 相关函数

#### 2.8.1 等差数列 seq(from,to,by)
a <- seq(from = 1,to = 10,by = 3)  # "double"类型
b <- seq(1,6,3)
print(a)
print(b)

#### 2.8.2 重复函数 rep(x,time):x重复time次；rep(x,each):x中的每个连续重复each次依次排列，不写each或者time默认为time
a <- c(1,2,3)
b <- rep(a,time = 2)
c <- rep(a,each = 2)
d <- rep(a,2) #不写each或者time默认为time
print(d)

#### 2.8.3 逻辑判断 all()，判断元素是否都符合条件，any()，判断是否有元素满足条件
a <- c(1,2,3)
b <- c(2,4,3)
c <- c(1,6,3,4)
print(all(a>2)) #返回FALSE
print(any(a>2)) #返回TRUE

print(match(a,b)) #返回NA  1  3
print(match(a,c)) #返回 1 NA  3
print(match(c,a)) #返回 1 NA  3 NA
#### 2.8.4 NA与NULL值
mean(c(3,5,7,9,NA))  #存在NA值，无法确定NA值的大小，返回结果也未知
mean(c(3,5,7,9,NA),na.rm=T)  #把NA值删掉
mean(c(3,5,7,9,NULL))   #NULL值根本不存在，不影响结果
#### ***2.8.5 向量的筛选***



