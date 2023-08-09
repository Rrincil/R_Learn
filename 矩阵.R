# 随机抽样函数sample(x,size,replace = FALSE, prob = NULL)
a <- 1:5
a1 <- c(1,3,5,7,9)
b <- sample(a,3)
b1 <- sample(a1,3)
cat("随机数",b,'\n',"随机数",b1,"\n")
# 矩阵的创建
# 1. matrix(data = NULL,nrow = 1,ncol = 1,byrow = False,dimnames = NULL)
a <- matrix(1:20,nrow = 4,byrow = TRUE)
print(a)
# 2. 利用函数将向量接起来，函数有rbind()按行接起来、cbind()按列接起来
# 2.1 按行拼接
a <- c(1,2,4)
b <- 1:3
c <- rbind(a,b)
print(c) # 用print()函数可以在控制台按照矩阵显示，cat()不行
cat("按行拼接",c)
c <- cbind(a,b)
cat("按列拼接",c)
# 3. 强制转化 as.matrix()
a <- c(1,3,5,6,8)
b <- as.matrix(a)
cat("强制转化\n")
print(b)

#cat("强制转化",b)

# 4. 创建行列名
c <- matrix(1:6,nrow = 2,byrow = T,dimnames = list(c("r1","r2"),c("l1","l2","l3")))#dimnames(list(先行后列))
print(c)
# 5. 注意事项
# 1. 循环补齐(出现警告)
a <- matrix(1:4,nrow = 2,ncol = 3,byrow = T)
print(a)
# 2. 创建一个空矩阵(出现警告)
a <- matrix(nrow = 2,ncol = 3)
print(a)
# 3. 不同类似元素
a <- matrix(c(1,"你好",NULL,TRUE,NA),nrow = 2,byrow = T)
print(a)




