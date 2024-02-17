package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "extension",
    srcs = [
        "fixed_shape_tensor.cc",
    ],
    hdrs = [
        "fixed_shape_tensor.h",
        "tensor_internal.h",
    ],
    include_prefix = "arrow/extension",
    deps = [
        "//cpp/src/arrow:internal",
        "//cpp/src/arrow/json",
    ],
)

cc_test(
    name = "fixed_shape_tensor_test",
    srcs = ["fixed_shape_tensor_test.cc"],
    features = [
        "generate_pdb_file",
    ],
    deps = [
        "//cpp/src/arrow:extension_type",
        "//cpp/src/arrow:sparse_tensor",
        "//cpp/src/arrow/testing",
        "@googletest//:gtest_main",
    ],
)
