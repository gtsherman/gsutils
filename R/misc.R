#' Print entirety of tibble/data frame
#'
#' @export
print_all = function(df) {
  df %>%
    print(n = nrow(.))
}
