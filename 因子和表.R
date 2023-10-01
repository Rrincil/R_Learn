# 因子和表
##- 因子（factor）可以简单的看做一个附加了更多信息的向量
##- factor(x = character(), levels, labels = levels, exclude = NA, ordered = is.ordered(x), nmax = NA)
##- 参数levels定义水平集合，是一个整数向量，ordered表示有序分类，区分普通因子和有序因子
# 1. 因子的创建
a <- c(1,2,3,1,2,5,455)
b <- factor(a) # Levels: 1 2 3 5
print(b)
print(class(b)) #"factor"
print(b[1])
## 1.1 as.factor()可将数据转换为因子
a <- c(T,F,T,F,T,F)
b <- as.factor(a)
print(b)

## 1.2 创建有序变量因子 ordered = T
a <- c('high','low','middle')
b <- factor(a,ordered = T) #Levels: high < low < middle
print(b)
### 通过指定levels选项来覆盖默认排序 Levels: low < middle < high
b2 <- factor(a,ordered = T,levels = c('low','middle','high'))
print(b2)

## 1.3 再数据框创建的之前创建好因子
names <- factor(c('小红','小绿','小蓝'))
ages <- factor(c(19,20,17),ordered = T,levels = c(17,19,20))
stu <- data.frame(
  names = names,
  ages = ages
)
print(str(stu))
print(summary(stu))


