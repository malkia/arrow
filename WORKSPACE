load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "com_github_google_flatbuffers",
    integrity = "sha256-HM4GsXzd2Ja21zzAR+NqJU+4301+oYpGrPFsTAzT8/M=",
    strip_prefix = "flatbuffers-23.5.26",
    url = "https://github.com/google/flatbuffers/archive/refs/tags/v23.5.26.tar.gz",
)

http_archive(
    name = "com_github_apache_thrift",
    integrity = "sha256-ZCiRHbUFcCxR99mTFVpKTIr+6D/dAhtS8uzNjTR4Bik=",
    strip_prefix = "thrift-0.19.0",
    url = "https://github.com/apache/thrift/archive/refs/tags/v0.19.0.tar.gz",
    build_file = "//bazel:thrift.BUILD",
)

http_archive(
    name = "com_github_nelhage_rules_boost",
    integrity = "sha256-+uTP8ZITEQwG7lCKRln/Qkj1h9YgnUBnuY3h8Z+uExg=",
    url = "https://github.com/nelhage/rules_boost/archive/76ed276e0ea602f83d35687084f5f8751ecd2bcb.tar.gz",
    strip_prefix = "rules_boost-76ed276e0ea602f83d35687084f5f8751ecd2bcb",
)
load("@com_github_nelhage_rules_boost//:boost/boost.bzl", "boost_deps")
boost_deps()

http_archive(
    name = "com_github_xtensorstack_xsimd",
    integrity = "sha256-c/lKBRJ47z2kUztpHTEkTRIHTV1xEHRzqf2Ne+FfARA=",
    url = "https://github.com/xtensor-stack/xsimd/archive/refs/tags/12.1.1.tar.gz",
    strip_prefix = "xsimd-12.1.1",
    build_file = "//bazel:xsimd.BUILD",
)
