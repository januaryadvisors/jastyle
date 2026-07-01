.onLoad <- function(libname, pkgname) {
  if (requireNamespace("sysfonts", quietly = TRUE) &&
      requireNamespace("showtext", quietly = TRUE)) {
    try(sysfonts::font_add_google("Onest", "Onest"), silent = TRUE)
    showtext::showtext_auto()
  }
}
