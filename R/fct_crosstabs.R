#' cross_tabulate
#'
#' @description Return a 2 x 2 cross tabs from a dataframe with rows and columns
#' given as parameters
#' @param data a dataframe
#' @param rows the variable for the rows, as a string
#' @param columns the variable for the columns, as a string
#'
#' @return dataframe

cross_tabulate <- function(data, rows, columns, by_row = TRUE){

    data |>
        dplyr::count(.data[[rows]], .data[[columns]]) |>
        tidyr::pivot_wider(names_from = ifelse(by_row, rows, columns),
                           values_from = n)

}
