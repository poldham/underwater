context("import_gebco_function")
# cannot test directly as tests run into testhat. Added line to fun. Cannot get this up and running
# test_that("gebco created as .rda in testhat folder", {
#   import_gebco()
#   expect_true(
#     file.exists("tests/testthat/gebco.rda"))
# })

test_that("gebco_raw loads into Global env", {
  expect_true(
    exists("gebco", envir = globalenv()))
})

test_that("renaming of gebco column names works",{
  test_char <- stringr::str_detect(names(gebco), "\\s|[(]|[)]|/")
  expect_false(any(test_char))
})

# test_that("path argument works", {
#   import_gebco(path = "/Users/pauloldham17inch/Desktop/open_source_master/underwater/data-raw/gebco_raw.txt")
#   expect_true(
#     exists("gebco", envir = globalenv()))
# })