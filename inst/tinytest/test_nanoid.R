library(nanoid)

x <- NANOIDgenerate()
expect_equal(nchar(x), 21)
expect_true(all(strsplit(x, "")[[1]] %in% strsplit(nanoid_dict$url_friendly, "")[[1]]))

x <- NANOIDgenerate(alphabet = nanoid_dict[["numbers"]])
expect_equal(nchar(x), 21)
expect_true(all(strsplit(x, "")[[1]] %in% strsplit(nanoid_dict$numbers, "")[[1]]))

x <- NANOIDgenerate(alphabet = nanoid_dict[["lowercase"]])
expect_equal(nchar(x), 21)
expect_true(all(strsplit(x, "")[[1]] %in% strsplit(nanoid_dict$lowercase, "")[[1]]))

x <- NANOIDgenerate(alphabet = nanoid_dict[["uppercase"]])
expect_equal(nchar(x), 21)
expect_true(all(strsplit(x, "")[[1]] %in% strsplit(nanoid_dict$uppercase, "")[[1]]))

x <- NANOIDgenerate(alphabet = nanoid_dict[["hexadecimal_lowercase"]])
expect_equal(nchar(x), 21)
expect_true(all(strsplit(x, "")[[1]] %in% strsplit(nanoid_dict$hexadecimal_lowercase, "")[[1]]))

x <- NANOIDgenerate(alphabet = nanoid_dict[["hexadecimal_uppercase"]])
expect_equal(nchar(x), 21)
expect_true(all(strsplit(x, "")[[1]] %in% strsplit(nanoid_dict$hexadecimal_uppercase, "")[[1]]))

x <- NANOIDgenerate(alphabet = nanoid_dict[["nolookalikes"]])
expect_equal(nchar(x), 21)
expect_true(all(strsplit(x, "")[[1]] %in% strsplit(nanoid_dict$nolookalikes, "")[[1]]))

x <- NANOIDgenerate(alphabet = nanoid_dict[["nolookalikes_safe"]])
expect_equal(nchar(x), 21)
expect_true(all(strsplit(x, "")[[1]] %in% strsplit(nanoid_dict$nolookalikes_safe, "")[[1]]))

x <- NANOIDgenerate(alphabet = nanoid_dict[["alphanumeric"]])
expect_equal(nchar(x), 21)
expect_true(all(strsplit(x, "")[[1]] %in% strsplit(nanoid_dict$alphanumeric, "")[[1]]))

x <- NANOIDgenerate(size = 10)
expect_equal(nchar(x), 10)
expect_true(all(strsplit(x, "")[[1]] %in% strsplit(nanoid_dict$url_friendly, "")[[1]]))

x <- NANOIDgenerate(size = 10, alphabet = nanoid_dict[["numbers"]])
expect_equal(nchar(x), 10)
expect_true(all(strsplit(x, "")[[1]] %in% strsplit(nanoid_dict$numbers, "")[[1]]))

x <- NANOIDgenerate(size = 10, alphabet = nanoid_dict[["lowercase"]])
expect_equal(nchar(x), 10)
expect_true(all(strsplit(x, "")[[1]] %in% strsplit(nanoid_dict$lowercase, "")[[1]]))

x <- NANOIDgenerate(size = 10, alphabet = nanoid_dict[["uppercase"]])
expect_equal(nchar(x), 10)
expect_true(all(strsplit(x, "")[[1]] %in% strsplit(nanoid_dict$uppercase, "")[[1]]))

x <- NANOIDgenerate(size = 10, alphabet = nanoid_dict[["hexadecimal_lowercase"]])
expect_equal(nchar(x), 10)
expect_true(all(strsplit(x, "")[[1]] %in% strsplit(nanoid_dict$hexadecimal_lowercase, "")[[1]]))

x <- NANOIDgenerate(size = 10, alphabet = nanoid_dict[["hexadecimal_uppercase"]])
expect_equal(nchar(x), 10)
expect_true(all(strsplit(x, "")[[1]] %in% strsplit(nanoid_dict$hexadecimal_uppercase, "")[[1]]))

x <- NANOIDgenerate(size = 10, alphabet = nanoid_dict[["nolookalikes"]])
expect_equal(nchar(x), 10)
expect_true(all(strsplit(x, "")[[1]] %in% strsplit(nanoid_dict$nolookalikes, "")[[1]]))

x <- NANOIDgenerate(size = 10, alphabet = nanoid_dict[["nolookalikes_safe"]])
expect_equal(nchar(x), 10)
expect_true(all(strsplit(x, "")[[1]] %in% strsplit(nanoid_dict$nolookalikes_safe, "")[[1]]))

x <- NANOIDgenerate(size = 10, alphabet = nanoid_dict[["alphanumeric"]])
expect_equal(nchar(x), 10)
expect_true(all(strsplit(x, "")[[1]] %in% strsplit(nanoid_dict$alphanumeric, "")[[1]]))
