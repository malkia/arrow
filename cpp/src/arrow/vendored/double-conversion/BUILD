package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "double-conversion",
    includes = ["."],
    include_prefix = "arrow/vendored/double-conversion",
    hdrs = [
        "bignum-dtoa.h",
        "bignum.h",
        "cached-powers.h",
        "diy-fp.h",
        "double-conversion.h",
        "double-to-string.h",
        "fast-dtoa.h",
        "fixed-dtoa.h",
        "ieee.h",
        "string-to-double.h",
        "strtod.h",
        "utils.h",
    ],
    srcs = [
        "bignum-dtoa.cc",
        "bignum.cc",
        "cached-powers.cc",
        "double-to-string.cc",
        "fast-dtoa.cc",
        "fixed-dtoa.cc",
        "string-to-double.cc",
        "strtod.cc",
    ],
    deps = [
        "//cpp/src/arrow:config",
    ]
)
