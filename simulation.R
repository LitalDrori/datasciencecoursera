lambda<-0.2
TheoMean<-1/lambda
TheoSD<-1/lambda
n<-40
B<-10000
simData<-NULL
for (i in 1:B) {
    simData<-rbind(simData,c(rexp(n, lambda)))
    
}

simMean<-apply(simData, 1, mean)
hist(simMean)
mean(simMean)
abline(v=TheoMean, col = 'blue',lwd = 2)
abline(v=mean(simMean), col = 'Red',lwd = 2)
lines(density(simMean)) 

simmdf<-data.frame(simMean)
ggplot(simmdf, aes(x = simMean)) + 
    geom_histogram(aes(y = ..density..)) + 
    geom_density(aes(col = 'blue', lwd = 1))