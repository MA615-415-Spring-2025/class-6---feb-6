

airtemp <- readRDS("airtemp.rdata")

aa <- which(airtemp == 999)

airtemp <- airtemp[-aa]

plot(airtemp, type ="l")


library(esquisse)

esquisser(airtemp)

airtemp <- as.data.frame(airtemp)


at <- cbind(1:3459, airtemp)

colnames(at) <- c("index", "temp")

esquisser(at)

library(ggplot2)

ggplot(at) +
  aes(x = index, y = temp) +
  geom_point(
    size = 0.8,
    shape = "circle small",
    colour = "#4AC741"
  ) +
  theme_minimal()

