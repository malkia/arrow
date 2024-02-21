package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "base64",
    srcs = ["base64.cpp"],
    deps = [
        "//cpp/src/arrow:util_base64",
    ],
)

cc_library(
    name = "datetime",
    hdrs = ["datetime.h"],
    include_prefix = "arrow/vendored",
    deps = [
        "//cpp/src/arrow/vendored/datetime",
    ],
)

cc_library(
    name = "pcq",
    hdrs = ["ProducerConsumerQueue.h"],
    include_prefix = "arrow/vendored",
    visibility = ["//cpp/src/arrow:__pkg__"],
)

cc_library(
    name = "strptime",
    srcs = ["musl/strptime.c"],
    hdrs = ["strptime.h"],
    include_prefix = "arrow/vendored",
    deps = [
        "//cpp/src/arrow:util_config",
    ],
)

cc_library(
    name = "xxhash",
    include_prefix = "arrow/vendored",
    hdrs = ["xxhash.h"],
    deps = ["//cpp/src/arrow/vendored/xxhash"],
)
