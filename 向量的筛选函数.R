a <- c(1,3,5,6)
b <- which(a==3)
print(b)
# rnorm(x)返回x位数的随机样本
c <- rnorm(2)
print(c)
#subset(条件接收,条件) 返回符合条件的值，忽略NA
a <- c(1,2,4,5,NA,NULL)
b <- subset(a,a>2)
print(a[a>3])
print(b)
#ifelse(x,a,b)函数判断元素x是否符合条件，如符合，返回a，若不符合，返回b。其中x为逻辑值
a <- c(1,2,4,5,NA,NULL)
b <- ifelse(a>3,1,0)
c <- ifelse(a>3,"是","否")
print(b)
print(c)
cat(length(a))
#




