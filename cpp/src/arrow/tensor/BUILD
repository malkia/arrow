package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "tensor",
    srcs = [
        "coo_converter.cc",
        "csf_converter.cc",
        "csx_converter.cc",
    ],
    hdrs = [
        "converter_internal.h",
        "converter.h",
    ],
    include_prefix = "arrow/tensor",
    deps = [
        "//cpp/src/arrow:base",
    ],
)

cc_test(
    name = "tensor_conversion_benchmark",
    srcs = ["tensor_conversion_benchmark.cc"],
    features = [
        "generate_pdb_file",
    ],
    deps = [
        "//cpp/src/arrow:sparse_tensor",
        "//cpp/src/arrow/testing",
        "//cpp/src/arrow:benchmark_common",
    ],
)
