# R_Learn
学习R语言
# 1. 基础知识
``` r
# 1. 设置工作目录 getwd(),setwd()

# 2. 对象（中，英，隐藏对象：.开头）
x <- 2
"中文" <- 1
.w = 4
print(x)
print("中文")
# 3. 赋值 箭头 等于

# 4. 输出 print() cat()  ----实践课2  转义字符
a <- "你好"
print(a)
cat(a)
print("你\n好")
cat("你\n好")
cat("\n",0.33)

# 5. 条件语句练习
num <- sample(1:50,10,replace = T)
num2 <- sample(1:5,10,replace = T)
print(num[10])
#plot(num,num2)
## 5.1 计算num > 10 的个数
num_sum <- function(x){
  sum <- 0
  for (i in num) {
    if(i>10)
      sum <- sum+1
  }
  print(sum)
  return(sum)
}
num_sum(num)

## 5.2 计算num 小于40的个数
num_sum2 <- function(x){
  i <- 1
  sum <- 0
  while (i <= 10) {  
    if(x[i] < 40)
      sum = sum + 1
    i = i + 1
  }
  print(sum)
}
num_sum2(num)
# 5.3 冒泡排序
num_sum3 <- function(x){
  j <- 1
  for (i in x) { # i 在x中的值不会改变
    j = j + 1
    flag <- T
    while(j <= 10){
      #temp_i <- i
      if(i > x[j]){
        temp <- i
        i <- x[j]
        x[j] <- temp
      }
      j = j + 1
      flag <- F
    }
    if(flag)
      break
  }
  return(x)
}
#z = num_sum3(num)


num_sum4 <- function(x){  # 正确算法
  j <- 1
  i <- 1
  while (i <= 10) { # i 在x中的值不会改变
    j = i + 1
    flag <- T
    while(j <= 10){
      #temp_i <- i
      if(x[i] > x[j]){
        temp <- x[i]
        x[i] <- x[j]
        x[j] <- temp
      }
      j = j + 1
      flag <- F
    }
    if(flag)
      break
    i = i + 1
  }
  return(x)
}
z2 = num_sum4(num)
# 6. 运算符
print(4%%2)  # %% 求余 
print(4%/%2) # %/% 求商
print(exp(1)) # exp() 指数
```

# 2. 基础语法
## 2.1 向量
### 2.1 向量的创建 1. c(), 2. vector

``` r
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
```

### 2.2 向量的索引

``` r
print(a[1]) #序号从1开始 
print(a[d]) #根据布尔值索引
print(a[1:3]) #多个
```

### 2.3 向量的修改

``` r
a[1] <- 33 #序号
a[d] <- 88 #依据布尔值索引后修改
```

### 2.4 向量的删除

``` r
a[-2] #创建一个新的对象，即在开辟新的地址上修改
#a <- a[-2]
print(a)

#a <- a[d] #布尔索引删除
print(a)
```

### 2.5 向量的增加

``` r
a <- c(a[1:2],666,777,888,a[3:4])
print(a)
```

### 2.6 基本函数

#### 2.6.1 获取长度length()

#### 2.6.2 判断类型 mode() , typeof() 控制台

``` r
x1 <- c(1,2,3)
x2 <- c("a","b","c")
#typeof(x2)
#mode(x2)
```

#### 2.6.3 顺序 字符》数字》布尔

``` r
x3 <- c("hahah",1,2,3) #mode(x3)为"character"
x4 <- c(12,4,T,F) #mode(x3)为"numeric"
```

#### 2.6.4 反着转即强制转换

-   符转数字或者布尔:as.数据类型()可以进行强制转换

``` r
x5 <- as.character(x4) #数字转字符
#as.numeric(x3) #字符转数字
```

### 2.7 向量的计算
#### 2.7.1 向量的加减
```R
a
```
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

#### 2.8.3 逻辑判断 
- all()，判断元素是否都符合条件，返回逻辑值 ，只要有一个不满足，返回FALSE，看如下代码：
- any()，判断是否有元素满足条件
```r
a <- c(1,2,3)
print(all(a>2)) #返回FALSE
print(any(a>2)) #返回TRUE
```
- match()，意为匹配的意思，例如：match(A,B),判断向量A的元素在向量B里是否有，若有则返回在B中的位置，若没有，则返回NA；两向量长度不等时，循环补齐时判断，要注意时哪一个向量要循环，
```r
a <- c(1,2,3)
b <- c(2,4,3)
c <- c(1,6,3,4)
print(match(a,b)) #返回NA  1  3
print(match(a,c)) #返回 1 NA  3
print(match(c,a)) #返回 1 NA  3 NA
```
#### 2.8.4 NA与NULL值
- NA表示存在但未知的数，NULL代表不存在的数
```R
mean(c(3,5,7,9,NA))  #存在NA值，无法确定NA值的大小，返回结果也未知
mean(c(3,5,7,9,NA),na.rm=T)  #把NA值删掉
mean(c(3,5,7,9,NULL))   #NULL值根本不存在，不影响结果
```

#### ***2.8.5 向量的筛选函数***
- 1. which()函数which() 返回满足条件元素的位置
```R
a <- c(1,3,5,6)
b <- which(a==3)
print(b)
```
- 2.subset()函数 subset() 函数是返回符合条件的元素，但会忽略NA值。注意：条件应为逻辑值，否则会报错
```R

```


