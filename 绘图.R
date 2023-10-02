# 绘图
## 1. plot 函数
par(mfrow=c(2,2))
a<-c(10,15,20,25,30,35)
b<-c(12,23,27,44,56,63)
plot(a,b,xlim = c(0,100),ylim = c(0,100),
     main = "图1",cex.main = 1,
     sub = "这是一个x的散点图",cex.sub = 1,
     font.sub = 3, #1表示常规，2表示粗体，3表示斜体，4表示粗斜体，5表示符号字体
     las = 2, #坐标轴标签样式：0平行，1水平，2和坐标轴垂直，3竖直
    
     pch = 3)
## 1.1 type = "p"点：type="l"线	,type="b"点线(不穿过点)；type="o"点线(穿过点); 图的类型
## type = “n”空白   type="h"类似于直方图的线  type="s"先横后竖的楼梯形状
plot(a,b,main = "图2",
     ann = F,# 隐藏 标题，x轴，y轴文字
     type = 'l',
     lwd = 2
     )
plot(a,b,type = 'o',main = "点线图3",xlab = "x值",ylab = "y值",
     lend = 2# lend	线的结尾形状：0圆形，1平头，2方形
    # xaxs = "r",
     )
#pdf("sandian.pdf")
## 1.2 xlim = NULL：x轴的坐标轴范围，参数值为向量（下限, 上限）ylim = NULL：y轴的坐标轴范围
plot(a,b,
     xlim = c(0,40),ylim = c(0,100),
     type = "b",main = "点线图",sub = "副标题",
     xlab = "x轴",ylab = "y轴",
     ann = par("ann"),
     axes = T,#axes = TRUE：逻辑值，是否显示坐标轴（xaxt、yaxt表示选择不显示对应坐标轴）
     #frame.plot = axes, # frame.plot = axes：是否显示图边框
     xgap.axis = 1,# xgap.axis = NA：x轴标签显示的距离
     #bty = 'o',#图边框类型
     col.main = "red",
     col.lab = "green",
     col.sub = "pink",
     bg = "blue",
     col = 2:9,  #点的颜色
     #pch = LETTERS[c(1,12,15,22,5,1)], #点的形状
     pch = "*",
     cex = 2,#控制点的大小
     cex.main = 5,# cex 控制大小
     lty = 6, # lty 控制线型
     lwd = 2,  #控制线的大小
     
     )



# par(oma=c(3,3,3,3))  #请把注意里放在par函数与box函数上，其他函数后面会提及
# lines1<-plot61<-plot(a,b,type="b",pch=23,col="blue",col.axis=2,xlim=c(0,40),ylim=c(5,65),col.main=2,col.sub="blue",main="红色框里的为plot区域",sub="plot61")
# lines2<-lines(c(5,10,20,25,32,35),c(5,25,35,45,50,55),type="b",pch=21,col="red")
# legend("topleft",inset=0.05,cex=0.8,title="lines",c("lines1","lines2"),pch=c(23,21),text.col=2)
# text(27,60,"lines1",col="blue")
# text(35,45,"lines2",col="red")
box(which="plot",col="red",lwd=1)
# box(which="inner",col="black",lwd=1)
# box(which="figure",col="blue",lwd=1)
box(which="outer",col="green",lwd=1)







#dev.off()