#' Apply January Advisors theme to highcharter object
#'
#' This function allows you to add the January Advisors theme to your highcharter graphics.
#' @keywords ja_hc_theme
#' @export
#' @examples
#' highcharter::hchart(iris, "scatter", hcaes(Sepal.Length, Sepal.Width, group=Species)) %>%
#' hc_add_theme(ja_hc_theme())

ja_hc_theme <- function(base_size = "12px",
                        base_family = "Onest, sans-serif",
                        title_size = "22px",
                        title_weight = "400",
                        subtitle_size = "14px",
                        subtitle_weight = "400",
                        credit_size = "10px",
                        header_align = "left",
                        legend_align = "center",
                        credits_align = "left",
                        legend_position = "top",
                        chart_colors = unname(ja_palettes$discrete),
                        ...) {

  highcharter::hc_theme_merge(
    highcharter::hc_theme_smpl(),
    highcharter::hc_theme(colors = chart_colors,
                          label = list(fontWeight = "regular"),
                          marker = list(fillColor = chart_colors,
                                        lineColor = '#000',
                                        radius = 3,
                                        lineWidth = 1,
                                        symbol = "circle"),
                          chart = list(backgroundColor = "#fff",
                                       style = list(fontFamily = base_family,
                                                    fontSize = base_size,
                                                    color = "#2d2d2d",
                                                    fontWeight = "500",
                                                    textTransform = "initial")),
                          plotOptions = list(line = list(
                            marker = list(
                              enabled = TRUE,
                              radius = 5,
                              lineWidth = 3,
                              symbol = "circle"
                            )
                          )),
                          title = list(style = list(fontFamily = base_family,
                                                    fontSize = title_size,
                                                    fontWeight = title_weight,
                                                    color = "#081F30"),
                                       align = header_align),
                          subtitle = list(style = list(fontFamily = base_family,
                                                       color = "#2d2d2d",
                                                       textTransform = "initial",
                                                       fontWeight = subtitle_weight,
                                                       fontSize = subtitle_size),
                                          align = header_align),
                          legend = list(align = legend_align,
                                        style = list(fontFamily = base_family,
                                                     fontSize = base_size,
                                                     color = "white"),
                                        itemStyle = list(fontFamily = base_family,
                                                         fontSize = base_size,
                                                         fontWeight = "regular",
                                                         color = '#2d2d2d'),
                                        itemHoverStyle = list(color = 'gray'),
                                        verticalAlign = legend_position),
                          credits = list(style = list(color = "#2d2d2d",
                                                      fontSize = credit_size),
                                         align = credits_align),
                          xAxis = list(labels = list(style = list(fontFamily = base_family,
                                                                  fontSize = base_size,
                                                                  color = "#2d2d2d")),
                                       title = list(style = list(color = "#2d2d2d",
                                                                 fontSize = base_size,
                                                                 fontWeight = "500")),
                                       lineColor = '#2d2d2d',
                                       lineWidth = 2,
                                       gridLineWidth = 0,
                                       gridLineColor = '#cbcbcb',
                                       tickColor = '#cbcbcb',
                                       tickWidth = 1),
                          yAxis = list(labels = list(style = list(fontFamily = base_family,
                                                                  fontSize = base_size,
                                                                  color = "#2d2d2d")),
                                       title = list(style = list(color = "#2d2d2d",
                                                                 fontSize = base_size,
                                                                 fontWeight = "500")),
                                       gridLineWidth = 1,
                                       gridLineColor = '#cbcbcb',
                                       lineColor = '#cbcbcb',
                                       lineWidth = 0,
                                       minorGridLineWidth = 0,
                                       minorGridLineColor = '#cbcbcb',
                                       tickColor = '#cbcbcb',
                                       tickWidth = 1)))

}
