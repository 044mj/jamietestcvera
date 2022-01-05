# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'




#' @author Jamie Madden
#' @importFrom utils head
#'
#' @export


hello <- function() {
  print("Hello, world!")
}




check_1 <- function(df) {
  a <- list(dim(df), head(df), names(df))
  return(a)
}


#' Checking a dataframe
#'
#' This function simply prints the dimensions of the dataframe, the first 6
#' rows of the dataframe and the names of the variables in the dataframe.
#'
#' @param df dataframe
#' @param ... more dataframes to check at once
#' @export
#' @examples
#' jamiecheck(mtcars)
#' jamiecheck(mtcars, iris)


jamiecheck <- function(df, ...) {
  a <- list(df, ...)
  b <- lapply(a, check_1)
  return(b)
}



