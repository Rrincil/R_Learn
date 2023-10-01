# 绘图
a<-c(10,15,20,25,30,35)
b<-c(12,23,27,44,56,63)
plot(a,b)
#pdf("sandian.pdf")

# par(oma=c(3,3,3,3))  #请把注意里放在par函数与box函数上，其他函数后面会提及
# lines1<-plot61<-plot(a,b,type="b",pch=23,col="blue",col.axis=2,xlim=c(0,40),ylim=c(5,65),col.main=2,col.sub="blue",main="红色框里的为plot区域",sub="plot61")
# lines2<-lines(c(5,10,20,25,32,35),c(5,25,35,45,50,55),type="b",pch=21,col="red")
# legend("topleft",inset=0.05,cex=0.8,title="lines",c("lines1","lines2"),pch=c(23,21),text.col=2)
# text(27,60,"lines1",col="blue")
# text(35,45,"lines2",col="red")
box(which="plot",col="red",lwd=5)
box(which="inner",col="black",lwd=4)
box(which="figure",col="blue",lwd=3)
box(which="outer",col="green",lwd=5)







#dev.off()