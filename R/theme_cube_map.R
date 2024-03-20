#' Cube Map Theme
#'
#' This theme is designed to be a foundation from which to build new
#' themes, and not meant to be used directly. \code{theme_cube_map()}
#' is a complete theme with only minimal number of elements defined.
#' It is easier to create new Cube themes by extending this one rather
#' than \code{\link[ggplot2]{theme_gray}()} or \code{\link[ggplot2]{theme_bw}()},
#' because those themes define elements deep in the hierarchy.
#'
#' This theme takes \code{\link[ggthemes]{theme_map}()} and sets
#' base text family and size to `Agenda` and `15`.
#'
#' @inheritParams ggthemes::theme_foundation
#'
#' @family cubethemes
#' @export
#' @importFrom ggplot2 theme
#' @importFrom ggthemes theme_foundation

theme_cube_map <- function(base_size = 15, base_family = "Agenda") {


  install_cube_fonts()

  thm <- ggthemes::theme_map(base_size = base_size, base_family = base_family)

  thm +
    ggplot2::theme(
      # Clear background for clean charts
      rect = ggplot2::element_blank(),
      line = ggplot2::element_blank(),
      plot.background = element_rect(colour="transparent",fill="white"),
      panel.border = ggplot2::element_blank(),
      # Define cube_founcation text parameters
      text =
        ggplot2::element_text(
          family="Agenda",
          size=25
        ),
      plot.title =
        ggplot2::element_text(
          size=ggplot2::rel(1.2),
          face="bold",
          lineheight = 0.5,
          margin = margin(0, 0, .5, 0, "cm")
        ),
      # Define axis foundation parameters
     # axis.line = ggplot2::element_blank(),
    #  axis.ticks = ggplot2::element_blank(),
     # axis.text = ggplot2::element_blank(),
      # Define foundation legend parameters
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_blank(),
      legend.position.inside = c(0,0),
      legend.title.position = "top",
      legend.direction = "horizontal",
      legend.margin = ggplot2::margin(.1, .1, .1, .1, "cm"),
    legend.title = element_text(family="Agenda"),
    legend.text = element_text(family="Agenda"),
      # Define foundation margin parameters
      plot.margin = ggplot2::margin(.5, .5, 0, .5, "cm"),
      # Define foundation title parameters
      plot.title.position = "plot"
    )

}
