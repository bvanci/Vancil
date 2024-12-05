#' Plot Data
#'
#' Create a scatterplot of two variables from a data frame.
#'
#' @param data A data frame containing the variables.
#' @param x A string representing the column name for the x-axis.
#' @param y A string representing the column name for the y-axis.
#' @return A ggplot object representing the scatterplot.
#' @export
plot_data <- function(data, x, y) {
  # Check if the input is a data frame
  if (!is.data.frame(data)) stop("Input must be a data frame")

  # Create the scatterplot
  ggplot2::ggplot(data, ggplot2::aes(x = .data[[x]], y = .data[[y]])) +
    ggplot2::geom_point() +
    ggplot2::theme_minimal() +
    ggplot2::labs(
      title = "Scatterplot",
      x = x,
      y = y
    )
}
