
test_plot_1 <- ggplot(mtcars) +
  geom_point(aes(x=mpg, y=hp)) +
  ggtitle("Title here", subtitle = "subtitle here") +
  theme_ja()


#assert

test_plot_1$theme$plot.title$size == 28


#assert

test_plot_1$theme$axis.text$colour == "#222222"


