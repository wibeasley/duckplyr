duckplyr_dplyr_reconstruct <- function(data, ...) {
  try_fetch(
    data <- as_duckplyr_df(data),
    error = function(e) {
      testthat::skip(conditionMessage(e))
    }
  )
  out <- dplyr_reconstruct(data, ...)
  out
}
