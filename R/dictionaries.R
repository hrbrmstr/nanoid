#' Built in NanoID alternate character alphabet subsets
#'
#' The default alphabet subset is "`url_friendly`", consisting of upper/lower letters, numbers and
#' `_`, `-`.
#'
#' Other subsets include:
#'
#' - `numbers` = "`0123456789`"
#' - `lowercase` = "`abcdefghijklmnopqrstuvwxyz`"
#' - `uppercase` = "`ABCDEFGHIJKLMNOPQRSTUVWXYZ`"
#' - `hexadecimal_lowercase` = "`0123456789abcdef`"
#' - `hexadecimal_uppercase` = "`0123456789ABCDEF`"
#' - `nolookalikes` = "`346789ABCDEFGHJKLMNPQRTUVWXYabcdefghijkmnpqrtwxyz`"
#' - `nolookalikes_safe` = "`6789BCDFGHJKLMNPQRTWbcdfghjkmnpqrtwz`"
#' - `alphanumeric` = "`0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`"
#'
#' @docType data
#' @export
nanoid_dict <- list(
  numbers = "0123456789",
  lowercase = "abcdefghijklmnopqrstuvwxyz",
  uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
  hexadecimal_lowercase = "0123456789abcdef",
  hexadecimal_uppercase = "0123456789ABCDEF",
  nolookalikes = "346789ABCDEFGHJKLMNPQRTUVWXYabcdefghijkmnpqrtwxyz",
  nolookalikes_safe = "6789BCDFGHJKLMNPQRTWbcdfghjkmnpqrtwz",
  alphanumeric = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",
  url_friendly = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_-"
)
