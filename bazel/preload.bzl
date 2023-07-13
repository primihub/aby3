load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository", "new_git_repository")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")


def aby3_preload(repo_reference = ""):
  reference_index = ""
  if repo_reference:
      reference_index = "@{}".format(repo_reference)

  if "rules_foreign_cc" not in native.existing_rules():
    http_archive(
      name = "rules_foreign_cc",
      sha256 = "484fc0e14856b9f7434072bc2662488b3fe84d7798a5b7c92a1feb1a0fa8d088",
      strip_prefix = "rules_foreign_cc-0.8.0",
      url = "https://primihub.oss-cn-beijing.aliyuncs.com/tools/rules_foreign_cc_cn-0.8.0.tar.gz",
    )

  if "eigen" not in native.existing_rules():
    http_archive(
      name = "eigen",
      build_file = "//bazel:BUILD.eigen",
      strip_prefix = "eigen-3.4",
      urls = [
        "https://primihub.oss-cn-beijing.aliyuncs.com/tools/eigen-3.4.tar.bz2",
      ],
      sha256 = "a6f7aaa7b19c289dfeb33281e1954f19bf2ba1c6cae2c182354d820f535abef8",
    )

  if "lib_function2" not in native.existing_rules():
    new_git_repository(
      name = "lib_function2",
      build_file = "//bazel:BUILD.function2",
      remote = "https://gitee.com/mirrors_Naios/function2.git",
      commit = "b8cf935d096a87a645534e5c1015ee80960fe4de",
      shallow_since = "1616573746 +0100",
    )

  if "nlohmann_json" not in native.existing_rules():
    http_archive(
      name = "nlohmann_json",
      build_file = "//bazel:BUILD.nlohmann_json",
      strip_prefix = "json-3.9.1",
      urls = [
        "https://primihub.oss-cn-beijing.aliyuncs.com/tools/json-3.9.1.tar.gz"
      ],
      sha256 = "4cf0df69731494668bdd6460ed8cb269b68de9c19ad8c27abc24cd72605b2d5b",
    )

  if "ladnir_cryptoTools" not in native.existing_rules():
    git_repository(
      name = "ladnir_cryptoTools",
      #branch = "bazel_branch",
      commit = "f83f2b29ae0f1c32dfc948568e4227a73eb02883",
      remote = "https://gitee.com/primihub/cryptoTools.git",
    )

  if "osu_libote" not in native.existing_rules():
    # libote
    git_repository(
      name = "osu_libote",
      #branch = "bazel_branch",
      commit = "b1f83ced131c58e565dbd47a5166bd9904ffdd83",
      remote = "https://gitee.com/primihub/libOTe.git",
    )

  if "toolkit_relic" not in native.existing_rules():
    new_git_repository(
      name = "toolkit_relic",
      build_file = "//bazel:BUILD.relic",
      remote = "https://gitee.com/orzmzp/relic.git",
      commit = "3f616ad64c3e63039277b8c90915607b6a2c504c",
      shallow_since = "1581106153 -0800",
    )

