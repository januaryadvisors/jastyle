
#' Apply January Advisors theme to ggplot object
#'
#' This function adds the January Advisors theme to your ggplot graphics.
#' Requires the Onest font, which is registered automatically on package load
#' via \code{sysfonts::font_add_google("Onest")} and \code{showtext::showtext_auto()}.
#' @keywords theme_ja
#' @export
#' @examples
#' scatter <- ggplot(mtcars) +
#' geom_point(aes(x=mpg, y=hp)) +
#' ggtitle("Title here", subtitle = "subtitle here") +
#' theme_ja()

theme_ja <- function() {
  ggplot2::theme_minimal() +
    ggplot2::theme(
      text                  = ggplot2::element_text(family = "Onest", colour = "#081F30", size = 14),
      axis.title            = ggplot2::element_text(family = "Onest", face = "bold", colour = "#081F30", size = 16),
      axis.text             = ggplot2::element_text(family = "Onest", colour = "#081F30", size = 14),
      axis.text.x           = ggplot2::element_text(margin = ggplot2::margin(5, 0, 10, 0)),
      axis.ticks            = ggplot2::element_blank(),
      axis.line             = ggplot2::element_blank(),
      legend.background     = ggplot2::element_rect(fill = "white", colour = NA),
      legend.key            = ggplot2::element_blank(),
      legend.text           = ggplot2::element_text(family = "Onest", colour = "#081F30", size = 13, hjust = 0),
      legend.title          = ggplot2::element_blank(),
      legend.position       = "top",
      panel.background      = ggplot2::element_rect(fill = "white", colour = NA),
      panel.grid.major.x    = ggplot2::element_line(colour = "#cbcbcb", linewidth = 0.25),
      panel.grid.major.y    = ggplot2::element_line(colour = "#cbcbcb", linewidth = 0.25),
      plot.background       = ggplot2::element_rect(fill = "white", colour = NA),
      plot.title            = ggplot2::element_text(family = "Onest", face = "bold", colour = "#081F30", size = 22),
      plot.title.position   = "plot",
      plot.subtitle         = ggplot2::element_text(family = "Onest", size = 16, margin = ggplot2::margin(4, 0, 4, 0)),
      plot.caption          = ggplot2::element_text(family = "Onest", face = "italic", hjust = 0, size = 12),
      plot.caption.position = "plot",
      strip.background      = ggplot2::element_rect(fill = "white", colour = NA),
      strip.text            = ggplot2::element_text(size = 14, hjust = 0)
    )
}

#' Return the January Advisors font family
#'
#' Registers Onest via sysfonts/showtext if available and returns the family name.
#' Falls back to \code{"Helvetica"} with a warning if the font cannot be loaded.
#' @keywords ja_font
#' @export
ja_font <- function() {
  ok <- requireNamespace("sysfonts", quietly = TRUE) &&
        requireNamespace("showtext", quietly = TRUE)

  if (!ok) {
    warning("'showtext' and 'sysfonts' are required to load Onest. Falling back to Helvetica.")
    return("Helvetica")
  }

  try(sysfonts::font_add_google("Onest", "Onest"), silent = TRUE)
  showtext::showtext_auto()
  "Onest"
}
