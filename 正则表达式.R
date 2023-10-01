# 正则表达式
a <- "12mm"
print(grep("\\d",a))
## 1. 筛选出正确的邮箱地址  grep() 返回该值在向量中所在位置 
emails <- list(c('1234@tom.com','dhhhj@qq.com','hhh@com','sdhjhj23@123.com'))
print(emails[[1]])
result <- grep("\\w+@\\w+\\.com",emails[[1]])
print(result)
for (i in result) {
  cat('正确的邮箱是：',emails[[1]][i],'\n')
}
  

## 2. stringr包文本处理函数中正则表达式的使用
### unlist() 函数可以将多种数据类型的复杂函数对象转换为简单的单向量模式
library(stringr)
a <- "ujjjkjk23 jjj125"
b <- str_extract(a,"\\d+") # 找出第一个符合的
print(b)
print(class(unlist(b))) #"character"
print("========")
b2 <- str_extract_all(a,"\\d+") #找出所有符合的
print(b2)
print(class(b2)) # "list"
print("=======")
## 3. regexpr() 返回一个与给出第一个匹配的起始位置的文本长度相同的整数向量，如果没有则返回-1
result <- regexpr("\\d+",emails[[1]])
print(result)
print(class(result)) #"integer"
x <- 0  # 定义局部变量
for (i in result) {
  if(i >= 0){
    x <- x + 1
    cat(x)
    cat("含有数字的email的地址为：",emails[[1]][x],"的第",i,"个位置","\n")
  }else{
    x <- x + 1
    cat(x)
    cat("不含有数字的email：",emails[[1]][x],"\n")
  }
}