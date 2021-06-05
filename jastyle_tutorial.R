
#Download package
library(devtools)
library(ggplot2)
devtools::install_github("januaryadvisors/jastyle")

library(jastyle)

#Check font
?theme_ja

ja_font()

#Basic ggplot
ggplot(iris) +
  geom_point(aes(x=Sepal.Length, y=Sepal.Width, color=Species), size=3) 

#Apply theme_ja
ggplot(iris) +
  geom_point(aes(x=Sepal.Length, y=Sepal.Width, color=Species), size=3) +
  ggtitle("Title here", subtitle = "Subtitle here") +
  labs(caption = "Source: Add source here.") +
  theme_ja()

#Modify the theme
ggplot(diamonds) +
  geom_bar(aes(x = cut, y = carat, fill = cut), stat = "identity") +
  ggtitle("Title here", subtitle = "Subtitle here") +
  coord_flip() +
  theme_ja()

ggplot(diamonds) +
  geom_bar(aes(x = cut, y = carat, fill = cut), stat = "identity") +
  ggtitle("Title here", subtitle = "Subtitle here") +
  theme_ja() +
  theme(
    panel.grid.major.x = ggplot2::element_blank(),
    axis.text.x = element_text(angle = 45, hjust = 1)
  )

  
#Finalise the plot and export
plot_final <- ggplot(iris) +
  geom_point(aes(x=Sepal.Length, y=Sepal.Width, color=Species), size=3) +
  ggtitle("Title here", subtitle = "Subtitle here") +
  theme_ja()

finalise_plot(plot_name = plot_final,
              source = "Source: R Library",
              save_filepath = "test1.png",
              width_pixels = 640,
              height_pixels = 450)


#View custom colors
ja_view_colors()
ja_cols()
ja_hex("blue")

#Add colors manually
ggplot(iris) +
  geom_point(aes(x=Sepal.Length, y=Sepal.Width, color=Species), size=3) +
  ggtitle("Title here", subtitle = "Subtitle here") +
  theme_ja() +
  scale_color_manual(
    values = c(ja_hex("blue"), ja_hex("orange"), ja_hex("green"))
  )

ggplot(iris) +
  geom_point(aes(x=Sepal.Length, y=Sepal.Width, color=Petal.Length), size=3) +
  ggtitle("Title here", subtitle = "Subtitle here") +
  theme_ja() +
  theme(
    legend.position = "right",
    legend.title = element_text(family = ja_font(), size = 18, color = "#081F30")
  ) +
  scale_color_gradient2(high = ja_hex("orange"))
  

#Use custom palettes  
ja_palettes

ggplot(iris) +
  geom_point(aes(x=Sepal.Length, y=Sepal.Width, color=Species), size=3) +
  ggtitle("Title here", subtitle = "Subtitle here") +
  theme_ja() +
  scale_color_ja("political")

ggplot(mpg, aes(manufacturer, fill = manufacturer)) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  ggtitle("Title here", subtitle = "Subtitle here") +
  theme_ja() +
  theme(
    panel.grid.major.x = ggplot2::element_blank()
  ) +
  scale_fill_ja(palette = "mixed", guide = "none") 









