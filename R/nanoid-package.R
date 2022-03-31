#' Tools to Generate Short, Secure, URL-friendly, and Unique String Identifiers
#'
#' Nano IDs are comparable to UUID v4 (random-based). They have a similar number of random
#' bits in the ID (126 in Nano ID and 122 in UUID), so they have similar collision probabilities.
#' Nano ID also use a bigger alphabet, so a similar number of random bits are packed in just 21
#' symbols instead of 36. The C++ cooe implements the algorithm specified by Andrey Sitnik.
#'
#' @md
#' @name nanoid
#' @importFrom Rcpp sourceCpp
#' @useDynLib nanoid, .registration=TRUE
#' @references
#'     - NanoID algorithm and JavaScript implementation <https://github.com/ai/nanoid>
#'     - C++ implementation: <https://github.com/mcmikecreations/nanoid_cpp>
#' @keywords internal
#' @author Bob Rudis (bob@@rud.is)
"_PACKAGE"
