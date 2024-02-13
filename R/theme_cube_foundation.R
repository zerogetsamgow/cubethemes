#' Cube Foundation Theme
#'
#' This theme is designed to be a foundation from which to build new
#' themes, and not meant to be used directly. \code{theme_cube_foundation()}
#' is a complete theme with only minimal number of elements defined.
#' It is easier to create new Cube themes by extending this one rather
#' than \code{\link[ggplot2]{theme_gray}()} or \code{\link[ggplot2]{theme_bw}()},
#' because those themes define elements deep in the hierarchy.
#'
#' This theme takes \code{\link[ggthemes]{theme_foundations}()} and sets
#' base text family and size to `Agenda` and `15`.
#'
#' @inheritParams ggthemes::theme_foundation
#'
#' @family cubethemes
#' @export
#' @importFrom ggplot2 theme
#' @importFrom ggthemes theme_foundation

theme_cube_foundation <- function(base_size = 15, base_family = "Agenda") {


  install_cube_fonts()

  thm <- ggthemes::theme_foundation(base_size = base_size, base_family = base_family)

  thm +
    ggplot2::theme(
      # Clear background for clean charts
      rect = ggplot2::element_blank(),
      line = ggplot2::element_blank(),
      panel.border = ggplot2::element_blank(),
      # Define axis foundation parameters
      # Define cube_founcation text parameters
      text=ggplot2::element_text(family="Agenda",size=25),
      plot.title=ggplot2::element_text(size=ggplot2::rel(1.2), face="bold"),
      # Define axis foundation parameters
      axis.line = ggplot2::element_line(linewidth=1.2, lineend = "round"),
      axis.ticks = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(size=ggplot2::rel(.8)),
      # Define foundation legend parameters
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_blank(),
      legend.position = "bottom"
    )

}
