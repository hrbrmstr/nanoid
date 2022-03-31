#' Generate a NanoID
#'
#' @param size (int) number of characters in the generated NanoID. Defaults to 21. Larger values
#'        decrease the chance of a collision
#' @param alphabet character subset to use in the NanoID generation process. By default,
#'        [NANOIDgenerate()] uses a "URL friendly" character set. See [nanoid_dict] for other,
#'        built-in alphabet subsets.
#' @export
#' @examples
#' NANOIDgenerate() # default to a URL friendly character set and char length 21
#' NANOIDgenerate(10) # same as ^^ but char length of 10
#' NANOIDgenerate(10, nanoid_dict[["nolookalikes"]]) # numbers and English alphabet without lookalike
NANOIDgenerate <- function(size = 21L, alphabet = nanoid_dict[["url_friendly"]]) {

  .Call(
    "_nanoid_int_generate",
    alphabet[1],
    as.integer(size[1]),
    PACKAGE = "nanoid"
  )

}