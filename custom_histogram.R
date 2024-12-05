#' Custom Histogram
#'
#' Create a histogram with enhanced aesthetics.
#'
#' @param data A data frame containing the variable to plot.
#' @param x A string representing the column name for the variable.
#' @return A ggplot object representing the histogram.
#' @export
custom_histogram <- function(data, x) {
  if (!is.data.frame(data)) stop("Input must be a data frame")

  ggplot2::ggplot(data, ggplot2::aes(x = .data[[x]])) +
    ggplot2::geom_histogram(binwidth = 1, fill = "blue", color = "white") +
    ggplot2::theme_minimal() +
    ggplot2::labs(
      title = "Histogram",
      x = x,
      y = "Frequency"
    )
}
