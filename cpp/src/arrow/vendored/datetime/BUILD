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
        "tz.h",
        "tz_private.h",
        "visibility.h",
    ] + select({
        "@platforms//os:osx": ["ios.h"],
        "//conditions:default": [],
    }),
    include_prefix = "arrow/vendored/datetime",
    includes = ["."],
    linkopts = select({
        "@platforms//os:windows": ["ole32.lib", "shell32.lib"],
        "//conditions:default": [],
    }),
    visibility = ["//cpp/src/arrow:__subpackages__"],
)
