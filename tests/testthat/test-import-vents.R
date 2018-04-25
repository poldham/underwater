context("import_vents_function")
 #test_that("import_vents file writes to inst and global env", {
 #  import_vents()
#   expect_true(
#     file.exists("inst/testdata/vents.rda"),
#     exists("vents", envir = globalenv()))
#   })

#test_that("import_vents adds time column matching Sys.Date", {
#  date <- Sys.Date()
#  import_vents()
#  date_vents <- vents$download_date[1]
#  expect_identical(date, date_vents)
#})

#test_that("renaming of column names works",{
#  test_char <- stringr::str_detect(names(vents), "\\s|[(]|[)]|/")
#  expect_false(any(test_char))
#})
