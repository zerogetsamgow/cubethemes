#' Install Cube Fonts
#'
#' Themes in this package use the Agenda font.
#'
#' This function allows these to be installed within the package
#'
#'
#' @family cubethemes
#' @export
#' @importFrom sysfonts font_add
#' @importFrom showtext showtext_auto

install_cube_fonts <- function(font.path="C:/windows/fonts") {
  # Add fonts
  sysfonts::font_add("Agenda",
                     regular = file.path(font.path,"Agenda-regular.otf"),
                     bold = file.path(font.path,"Agenda-bold.otf"),
                     italic = file.path(font.path,"Agenda-italic.otf")
  )
  # Tell R to render text using showtext by calling the showtext_auto() function
  showtext::showtext_auto()

}
