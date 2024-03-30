#' Cube grey Theme
#'
#' This theme takes \code{\link[cubethemes]{theme_cube_foundations}()} and sets
#' background colour to grey and line and text colours to green.
#'
#' Colours are sourced from `cubepalette` and are Cube Brand Guidelines compliant.
#'
#' @family cubethemes
#' @export
#' @importFrom ggplot2 theme
#' @importFrom ggplot2 element_text
#' @importFrom ggplot2 element_rect


theme_cube_grey <- function(base.colour=cube.grey,
                             line.colour=cube.green,
                             text.colour=cube.green) {


  thm <- cubethemes::theme_cube_foundation()

  thm +
    ggplot2::theme(
      # Set colours
      text=element_text(colour = text.colour),
      plot.background = element_rect(fill=base.colour, colour=NA),
      axis.line = element_line(colour=line.colour),
      axis.text = element_text(colour=text.colour)
    )

}


#' Cube gray Theme
#'
#' This theme takes \code{\link[cubethemes]{theme_cube_foundations}()} and sets
#' background colour to gray and line and text colours to green.
#'
#' Colours are sourced from `cubepalette` and are Cube Brand Guidelines compliant.
#'
#' @family cubethemes
#' @export
#' @importFrom ggplot2 theme
#' @importFrom ggplot2 element_text
#' @importFrom ggplot2 element_rect


theme_cube_gray <- function(base.colour=cube.grey,
                            line.colour=cube.green,
                            text.colour=cube.green) {


  thm <- cubethemes::theme_cube_foundation()

  thm +
    ggplot2::theme(
      # Set colours
      text=element_text(colour = text.colour),
      plot.background = element_rect(fill=base.colour, colour=NA),
      axis.line = element_line(colour=line.colour),
      axis.text = element_text(colour=text.colour)
    )

}
