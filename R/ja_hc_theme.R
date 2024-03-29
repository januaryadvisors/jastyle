#' Apply January Advisors theme to highcharter object
#'
#' This function allows you to add the January Advisors theme to your ggplot graphics.
#' @keywords ja_hc_theme
#' @export
#' @examples
#' highcharter::hchart(iris, "scatter", hcaes(Sepal.Length, Sepal.Width, group=Species)) %>% 
#' hc_add_theme(ja_hc_theme())

ja_hc_theme <- function(base_size="14px", base_family="Roboto Condensed", title_size="24px", title_weight = "700", subtitle_size="16px", subtitle_weight = "400",
                        credit_size="10px", header_align = "left", legend_align = "center", credits_align = "left", legend_position = "top",
                        chart_colors=c("#319CF4", "#FF8B00", "#081F30", "#13C18D", "#F4E649", "#C11344", "#A71183"), ...) {
  
  highcharter::hc_theme_merge(
    highcharter::hc_theme_smpl(),
    highcharter::hc_theme(colors = chart_colors,
                          label = list(fontWeight="regular"),
                          marker = list(fillColor = chart_colors,
                                        lineColor = '#000',
                                        radius = 3,
                                        lineWidth = 1,
                                        symbol = "circle"),
                          chart = list(backgroundColor = "#fff",
                                       style = list(fontFamily = base_family,
                                                    fontSize = base_size,
                                                    color="#2d2d2d",
                                                    fontWeight="500",
                                                    textTransform="initial")),
                          title = list(style = list(fontFamily = base_family,
                                                    fontSize = title_size,
                                                    fontWeight = title_weight,
                                                    color="#2d2d2d"),
                                       align = header_align),
                          subtitle = list(style = list(fontFamily = base_family,
                                                       color="#2d2d2d",
                                                       textTransform="initial",
                                                       fontWeight=subtitle_weight,
                                                       fontSize = subtitle_size),
                                          align = header_align),
                          legend = list(align = legend_align,
                                        style = list(fontFamily = base_family,
                                                     fontSize = base_size,
                                                     color="white"),
                                        itemStyle = list(fontFamily = base_family,
                                                         fontSize = base_size,
                                                         fontWeight="regular",
                                                         color = '#2d2d2d'),
                                        itemHoverStyle = list(color = 'gray'),
                                        verticalAlign = legend_position),
                          credits = list(style = list(color = "#2d2d2d",
                                                      fontSize = credit_size),
                                         align = credits_align),
                          xAxis = list(labels =list(style = list(fontFamily = base_family,
                                                                 fontSize = base_size,
                                                                 color="#2d2d2d")),
                                       title = list(style = list(color = "#2d2d2d",
                                                                 fontSize = base_size,
                                                                 color="#2d2d2d",
                                                                 fontWeight="500")),
                                       lineColor = '#2d2d2d',
                                       lineWidth = 2,
                                       gridLineWidth = 0,
                                       gridLineColor = 'rgba(219,220,221,1)',
                                       tickColor = 'rgba(219,220,221,1)',
                                       tickWidth = 1),
                          yAxis = list(labels =list(style = list(fontFamily = base_family,
                                                                 fontSize = base_size,
                                                                 color="#2d2d2d")),
                                       title = list(style = list(color = "#2d2d2d",
                                                                 fontSize = base_size,
                                                                 color="#2d2d2d",
                                                                 fontWeight="500")),
                                       gridLineWidth = 1,
                                       lineColor = 'rgba(219,220,221,1)',
                                       lineWidth = 0,
                                       MinorGridLineWidth = 0,
                                       MinorGridLineColor = 'rgba(219,220,221,1)',
                                       gridLineWidth = 1,
                                       gridLineColor = 'rgba(219,220,221,1)',
                                       tickColor = 'rgba(219,220,221,1)',
                                       tickWidth = 1)))
  
}
