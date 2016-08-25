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

apriori=function(dataset, min_sup){

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
combinations=data.frame()

iter=length(items)

j=1
while (iter!=0) {
  if(j<=length(items)){
    l=lapply(1:nrow(t(combn(items,j))),function(i,d){as.vector(d[i,])},t(combn(items,j)))
    result=data.frame()
  for (k in 1:length(l)) {
    result=rbind(result,support(l[[k]],dataset))
  }
  result=result[result$Support>min_sup,]
  combinations=rbind(combinations,result)
  items=unique(unlist(stri_split_fixed(result$Pattern, ",")))
  iter=nrow(result)
  j=j+1
  } 
  else{
    iter=0
  }
}

combinations=combinations[order(combinations$Support, decreasing=TRUE) ,]
combinations$Pattern=as.character(combinations$Pattern)

return(combinations)

}
