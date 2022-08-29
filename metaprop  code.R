library(meta)
mydata<-read.csv(file.choose(),header=T)
mydata
str(mydata)
my_result<-metaprop(e,n,data=mydata,studlab=paste(study),comb.fixed = FALSE,comb.random = TRUE,sm = "PLOGIT")
forest(my_result,col.diamond="black",col.diamond.lines="red",squaresize = 0.5, col.square="blue",col.square.lines="black",just="center",xlab="association",smlab ="effect",xlim ="symmetric",test.overall = TRUE,prediction = TRUE, ff.smlab = "bold",ff.study=8,ff.axis="bold")
funnel(my_result)
