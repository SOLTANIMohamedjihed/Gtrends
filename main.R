library(gtrendsR)
library(ggplot2)

keywords=c("Tunis")
country=c('TN')
time=("2015-01-01 2021-10-27")
channel='web'

trends = gtrends(keywords, gprop =channel,geo=country, time = time )
time_trend=trends$interest_over_time

head(time_trend)
plot<-ggplot(data=time_trend, aes(x=date, y=hits,group=keyword,col=keyword))+
        geom_line()+xlab('Time')+ylab('Relative Interest')+ theme_bw()+
        theme(legend.title = element_blank(),legend.position="bottom",legend.text=element_text(size=12))+ggtitle("Google Search Volume")
plot