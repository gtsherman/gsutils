#' Print entirety of tibble/data frame
#'
#' @export
print_all = function(df) {
  df %>%
    print(n = nrow(.))
}

#' Anonymize a tibble/data frame column with one-way hashing
#'
#' @export
anonymize = function(df, col, char_length = 10) {
  df %>%
    dplyr::mutate(dplyr::across({{ col }},
                  ~stringr::str_sub(
                    digest::getVDigest('sha1')({{ col }}),
                    end = char_length)))
}
