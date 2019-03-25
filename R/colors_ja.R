
ja_colors <- c(
  `blue`       = "#319CF4",
  `orange`     = "#FF8B00",
  `bluegray`   = "#081F30",
  `green`      = "#13C18D",
  `purple`     = "#A71183",
  `red`        = "#C11344",
  `yellow`     = "#F4E649",
  `lightgray` = "#cccccc")

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
  `main`  = ja_cols("blue", "orange", "green"),
  
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
