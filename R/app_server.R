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

    output$sidebar_inputs <- renderUI({

      tagList(
        selectInput("rows", "Select row",
                    choices = names(df),
                    selected = names(df)[1]),

        selectInput("columns", "Select columns", names(df),
                    selected = names(df)[2])
      )
    })

    # load module

    mod_crosstabs_server("crosstabs_1", send_data = df)
}
