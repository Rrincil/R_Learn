# 因子和表
##- 因子（factor）可以简单的看做一个附加了更多信息的向量
##- factor(x = character(), levels, labels = levels, exclude = NA, ordered = is.ordered(x), nmax = NA)
##- 参数levels定义水平集合，是一个整数向量，ordered表示有序分类，区分普通因子和有序因子
# 1. 因子的创建
a <- c(1,2,3,1,2,5)
b <- factor(a) # Levels: 1 2 3 5
print(b)
print(class(b)) #"factor"
print(b[1])


