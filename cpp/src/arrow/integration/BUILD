package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "integration",
    srcs = [
        "c_data_integration_internal.cc",
        "json_integration.cc",
        #"json_integration_test.cc
        "json_internal.cc"
    ],
    hdrs = [
        "c_data_integration_internal.h",
        "json_integration.h",
        "json_internal.h",
    ],
    include_prefix = "arrow/integration",
    deps = [
        "//cpp/src/arrow",
        "//cpp/src/arrow/c:bridge",
        "@gflags//:gflags",
    ],
)

cc_test(
    name = "json_integration_test",
    srcs = ["json_integration_test.cc"],
    features = [
        "generate_pdb_file",
    ],
    deps = [
        "integration",
        "//cpp/src/arrow:test_common",
        "//cpp/src/arrow/ipc:test_common",
        "@googletest//:gtest_main",
    ],
)