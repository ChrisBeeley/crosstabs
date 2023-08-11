#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic

    # create data

    df <- data.frame("category" = sample(c("Apples", "Bananas", "Cherries",
                                    "Damsons", "Elderberry", "Fig"),
                                    100, replace = TRUE),
                     "sentiment" = sample(1 : 5, 100, replace = TRUE),
                     "fft" = sample(1 : 5, 100, replace = TRUE))

    # load module

    mod_crosstabs_server("crosstabs_1")
}
