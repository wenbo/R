x <- read.table("https://stats.biopapyrus.jp/data/sleep_in_mammals.txt", header = TRUE)
LifeSpan <- x$LifeSpan
TotalSleep <- x$TotalSleep

m <- glm(LifeSpan ~ TotalSleep, family = gaussian)

summary(m)
## 
## Call:
## glm(formula = LifeSpan ~ TotalSleep, family = gaussian)
## 
## Deviance Residuals:
##     Min       1Q   Median       3Q      Max
## -22.075  -10.699   -2.000    6.841   76.190
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)
## (Intercept)  36.9326     5.7696   6.401 4.45e-08 ***
## TotalSleep   -1.6403     0.5057  -3.243  0.00207 **
## ---
## Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
## 
## (Dispersion parameter for gaussian family taken to be 299.9632)
## 
##     Null deviance: 18754  on 53  degrees of freedom
## Residual deviance: 15598  on 52  degrees of freedom
##   (8 observations deleted due to missingness)
## AIC: 465.21
## 
## Number of Fisher Scoring iterations: 2

plot(TotalSleep, LifeSpan)
abline(a = m$coefficients[1], b = m$coefficients[2])


x <- read.table("https://stats.biopapyrus.jp/data/sleep_in_mammals.html", header = TRUE)
LifeSpan <- x$LifeSpan
TotalSleep <- x$TotalSleep
BodyWt <- x$BodyWt

TotalSleep.std <- scale(TotalSleep)
BodyWt.std <- scale(BodyWt)

m <- glm(LifeSpan ~ TotalSleep.std + BodyWt.std, family = gaussian)

summary(m)
##
## Call:
## glm(formula = LifeSpan ~ TotalSleep.std + BodyWt.std, family = gaussian)
##
## Deviance Residuals:
##     Min       1Q   Median       3Q      Max
## -20.114  -10.484   -2.591    6.490   77.322
##
## Coefficients:
##                Estimate Std. Error t value Pr(>|t|)
## (Intercept)      19.630      2.333   8.415 3.28e-11 ***
## TotalSleep.std   -6.476      2.422  -2.674   0.0101 *
## BodyWt.std        3.366      2.313   1.455   0.1518
## ---
## Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
##
## (Dispersion parameter for gaussian family taken to be 293.6548)
##
##     Null deviance: 18754  on 53  degrees of freedom
## Residual deviance: 14976  on 51  degrees of freedom
##   (8 observations deleted due to missingness)
## AIC: 465.01
##
## Number of Fisher Scoring iterations: 2
