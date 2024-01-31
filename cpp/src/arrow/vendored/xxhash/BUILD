package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "xxhash",
    includes = ["."],
    include_prefix = "arrow/vendored/xxhash",
    hdrs = [
        "xxhash.h"
    ],
    srcs = [
        "xxhash.c"
    ],
    deps = [
        "//cpp/src/arrow:config",
    ]
)
