package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "file_csv",
    srcs = [
        "file_csv.cc",
    ],
    hdrs = [
        "file_csv.h",
    ],
    defines = ["ARROW_DS_STATIC=1"],
    include_prefix = "arrow/dataset",
    deps = [
        "internal",
        "//cpp/src/arrow/csv",
    ],
)

cc_library(
    name = "internal",
    srcs = [
        "dataset.cc",
        "dataset_writer.cc",
        "discovery.cc",
        "file_base.cc",
        "file_ipc.cc",
        "file_json.cc",
        #"file_orc.cc",
        "file_parquet.cc",
        "partition.cc",
        "plan.cc",
        "projector.cc",
        "scan_node.cc",
        "scanner.cc",
    ],
    hdrs = [
        "api.h",
        "dataset.h",
        "dataset_internal.h",
        "dataset_writer.h",
        "discovery.h",
        "file_base.h",
        "file_ipc.h",
        "file_json.h",
        #"file_orc.h",
        "file_parquet.h",
        "forest_internal.h",
        "parquet_encryption_config.h",
        "partition.h",
        "pch.h",
        "plan.h",
        "projector.h",
        "scanner.h",
        "subtree_internal.h",
        "test_util_internal.h",
        "type_fwd.h",
        "visibility.h",
    ],
    defines = ["ARROW_DS_STATIC=1"],
    include_prefix = "arrow/dataset",
    deps = [
        "//cpp/src/arrow/acero",
    ],
)

cc_library(
    name = "dataset",
    deps = ["internal", "file_csv"],
)

cc_library(
    name = "test_util",
    testonly = 1,
    srcs = [
        "test_util_internal.cc",
    ],
    hdrs = [
        "test_util_internal.h",
    ],
    include_prefix = "arrow/dataset",
    deps = [
        "dataset",
        "//cpp/src/arrow:filesystem_test_util",
        "//cpp/src/arrow/testing",
    ],
)

[cc_test(
    name = name,
    srcs = [name + ".cc"],
    features = [
        "generate_pdb_file",
    ],
    deps = [
        "test_util",
        "dataset",
        #"//cpp/src/arrow:test_common",
        "//cpp/src/arrow/acero:test_util",
        "@googletest//:gtest_main",
    ],
) for name in [
    "dataset_test",
    "dataset_writer_test",
    "discovery_test",
    "file_csv_test",
    "file_ipc_test",
    "file_json_test",
    #"file_orc_test",
    "file_parquet_encryption_test",
    "file_parquet_test",
    "file_test",
    "partition_test",
    "scanner_test",
    "subtree_test",
    "write_node_test",
]]

[cc_test(
    name = name,
    srcs = [name + ".cc"],
    features = [
        "generate_pdb_file",
    ],
    deps = [
        "dataset",
        "//cpp/src/arrow:filesystem_test_util",
        "//cpp/src/arrow:benchmark_common",
    ],
) for name in [
    "file_benchmark",
    "scanner_benchmark",
]]
