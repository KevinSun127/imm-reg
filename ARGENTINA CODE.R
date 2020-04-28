attach("immigration v gdp")
lm(Immigration ~ Social Spending) -> x
summary(x)

lm(sqrt(Immigration + 10^6) ~ Social Spending)

lm(log(Immigration + 10^6) ~ `Social Spending`) -> x

summary(x)

##ommitting negatives
> Immigration2 <- Immigration[!Immigration %in% -230001.00:-205971.59]         
> Immmigraiton2 <- Immigration

##Logarithmic Model
> lm(log(`Immigration Test` + 10^6) ~ `Social Spending`) -> x

##Testing out for outliers
lm(log(log(`Immigration Test` + 10^6)) ~ log(`Social Spending`)) -> y

data.frame(Immigration, `Social Spending`) -> ArgentinaData


qplot(x= Immigration, y = `Social Spending`, color = Immigration, data = ArgentinaData, geom = "point", )


#worked
ggplot(data = ArgentinaData, aes(x=`Social Spending`, y= Immigration)) + geom_point(aes(color=Immigration, size = `Social Spending`)) + geom_smooth(method = "loess", formula = (y ~ exp(x)), se=FALSE, linetype = 1) + coord_cartesian() + scale_color_gradient() + theme_bw()

##FINAL MODEL
ggplot(data = ArgentinaData, aes(x=`Social Spending`, y= Immigration)) + geom_point(aes(color=Immigration, size = `Social Spending`)) + geom_smooth(method = "lm", formula = (y ~ log(x)), se = FALSE, linetype = 1) + coord_cartesian() + scale_color_gradient() + theme_bw()


#Random Stuff
lm(log(`Immigration Test` + 10^6) ~ `Social Spending`) -> x

prd <- data.frame(z = seq(0,50, by = .5))

result <- prd
result <- predict(x, newdata = prd)

library(reshape2)

result <- melt(result, id.vars = "x", variable.name = "model", value.name = "fitted")

ggplot(result, aes(x = x, y = "fitted")) + theme_bw() + geom_point(data = ArgentinaData) + geom_line(aes(color=model), size = 1)
