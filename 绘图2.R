# plot 绘图2 
# y <- rnorm(10,20,2)
# x <- round(y,0) # 保留0位 即整数
# print(y)
# print(x)
getnums <- function(n,x,y){ #n 个平均数为x，标准差为y的  整数
  a <- round(rnorm(n,x,y),0)
  return (a)
}
n <- 1:10
x <- getnums(10,20,2)
y <- getnums(10,20,2)
z <- getnums(10,20,2)
plot(n,x,type = "o",
     xlim = c(0,18),ylim = c(0,35),
     main = "北京",xlab = "x轴",ylab = "y轴",sub = "城市",
     pch = "*",col = "red",
     )
lines(n,y,type = "l",
      col = "green",
      )
lines(n,z,typ = "b",
      col = "blue",pch = "."
      )
line(n,x)  
#line(n,x)
# Call:
#   line(n, x)
# 
# Coefficients:
# [1]  19.88   0.25
abline(line(n,x))  # line(x,y)函数实现线性拟合，并返回截距项和斜率项




