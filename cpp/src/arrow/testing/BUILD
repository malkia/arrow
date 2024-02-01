package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "testing",
    srcs = [
        "generator.cc",
        "gtest_util.cc",
        "random.cc",
        "util.cc",
    ],
    hdrs = [
        "async_test_util.h",
        "builder.h",
        "executor_util.h",
        "extension_type.h",
        "future_util.h",
        "generator.h",
        "gtest_compat.h",
        "gtest_util.h",
        "matchers.h",
        "random.h",
        "uniform_real.h",
        "util.h",
        "visibility.h",
    ],
    defines = ["ARROW_TESTING_STATIC=1"],
    include_prefix = "arrow/testing",
    linkopts = select({
        "@platforms//os:windows": ["ws2_32.lib"],
        "//conditions:default": [],
    }),
    deps = [
        "//cpp/src/arrow",
        "@googletest//:gtest",
    ],
)

cc_test(
    name = "gtest_util_test",
    srcs = ["gtest_util_test.cc"],
    deps = [
        "testing",
        "@googletest//:gtest_main",
    ],
)

cc_test(
    name = "random_test",
    srcs = ["random_test.cc"],
    deps = [
        "testing",
        "@googletest//:gtest_main",
    ],
)
