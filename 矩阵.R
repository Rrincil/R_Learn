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

# 矩阵的索引
print("----------------------")
a <- matrix(1:6,nrow = 2,byrow = T,dimnames = list(c("r1","r2"),c("l1","l2","l3")))
print(a)
print(a[2,3])#索引第二行第三列的元素
print(a[2,-3]) ##返回第2行,但排除第3列元素
print(a[2,])# 第二行的元素,返回的类型是integer
cat(class(a[2,]))
print(a[,1]) #第一列的元素
print(a[]) # 整个矩阵
cat("行列名索引",a["r1",])# 按照行列名字索引
print(a["r1","l2"])
## 多行(列)索引
print("-------")
print(a[c(1,2),c(2,3)]) #索引第一,二行,第二,三列
print(a[c("r1","r2"),c("l1","l2")])
print(a[c(1,2),-c(2,3)]) #索引第一,二行,但排除第二,三列

# 矩阵的相关函数
print("-------------")
a[1,]
print(a[1,])#1  2  3 
print(a[1,,drop = F]) #不会变为integer,类型仍然为矩阵
print(class(a[1,,drop = F]))
# 转置矩阵
print("---------------")
b <- t(a)
print(b)
# 合并矩阵
a <- matrix(1:6,nrow = 2,byrow = T)
b <- matrix(6:12,nrow = 2,byrow = T)
b1 <- matrix(6:11,nrow = 2,byrow = T)
print(a)
print(b)
print(b1)
c <- cbind(a,b) #按行拼接
#c2 <- rbind(a,b) #按列拼接,不同列会报错.
c3 <- rbind(a,b1) #按列拼接,不同列会报错.
print(c)
print(c3)
