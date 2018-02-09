context("zzz-clean-names-function")

test_that("rename works", {
  test_names <- clean_names(system.file("gebco_raw_sample.rda", package = "underwater"))
  test_char <- stringr::str_detect(names(test_names), "\\s|[(]|[)]|/")
  expect_false(any(test_char))
})
