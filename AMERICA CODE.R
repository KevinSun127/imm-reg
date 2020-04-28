##log(Social spending)
AmericaData <- data.frame(`log(LPR)`, `log(social spending)`)
##GAM
ggplot(data = AmericaData, aes(x=`log(social spending)`, y= `log(LPR)`)) + geom_point(aes(color= `log(LPR)`, size = `log(social spending)`)) + geom_smooth(method = "gam", formula = y ~ s(x)) + coord_cartesian() + scale_color_gradient() + theme_classic()
##Loess
ggplot(data = AmericaData, aes(x=`log(social spending)`, y= `log(LPR)`)) + geom_point(aes(color= `log(LPR)`, size = `log(social spending)`)) + geom_smooth(method = "loess", formula = y ~ x, se = FALSE, linetype = 1) + coord_cartesian() + scale_color_gradient() + theme_bw()

##Social Spending
AmericaData <- data.frame(LPR, `Social spending/GDP`)
ggplot(data = AmericaData, aes(x= `Social spending/GDP`, y= LPR)) + geom_point(aes(color= LPR, size = `Social spending/GDP`)) + geom_smooth(method = "gam", formula = y ~ s(x)) + coord_cartesian() + scale_color_gradient() + theme_classic()

##log(GDP)
AmericaData <- data.frame(`log(LPR)`, `log(GDP)`)
##GAM
ggplot(data = AmericaData, aes(x=`log(GDP)`, y= `log(LPR)`)) + geom_point(aes(color= `log(LPR)`, size = `log(GDP)`)) + geom_smooth(method = "gam", formula = y ~ s(x), linetype = 1) + coord_cartesian() + scale_color_gradient() + theme_bw()
##Loess
ggplot(data = AmericaData, aes(x=`log(GDP)`, y= `log(LPR)`)) + geom_point(aes(color= `log(LPR)`, size = `log(GDP)`)) + geom_smooth(method = "gam", se = FALSE, linetype = 1) + coord_cartesian() + scale_color_gradient() + theme_bw()

##GDP
AmericaData <- data.frame(`LPR`, `GDP`)
##GAM
ggplot(data = AmericaData, aes(x=`GDP`, y= `LPR`)) + geom_point(aes(color= `LPR`, size = `GDP`)) + geom_smooth(method = "gam", formula = y ~ s(x, k=3), linetype = 1) + coord_cartesian() + scale_color_gradient() + theme_classic()
##Loess
ggplot(data = AmericaData, aes(x=`GDP`, y= `LPR`)) + geom_point(aes(color= `LPR`, size = `GDP`, stroke = .4, alpha = .5)) + geom_smooth(method = "loess", se = FALSE, linetype = 1) + coord_cartesian() + scale_color_gradient() + theme_bw()

##WORKING ON
ggplot(data = AmericaData, aes(x=`GDP`, y= `LPR`)) + geom_point(aes(size = `GDP`, color= `LPR`)) + geom_smooth(method = "gam", formula = y ~ s(x, k=3), linetype = 1) + coord_cartesian() + scale_color_gradient() + theme_classic()

##Vote Shares (log)
AmericaData <- data.frame(log(`LPR`), log(`GOP Vote Share`))
ggplot(data = AmericaData, aes(x=log(`GOP Vote Share`), y= log(`LPR`))) + geom_point(aes(size = log(`GOP Vote Share`), color= log(`LPR`))) + geom_smooth(method = "gam", formula = y ~ s(x, k=3), linetype = 1) + coord_cartesian() + scale_color_gradient() + theme_classic()
