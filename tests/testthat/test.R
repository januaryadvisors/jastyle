library(jastyle)
library(ggplot2)


context("test style elements are implemented")
test_that("test title size is 28", {
  
  test_plot_1 <- ggplot(mtcars) +
    geom_point(aes(x=mpg, y=hp)) +
    ggtitle("Title here", subtitle = "subtitle here") +
    theme_ja()
  
  test1 <- test_plot_1$theme$plot.title$size
  
  expect_equal(test1, 22)
})


#assert

#test_plot_1$theme$axis.text$colour == "#222222"


