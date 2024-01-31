package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "fast_float",
    includes = ["."],
    include_prefix = "arrow/vendored/fast_float",
    hdrs = [
        "ascii_number.h",
        "bigint.h",
        "constexpr_feature_detect.h",
        "decimal_to_binary.h",
        "digit_comparison.h",
        "fast_float.h",
        "fast_table.h",
        "float_common.h",
        "parse_number.h",
        "simple_decimal_conversion.h",
    ],
    deps = [
        "//cpp/src/arrow:config",
    ]
)
