# 1.创建
a <- list() #创建空列表
cat("类型",class(a),"\n列表：",a)
print(a)
a <- list(x1="你好",x2 = 1:5,x3 = c("h1","h2","h3"))
print(a)
# 2.索引
cat("x1的值为：",a$x1,"\n") #$索引
cat("x2的值：",a[[2]],'\n') #序号索引，从1开始
cat("键名：",names(a))
print(a['x3'])
#cat("第二个键名和值",a[2])
# 3.修改
a[[2]] <- "修改" #$符修改
print(a)
a["x2"] <- "又修改了" #序号修改
print(a)
a <- a[-2] #负索引删除
print(a)

# 4. 列表相关函数
## 4.1 ***lapply()函数 ***
lapply(a, mean)







