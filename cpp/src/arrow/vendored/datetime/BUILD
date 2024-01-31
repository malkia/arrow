package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "datetime",
    srcs = [
        "tz.cpp",
    ] + select({
        "@platforms//os:osx": ["ios.mm"],
        "//conditions:default": [],
    }),
    hdrs = [
        "date.h",
        "ios.h",
        "tz.h",
        "tz_private.h",
        "visibility.h",
    ],
    include_prefix = "arrow/vendored/datetime",
    includes = ["."],
    deps = [
        "//cpp/src/arrow:config",
    ],
)
