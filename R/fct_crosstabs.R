#' cross_tabulate
#'
#' @description Return a 2 x 2 cross tabs from a dataframe with rows and columns
#' given as parameters
#' @param data a dataframe
#' @param rows the variable for the rows, as a string
#' @param columns the variable for the columns, as a string
#'
#' @return dataframe

cross_tabulate <- function(data, rows, columns){

    df |>
        dplyr::group_by(.data[[rows]], .data[[columns]])


}

df |>
    dplyr::count(category, sentiment) |>
    tidyr::pivot_wider(id_cols = c(category, sentiment))

cross_tabulate(df, "category", "sentiment")
