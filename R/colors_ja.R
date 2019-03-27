
ja_colors <- c(
  `blue`       = "#319CF4",
  `orange`     = "#FF8B00",
  `darkblue`   = "#081F30",
  `green`      = "#13C18D",
  `purple`     = "#A71183",
  `red`        = "#C11344",
  `yellow`     = "#F4E649",
  `lightgray` = "#cccccc",
  
  `blue1` = "#D6EBFD",
  `blue2` = "#ADD7FB",
  `blue3` = "#83C4F8",
  `blue4` = "#5AB0F6",
  `blue5` = "#319CF4",
  `blue6` = "#2575B7",
  `blue7` = "#2575B7",
  
  `orange1` = "#FFE8D4",
  `orange2` = "#FFD1A8",
  `orange3` = "#FFBA7D",
  `orange4` = "#FFA352",
  `orange5` = "#FF8B00",
  `orange6` = "#BF691D",
  `orange7` = "#BF691D",
  
  `darkblue1` = "#CED2D6",
  `darkblue2` = "#9CA5AC",
  `darkblue3` = "#6B7983",
  `darkblue4` = "#394C59",
  `darkblue5` = "#081F30",
  
  `green1` = "#D0F3E8",
  `green2` = "#A1E6D1",
  `green3` = "#72DABB",
  `green4` = "#43CDA4",
  `green5` = "#13C18D",
  `green6` = "#0F916A",
  `green7` = "#0A6047",
  
  `purple1` = "#EECFE6",
  `purple2` = "#DCA0CD",
  `purple3` = "#CA70B4",
  `purple4` = "#B9419B",
  `purple5` = "#A71183",
  `purple6` = "#7E0D62",
  `purple7` = "#540841",
  
  `red1` = "#F3D0DA",
  `red2` = "#E6A1B4",
  `red3` = "#DA728F",
  `red4` = "#CD436A",
  `red5` = "#C11344",
  `red6` = "#910F33A",
  `red7` = "#600A22",
  
  `yellow1` = "#FDFADB",
  `yellow2` = "#FBF5B6",
  `yellow3` = "#F8F092",
  `yellow4` = "#F6EB6E",
  `yellow5` = "#F4E649",
  `yellow6` = "#B7AC37",
  `yellow7` = "#7A7325"
  
  )

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
  `main`  = ja_cols("blue", "orange"),
  
  `cool`  = ja_cols("blue", "green"),
  
  `hot`   = ja_cols("yellow", "orange", "red"),
  
  `mixed` = ja_cols("blue", "orange", "green", "purple", "yellow", "red"),
  
  `gray`  = ja_cols("lightgray", "bluegray"),
  
  `political` = ja_cols("blue", "red", "green")
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
