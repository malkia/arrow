load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def _deps1(mod_ext):
    mod_ext.report_progress("google/flatbuffers")
    maybe(
        http_archive,
        name = "com_github_google_flatbuffers",
        integrity = "sha256-HM4GsXzd2Ja21zzAR+NqJU+4301+oYpGrPFsTAzT8/M=",
        strip_prefix = "flatbuffers-23.5.26",
        url = "https://github.com/google/flatbuffers/archive/refs/tags/v23.5.26.tar.gz",
    )
    mod_ext.report_progress("nelhage/rules_boost")
    maybe(
        http_archive,
        name = "com_github_nelhage_rules_boost",
        integrity = "sha256-+uTP8ZITEQwG7lCKRln/Qkj1h9YgnUBnuY3h8Z+uExg=",
        strip_prefix = "rules_boost-76ed276e0ea602f83d35687084f5f8751ecd2bcb",
        url = "https://github.com/nelhage/rules_boost/archive/76ed276e0ea602f83d35687084f5f8751ecd2bcb.tar.gz",
    )
    mod_ext.report_progress("xtensor-stack/simd")
    maybe(
        http_archive,
        name = "com_github_xtensorstack_xsimd",
        build_file = "@arrow//bazel:xsimd.BUILD",
        integrity = "sha256-c/lKBRJ47z2kUztpHTEkTRIHTV1xEHRzqf2Ne+FfARA=",
        strip_prefix = "xsimd-12.1.1",
        url = "https://github.com/xtensor-stack/xsimd/archive/refs/tags/12.1.1.tar.gz",
    )
    mod_ext.report_progress("microsoft/wil")
    maybe(
        http_archive,
        name = "com_github_microsoft_wil",
        build_file = "@arrow//bazel:wil.BUILD",
        integrity = "sha256-5ZnyhDwBueSCfkbxHTZRGAZ1yOzbuova5zX1M2cpidM=",
        strip_prefix = "wil-1.0.240122.1",
        url = "https://github.com/microsoft/wil/archive/refs/tags/v1.0.240122.1.tar.gz",
    )
    mod_ext.report_progress("Azure/azure-sdk-for-cpp")
    maybe(
        http_archive,
        name = "com_github_azure_sdk",
        build_file = "@arrow//bazel:azure.BUILD",
        integrity = "sha256-YNsLwrQARusy3gGsFN+Fq7tN95VNuJBoV9DZAnpuQh4=",
        strip_prefix = "azure-sdk-for-cpp-azure-core_1.11.1",
        url = "https://github.com/Azure/azure-sdk-for-cpp/archive/refs/tags/azure-core_1.11.1.tar.gz",
    )
    mod_ext.report_progress("google/snappy")
    maybe(
        http_archive,
        name = "snappy",
        integrity = "sha256-Sdgxv/zF89AUgjQP5a9ZhSyi/nbD4F3w5nID674PHZA=",
        #build_file = "@arrow//bazel:snappy.BUILD",
        strip_prefix = "snappy-1.1.10",
        url = "https://github.com/google/snappy/archive/refs/tags/1.1.10.tar.gz",
    )

deps1 = module_extension(implementation = _deps1)
