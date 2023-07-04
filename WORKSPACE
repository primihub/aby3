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
http_archive(
  name = "com_github_libote",
  sha256 = "26ab3e3a590556abdc4d810f560bf3c201447be61da80d643120014fae8bdd4a",
  strip_prefix = "libOTe",
  urls = [
    "https://primihub.oss-cn-beijing.aliyuncs.com/tools/lib_ote_aby3_dep_version.tar.gz",
  ],
)
#load("@com_github_nelhage_rules_boost//:boost/boost.bzl", "boost_deps")
#boost_deps()

load("//bazel:preload.bzl", "aby3_preload")
aby3_preload()

load("//bazel:deps.bzl", "aby3_deps")
aby3_deps()
