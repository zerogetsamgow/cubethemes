#' Cube Pink Theme
#'
#' This theme takes \code{\link[cubethemes]{theme_cube_foundations}()} and sets
#' background colour to pink and line and text colours to green.
#'
#' Colours are sourced from `cubepalette` and are Cube Brand Guidelines compliant.
#'
#'
#' @family cubethemes
#' @export
#' @importFrom ggplot2 theme
#' @importFrom ggplot2 element_text
#' @importFrom ggplot2 element_rect


theme_cube_pink <- function(base.colour=cube.pink,
                            base.size = 10,
                            line.colour=cube.darkgreen,
                            text.colour=cube.darkgreen) {

  .deprecated("theme_cube_orange", msg="theme_cube_pink is deprecated. Please use theme_cube_orange instead.")

}
