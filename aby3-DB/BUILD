package(default_visibility = ["//visibility:public"])

cc_library(
  name = "aby3_db_lib",
  hdrs = glob(
    ["*.cpp"],
    exclude = ["DBServer.h"]
  ),
  srcs = glob(
    ["*.h"],
    exclude = ["DBServer.cpp"]
  ),
  deps = [
    "//aby3:aby3_lib",
  ],
)