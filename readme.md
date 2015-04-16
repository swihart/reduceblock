# Why Model TBA and TRA?
Bruce Swihart  
April 16, 2015  

Standard Membrane Feeding Assay (SMFA) is a process to yield oocysts of a parasite within the midgut of a mosquito, often used in malaria vaccine experiments.  Well, several mosquitoes at a time, in different containers of different feeds.  The process involves and depends on the preparation of good, consistent controls, from which a treatment effect will be tested.  Good, consistent controls are essential to establsih before testing anything that might alter the number of oocysts.  Basically, we need to establish/know/reduce/standardize the noise of the processso that we can attempt to find the signal of a test.  In SMFA, the background noise is the variation of oocysts produced across mosquitoes under control conditions, which means 0 units of treatment dose to attempt to reduce the number of oocysts produce by parasite in the midgut of mosquitos.

For simplicity, let's say one pint of one feed containing 0 micrograms of dose is administered to 20 mosquitoes and in a separate container with the same the feed and 94 micrograms of dose is administered to a distinct set of 20 mosquitoes. So, 40 mosquitoes total, 20 receiving placebo, 20 receiving treatment.

What measures are available for us to convey how effective the treatment was concerning the number of oocysts?

There are two commonly used:  transmission-reducing activity (TRA) and  transmission-blocking activity (TBA).  If $\mu_t$ is the mean oocysts of the treatment group, $\mu_c$ is the mean oocysts of the control group, $p_t$ is the proportion of the treament group mosquitoes with 1 or more oocysts, $p_c$ is the proportion of the control group mosquitoes with 1 or more oocysts, then

  * TRA = $100(1 - \frac{\mu_t}{\mu_c} )$
  * TBA = $100(1 - \frac{p_t}{p_c} )$

The form for both measures is :

  * TBA = $100(1 - \frac{num}{den} )$
  
So the differences between TRA and TBA boil down to the differences of $\mu$ vs $p$.  

  * $\hat{\mu}$ = $\sum y_i / 20$
  * $\hat{p}$   = $\sum 1_{\{y_i > 0\}} / 20$
  
Since both $\hat{\mu}$ and $\hat{p}$ have the same denominator, we can drill down our focus to the numerators.  After rewriting the numerator of $\hat{\mu}$ we have

  * Numerator of $\hat{\mu}$ = $\sum y_i 1_{\{y_i > 0\}}$
  * Numerator of $\hat{p}$   = $\sum 1_{\{y_i > 0\}}$

  






```r
set.seed(3)
## random samples from discrete uniform
rdu<-function(n,k) sample(0:k,n,replace=T)
s <- matrix(NA, 20, 100)
for(i in 1:100) s[,i] <- rdu(20, 1)
par(mfrow=c(1,2))
plot(colSums(s>0), colSums(s), xlim=c(0,40), ylim=c(0,40),
     main="Only 0's and 1's")
abline(a=0,b=1, col="blue", lwd=3)
s2 <- matrix(NA, 20, 100)
for(i in 1:100) s2[,i] <- rdu(20, 2)
plot(colSums(s2>0), colSums(s2), xlim=c(0,40), ylim=c(0,40),
     main="0's, 1's and 2's")
abline(a=0,b=1, col="blue", lwd=3)
```

![plot of chunk unnamed-chunk-1](readme_files/figure-html/unnamed-chunk-1.png) 


