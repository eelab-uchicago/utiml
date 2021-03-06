context("Pairwise based classifiers")
train <- toyml
test <- toyml$dataset[10:40, toyml$attributesIndexes]

predictionTest <- function (model) {
  suppressWarnings(RNGversion("3.5.0"))
  set.seed(123)
  pred <- predict(model, test)
  expect_is(pred, "mlresult")
  expect_equal(nrow(pred), nrow(test))
  expect_equal(ncol(pred), toyml$measures$num.labels)
  expect_equal(colnames(pred), rownames(toyml$labels))
  expect_equal(rownames(pred), rownames(test))

  suppressWarnings(RNGversion("3.5.0"))
  set.seed(123)
  pred1 <- predict(model, test, prob = FALSE)
  expect_is(pred1, "mlresult")
  expect_equal(as.matrix(pred1), attr(pred, "classes"))
  expect_equal(as.matrix(pred), attr(pred1, "probs"))

  pred
}

baseTest <- function (model, expected.class) {
  expect_is(model, expected.class)
  expect_gte(length(model$models), length(model$labels) * (length(model$labels)-1) / 2)

  predictionTest(model)
}

test_that("RPC", {
  model <- rpc(train, "RANDOM")
  baseTest(model, "RPCmodel")
})

test_that("CLR", {
  model <- clr(train, "RANDOM")
  model$models <- c(model$rpcmodel$models, model$brmodel$models)
  baseTest(model, "CLRmodel")
})
