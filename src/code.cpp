#include <Rcpp.h>
#include "nanoid.h"

using namespace Rcpp;

// std::string generate();
// std::string generate(const std::string& alphabet);
// std::string generate(std::size_t size);
// std::string generate(const std::string& alphabet, std::size_t size);

//' @keywords internal
// [[Rcpp::export]]
std::string int_generate(std::string alphabet, std::size_t size) {
  return(nanoid::generate(alphabet, size));
}
