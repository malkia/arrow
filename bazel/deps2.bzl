load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@com_github_nelhage_rules_boost//:boost/boost.bzl", "boost_deps")

def _deps2(mod_ext):
    mod_ext.report_progress("boost_deps()")
    boost_deps()
    mod_ext.report_progress("apache/thrift")
    maybe(
        http_archive,
        name = "com_github_apache_thrift",
        build_file = "@arrow//bazel:thrift.BUILD",
        integrity = "sha256-ZCiRHbUFcCxR99mTFVpKTIr+6D/dAhtS8uzNjTR4Bik=",
        strip_prefix = "thrift-0.19.0",
        url = "https://github.com/apache/thrift/archive/refs/tags/v0.19.0.tar.gz",
    )

deps2 = module_extension(implementation = _deps2)