package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "bridge",
    srcs = [
        "bridge.cc",
    ],
    hdrs = [
        "abi.h",
        "bridge.h",
        "helpers.h",
        "util_internal.h",
    ],
    include_prefix = "arrow/c",
    deps = [
        "//cpp/src/arrow",
    ],
)

cc_library(
    name = "dlpack",
    srcs = [
        "dlpack.cc",
    ],
    hdrs = [
        "dlpack.h",
        "dlpack_abi.h",
    ],
    include_prefix = "arrow/c",
    deps = [
        "//cpp/src/arrow",
    ],
)

cc_test(
    name = "bridge_test",
    srcs = ["bridge_test.cc"],
    deps = [
        "bridge",
        "//cpp/src/arrow/testing",
        "@googletest//:gtest_main",
    ],
)

cc_test(
    name = "bridge_benchmark",
    srcs = ["bridge_benchmark.cc"],
    deps = [
        "bridge",
        "//cpp/src/arrow:benchmark_common",
        "//cpp/src/arrow/testing",
    ],
)

cc_test(
    name = "dlpack_test",
    srcs = ["dlpack_test.cc"],
    deps = [
        "dlpack",
        "//cpp/src/arrow/testing",
        "@googletest//:gtest_main",
    ],
)
