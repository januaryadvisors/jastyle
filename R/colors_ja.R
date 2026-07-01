
ja_colors <- c(
  `blue1`   = "#083563",
  `blue2`   = "#035F84",
  `blue3`   = "#058FB3",
  `blue4`   = "#0DC0DC",
  `blue5`   = "#69CCE3",

  `yellow1` = "#F9E660",
  `yellow2` = "#FBD753",
  `yellow3` = "#FCC747",
  `yellow4` = "#FDB73B",
  `yellow5` = "#FAA636",

  `teal1`   = "#071C1E",
  `teal2`   = "#0E2A2D",
  `teal3`   = "#1F9144",
  `teal4`   = "#265C61",
  `teal5`   = "#367CB3",
  `teal6`   = "#469DA5",
  `teal7`   = "#55B9C4",
  `teal8`   = "#60CBD6",
  `teal9`   = "#96F5FD",
  `teal10`  = "#D8FCFE",

  `brown1`  = "#201403",
  `brown2`  = "#352106",
  `brown3`  = "#5133DD",
  `brown4`  = "#744916",
  `brown5`  = "#9C6220",
  `brown6`  = "#CB8733",
  `brown7`  = "#E9A54A",
  `brown8`  = "#F5C37C",
  `brown9`  = "#F9DEB6",
  `brown10` = "#FDF3E5",

  `blue`     = "#083563",
  `orange`   = "#FAA636",
  `darkblue` = "#071C1E",
  `green`    = "#1F9144",
  `yellow`   = "#F9E660",
  `lightgray` = "#cccccc"
)

ja_view_colors <- function(...){
  library(png)
  img <- readPNG(file.path(system.file("data", package = 'jastyle'),"jastyle_colors.png"))
  while (!is.null(dev.list()))  dev.off()
  grid::grid.raster(img)
}

#For palettes
ja_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (ja_colors)

  ja_colors[cols]
}

#For manual color/fill scales
ja_hex <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (paste0("Choose a color"))

  paste0(ja_colors[cols])
}

#Define palettes here
ja_palettes <- list(
  `main`   = ja_cols("blue", "orange"),

  `blues`  = ja_cols("blue1", "blue2", "blue3", "blue4", "blue5"),

  `warms`  = ja_cols("yellow1", "yellow2", "yellow3", "yellow4", "yellow5"),

  `teals`  = ja_cols("teal1", "teal2", "teal3", "teal4", "teal5",
                     "teal6", "teal7", "teal8", "teal9", "teal10"),

  `browns` = ja_cols("brown1", "brown2", "brown3", "brown4", "brown5",
                     "brown6", "brown7", "brown8", "brown9", "brown10"),

  `mixed`  = ja_cols("blue1", "yellow5", "teal3", "brown6"),

  `full`   = ja_cols("blue1", "blue2", "blue3", "blue4", "blue5",
                     "yellow1", "yellow2", "yellow3", "yellow4", "yellow5",
                     "teal1", "teal2", "teal3", "teal4", "teal5",
                     "teal6", "teal7", "teal8", "teal9", "teal10",
                     "brown1", "brown2", "brown3", "brown4", "brown5",
                     "brown6", "brown7", "brown8", "brown9", "brown10"),

  `political` = ja_cols("blue1", "brown6")
)


ja_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- ja_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}


scale_color_ja <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- ja_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("ja_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}

scale_fill_ja <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- ja_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("ja_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
