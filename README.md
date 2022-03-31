
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Signed
by](https://img.shields.io/badge/Keybase-Verified-brightgreen.svg)](https://keybase.io/hrbrmstr)
![Signed commit
%](https://img.shields.io/badge/Signed_Commits-100%25-lightgrey.svg)
[![R-CMD-check](https://github.com/hrbrmstr/nanoid/workflows/R-CMD-check/badge.svg)](https://github.com/hrbrmstr/nanoid/actions?query=workflow%3AR-CMD-check)
[![Linux build
Status](https://travis-ci.org/hrbrmstr/nanoid.svg?branch=master)](https://travis-ci.org/hrbrmstr/nanoid)  
![Minimal R
Version](https://img.shields.io/badge/R%3E%3D-3.6.0-blue.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

# nanoid

Tools to Generate Short, Secure, URL-friendly, and Unique String
Identifiers

## Description

Nano IDs are comparable to UUID v4 (random-based). They have a similar
number of random bits in the ID (126 in Nano ID and 122 in UUID), so
they have similar collision probabilities. Nano ID also use a bigger
alphabet, so a similar number of random bits are packed in just 21
symbols instead of 36. The C++ code implements the algorithm specified
by Andrey Sitnik.

## What’s Inside The Tin

The following functions are implemented:

-   `nanoid_dict`: Built in NanoID alternate character alphabet subsets
-   `NANOIDgenerate`: Generate a NanoID

## Installation

``` r
```

NOTE: To use the ‘remotes’ install options you will need to have the
[{remotes} package](https://github.com/r-lib/remotes) installed.

## Usage

``` r
library(nanoid)

# current version
packageVersion("nanoid")
## [1] '0.1.0'
```

``` r
NANOIDgenerate()
## [1] "YhhMxpsbjAWcWv5F6gzrY"

NANOIDgenerate(alphabet = nanoid_dict[["numbers"]])
## [1] "461549604138656349869"

NANOIDgenerate(alphabet = nanoid_dict[["lowercase"]])
## [1] "rqiavmoelpvkbhfwjjhsp"

NANOIDgenerate(alphabet = nanoid_dict[["uppercase"]])
## [1] "CMNGEHPHINTMMDHIMIJNT"

NANOIDgenerate(alphabet = nanoid_dict[["hexadecimal_lowercase"]])
## [1] "ef585b89bfe001706230a"

NANOIDgenerate(alphabet = nanoid_dict[["hexadecimal_uppercase"]])
## [1] "4E63F57D1A75ED577E569"

NANOIDgenerate(alphabet = nanoid_dict[["nolookalikes"]])
## [1] "nAej4WJBFNK6cxiiAmpMG"

NANOIDgenerate(alphabet = nanoid_dict[["nolookalikes_safe"]])
## [1] "jRzTwCrzzmPRkNwhgrBPG"

NANOIDgenerate(alphabet = nanoid_dict[["alphanumeric"]])
## [1] "abhkHhGyYkSg653n20Qyt"
```

``` r
NANOIDgenerate(size = 10)
## [1] "QlZEx13mRW"

NANOIDgenerate(size = 10, alphabet = nanoid_dict[["numbers"]])
## [1] "5093295566"

NANOIDgenerate(size = 10, alphabet = nanoid_dict[["lowercase"]])
## [1] "pqkfqwuxxx"

NANOIDgenerate(size = 10, alphabet = nanoid_dict[["uppercase"]])
## [1] "QQYCCDTSEG"

NANOIDgenerate(size = 10, alphabet = nanoid_dict[["hexadecimal_lowercase"]])
## [1] "d4db31246b"

NANOIDgenerate(size = 10, alphabet = nanoid_dict[["hexadecimal_uppercase"]])
## [1] "7A9EB9052C"

NANOIDgenerate(size = 10, alphabet = nanoid_dict[["nolookalikes"]])
## [1] "P97Gd3N3MW"

NANOIDgenerate(size = 10, alphabet = nanoid_dict[["nolookalikes_safe"]])
## [1] "M7rfQbrrH7"

NANOIDgenerate(size = 10, alphabet = nanoid_dict[["alphanumeric"]])
## [1] "gGEJRGPi17"
```

## nanoid Metrics

| Lang         | \# Files |  (%) | LoC |  (%) | Blank lines |  (%) | \# Lines |  (%) |
|:-------------|---------:|-----:|----:|-----:|------------:|-----:|---------:|-----:|
| C++          |        4 | 0.13 | 121 | 0.21 |          29 | 0.15 |       37 | 0.10 |
| C/C++ Header |        3 | 0.10 |  76 | 0.13 |          16 | 0.09 |       69 | 0.18 |
| YAML         |        2 | 0.07 |  35 | 0.06 |          10 | 0.05 |        2 | 0.01 |
| R            |        5 | 0.17 |  26 | 0.05 |           6 | 0.03 |       49 | 0.13 |
| Rmd          |        1 | 0.03 |  26 | 0.05 |          33 | 0.18 |       32 | 0.08 |
| SUM          |       15 | 0.50 | 284 | 0.50 |          94 | 0.50 |      189 | 0.50 |

clock Package Metrics for nanoid

## Code of Conduct

Please note that this project is released with a Contributor Code of
Conduct. By participating in this project you agree to abide by its
terms.
