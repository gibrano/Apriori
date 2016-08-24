apriori=function(dataset){

products=function(dataset){
  c1=vector()
  for(transaction in dataset){
    for(item in transaction){
      if(!(item %in% c1)){
        c1=c(c1,item)
      }
    }
  }
  return(sort(c1))
}

items=products(dataset)
combinations=list()

for (j in 1:length(items)) {
  l=lapply(1:nrow(t(combn(items,j))),function(i,d){as.vector(d[i,])},t(combn(items,j)))
  combinations=union(combinations,l)
}

support=function(x,y){
  count=0
  for (i in 1:length(y)) {
    if(sum(x %in% y[[i]])==length(x)){
      count=count+1
    }
  }
  pattern=paste(x, collapse=",")
  out=data.frame('Pattern'=pattern,'Support'=(count/length(y)))
  return(out)
}

result=data.frame()
for (i in 1:length(combinations)) {
    result=rbind(result,support(combinations[[i]],data))
}

result=result[result$Support>0,]
result=result[order(result$Support, decreasing=TRUE) ,]
result$Pattern=as.character(result$Pattern)

return(result)

}
