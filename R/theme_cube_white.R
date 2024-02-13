#' Cube White Theme
#'
#' This theme takes \code{\link[cubethemes]{theme_cube_foundations}()} and sets
#' background colour to white and line and text colours to green.
#'
#' Colours are sourced from `cubepalette` and are Cube Brand Guidelines compliant.
#'
#' @family cubethemes
#' @export
#' @importFrom ggplot2 theme
#' @importFrom ggplot2 element_text
#' @importFrom ggplot2 element_rect


theme_cube_white <- function(base.colour=cube.white,
                            line.colour=cube.green,
                            text.colour=cube.green) {


  thm <- cubethemes::theme_cube_foundation()

  thm +
    ggplot2::theme(
      # Set colours
      text=element_text(colour = text.colour),
      plot.background = element_rect(fill=base.colour),
      axis.line = element_line(colour=line.colour),
      axis.text = element_text(colour=text.colour)
    )

}
