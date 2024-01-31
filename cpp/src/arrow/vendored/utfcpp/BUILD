package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "utfcpp",
    includes = ["."],
    include_prefix = "arrow/vendored/utfcpp",
    hdrs = [
        "checked.h",
        "core.h",
        "cpp11.h",
    ],
    deps = [
        "//cpp/src/arrow:config",
    ]
)
