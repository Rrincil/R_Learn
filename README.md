# R_Learn
学习R语言
# 1. 基础知识
```R
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
