context("basic_mean usage")
library(Rtesting)

test_that("basic_mean returns the correct value", {
  expect_equal(basic_mean(1:3), 2)
  expect_equal(basic_mean(c(10.3, 4.9, 112)), 42.4)
})

test_that("basic mean returns an error for non-numeric", {
  expect_error(basic_mean('a'))
  expect_error(basic_mean(TRUE))
  expect_error(basic_mean(factor(1)))
})

