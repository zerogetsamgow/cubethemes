
<!-- avoid border around images -->
<style>
    img {
        border-style: none;
        width: 80%;
    }
</style>
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cubethemes

<!-- badges: start -->
<!-- badges: end -->

{cubethemes} is designed to enable cubies to create great data
visualisations that comply with the Cube Group Brand Guidelines.

## Installation

You can install the development version of {cubethemes} from github
using devtools:

``` r
# install.packages("devtools")
devtools::install_github("zerogetsamgow/cubethemes")
```

## Usage

{cubethemes} is designed to produce {gglot2} that comply with the Cube
Brand Guidelines simply. For example.

``` r
library(ggplot2)
library(cubethemes)
library(cubepalette)
#> Loading required package: palettes
library(stringr)
## basic example code
ggplot2::ggplot(data=iris,aes(x=Sepal.Length, y = Petal.Length,colour=Species)) +
  geom_point(size=3) +
  scale_colour_manual(values=cube_palettes_discrete$dark,labels=stringr::str_to_title) +
  scale_x_continuous(name="Sepal length")+
  scale_y_continuous(name="Petal length")+
  theme_cube_white()
```

<img src="man/figures/README-white example-1.png" width="100%" />

## Three themes to cubify them all

{cubethemes} exports three themes - `theme_cube_white()`(seen above),
`theme_cube_green()` and `theme_cube_pink` to enable plots to be produce
any Cube publication.

Each of these themes is designed to work with different discrete
palettes from {cubepallete}:

- `theme_cube_white()` with `cube_palette_discrete$dark`

- `theme_cube_green()` with `cube_palette_discrete$light`

``` r
## basic example of a green plot
ggplot(data=iris,aes(x=Sepal.Length, y = Petal.Length,colour=Species)) +
  geom_point(size=3) +
  scale_colour_manual(values=cube_palettes_discrete$light,labels=stringr::str_to_title) +
  scale_x_continuous(name="Sepal length")+
  scale_y_continuous(name="Petal length")+
  labs(title="Sepal and petal lengths of irises")+
  theme_cube_green()
```

<img src="man/figures/README-green example-1.png" width="100%" />

- `theme_cube_pink()` with `cube_palette_discrete$other`

These themes can also work with the `cube_palette_tints` palettes
`greys`,`greens` and `pinks`.

``` r
## basic example of a green plot
ggplot(data=mtcars,aes(x = as.factor(cyl), colour=NULL, fill=as.factor(cyl), group=cyl)) +
  geom_histogram(stat="count",size=3)+
  scale_fill_manual(name="Cylinders", values=cube_palettes_tints$greens,labels=stringr::str_to_title) +
  scale_y_continuous(name="Count", expand=c(0,0.04))+
  scale_x_discrete(name=NULL)+
  labs(title="Count of cylinders in mtcars")+
  theme_cube_pink()
#> Warning: Using `size` aesthetic for lines was deprecated in ggplot2
#> 3.4.0.
#> ℹ Please use `linewidth` instead.
#> This warning is displayed once every 8 hours.
#> Call `lifecycle::last_lifecycle_warnings()` to see where this
#> warning was generated.
#> Warning in geom_histogram(stat = "count", size = 3): Ignoring
#> unknown parameters: `binwidth`, `bins`, and `pad`
```

<img src="man/figures/README-pink example-1.png" width="100%" />

As well as utilising the {cubepalette} these themes are rendered using
{showtext} to allow the use of `Agenda` font. {cubetheme} installs these
fonts.
