package(default_visibility = ["//visibility:public"])

cc_library(
  name = "aby3_lib",
  deps = [
    ":circuit_lib",
    ":common_lib",
    ":ot_lib",
    ":sh3_lib",
  ],
)
cc_library(
  name = "circuit_lib",
  hdrs = glob([
    "Circuit/*.h",
  ]),
  srcs = glob([
    "Circuit/*.cpp",
  ]),
  copts = [

  ],
  deps = [
    ":common_lib",
    "@ladnir_cryptoTools//:libcryptoTools",
  ],
)

cc_library(
  name = "common_lib",
  hdrs = glob([
    "Common/*.h",
  ]),
  srcs = glob([
    "Common/*.cpp",
  ]),
  deps = [
     "@ladnir_cryptoTools//:libcryptoTools",
  ],
)

cc_library(
  name = "ot_lib",
  hdrs = glob([
    "OT/*.h",
  ]),
  srcs = glob([
    "OT/*.cpp",
  ]),
  copts = [

  ],
  deps = [
    "@ladnir_cryptoTools//:libcryptoTools",
  ],
)

cc_library(
  name = "sh3_lib",
  hdrs = glob([
    "sh3/*.h",
  ]),
  srcs = glob([
    "sh3/*.cpp",
  ]),
  copts = [],
  deps = [
    ":common_lib",
    ":ot_lib",
    ":circuit_lib",
    "@eigen//:eigen",
    "@lib_function2//:function2",
    "@com_github_libote//:libOTe"
  ],
)
