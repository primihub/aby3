package(default_visibility = ["//visibility:public"])

cc_binary(
  name = "main",
  srcs = [
    "main.cpp",
  ],
  deps = [
    "//aby3_tests:aby3_test_lib",
    "//aby3:aby3_lib",
    "//aby3-DB_tests:aby3_db_test_lib",
    "//aby3-ML:aby3_ml_lib",
    "@ladnir_cryptoTools//:tests_cryptoTools",
    "@ladnir_cryptoTools//:libcryptoTools",
  ],
)