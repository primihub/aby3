load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository", "new_git_repository")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

git_repository(
  name = "com_github_nelhage_rules_boost",
  commit = "81945736a62fa8490d2ab6bb31705bb04ce4bb6c",
  #branch = "master",
  remote = "https://gitee.com/primihub/rules_boost.git",
  # shallow_since = "1591047380 -0700",
)
load("@com_github_nelhage_rules_boost//:boost/boost.bzl", "boost_deps")
boost_deps()

http_archive(
  name = "rules_foreign_cc",
  sha256 = "484fc0e14856b9f7434072bc2662488b3fe84d7798a5b7c92a1feb1a0fa8d088",
  strip_prefix = "rules_foreign_cc-0.8.0",
  url = "https://primihub.oss-cn-beijing.aliyuncs.com/tools/rules_foreign_cc_cn-0.8.0.tar.gz",
)
load("@rules_foreign_cc//foreign_cc:repositories.bzl", "rules_foreign_cc_dependencies")
rules_foreign_cc_dependencies()

http_archive(
  name = "eigen",
  build_file = "//bazel:BUILD.eigen",
  strip_prefix = "eigen-3.4",
  urls = [
    "https://primihub.oss-cn-beijing.aliyuncs.com/tools/eigen-3.4.tar.bz2",
  ],
  sha256 = "a6f7aaa7b19c289dfeb33281e1954f19bf2ba1c6cae2c182354d820f535abef8",
)

new_git_repository(
  name = "lib_function2",
  build_file = "//bazel:BUILD.function2",
  remote = "https://gitee.com/mirrors_Naios/function2.git",
  commit = "b8cf935d096a87a645534e5c1015ee80960fe4de",
  shallow_since = "1616573746 +0100",
)

http_archive(
  name = "nlohmann_json",
  build_file = "//bazel:BUILD.nlohmann_json",
  strip_prefix = "json-3.9.1",
  urls = [
    "https://primihub.oss-cn-beijing.aliyuncs.com/tools/json-3.9.1.tar.gz"
  ],
  sha256 = "4cf0df69731494668bdd6460ed8cb269b68de9c19ad8c27abc24cd72605b2d5b",
)

git_repository(
  name = "ladnir_cryptoTools",
  #branch = "bazel_branch",
  commit = "f83f2b29ae0f1c32dfc948568e4227a73eb02883",
  remote = "https://gitee.com/primihub/cryptoTools.git",
)

git_repository(
  name = "osu_libote",
  #branch = "bazel_branch",
  commit = "b1f83ced131c58e565dbd47a5166bd9904ffdd83",
  remote = "https://gitee.com/primihub/libOTe.git",
)

new_git_repository(
  name = "toolkit_relic",
  build_file = "//bazel:BUILD.relic",
  remote = "https://gitee.com/orzmzp/relic.git",
  commit = "3f616ad64c3e63039277b8c90915607b6a2c504c",
  shallow_since = "1581106153 -0800",
)

http_archive(
  name = "com_github_microsoft_gsl",
  build_file = "//bazel:BUILD.gsl",
  sha256 = "f0e32cb10654fea91ad56bde89170d78cfbf4363ee0b01d8f097de2ba49f6ce9",
  strip_prefix = "GSL-4.0.0",
  urls = [
    "https://primihub.oss-cn-beijing.aliyuncs.com/tools/SEAL-4.1.1.tar.gz"
  ],

)

http_archive(
  name = "com_github_glog_glog",
  # sha256 = "cbba86b5a63063999e0fc86de620a3ad22d6fd2aa5948bff4995dcd851074a0b",
  strip_prefix = "glog-0.6.0",
  urls = ["https://primihub.oss-cn-beijing.aliyuncs.com/tools/glog-0.6.0.zip"],
)

# gflags Needed for glog
http_archive(
  name = "com_github_gflags_gflags",
  sha256 = "34af2f15cf7367513b352bdcd2493ab14ce43692d2dcd9dfc499492966c64dcf",
  strip_prefix = "gflags-2.2.2",
  urls = [
    "https://primihub.oss-cn-beijing.aliyuncs.com/tools/gflags-2.2.2.tar.gz",
  ],
)

git_repository(
  name = "ph_communication",
  commit = "84108f9340ee177617950b08c97062590381c66b",
  remote = "https://gitee.com/primihub/communication.git",
)
