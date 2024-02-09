package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "filesystem",
    srcs = [
        "filesystem.cc",
        "localfs.cc",
        "mockfs.cc",
        "path_util.cc",
        "util_internal.cc",
        #"azurefs.cc",
        #"gcsfs.cc",
        #"gcsfs_internal.cc",
        #"hdfs.cc",
        #"s3fs.cc",
        #"s3_test_util.cc",
    ],
    hdrs = [
        "api.h",
        "filesystem.h",
        "localfs.h",
        "mockfs.h",
        "path_util.h",
        "type_fwd.h",
        "util_internal.h",
        #"azurefs.h",
        #"azurefs_internal.h",
        #"gcsfs.h",
        #"gcsfs_internal.h",
        #"hdfs.h",
        #"s3fs.h",
        #"s3_internal.h",
    ],
    include_prefix = "arrow/filesystem",
    deps = [
        "//cpp/src/arrow:internal",
    ],
)

cc_library(
    name = "test_util",
    testonly = 1,
    srcs = [
        "test_util.cc",
    ],
    hdrs = [
        "test_util.h",
    ],
    include_prefix = "arrow/filesystem",
    deps = [
        "filesystem",
        "//cpp/src/arrow/testing",
    ],
)

[cc_test(
    name = name,
    srcs = [name + ".cc"],
    timeout = "eternal",
    deps = [
        "test_util",
        "@google_benchmark//:benchmark_main",
    ],
) for name in [
    "localfs_benchmark",
    #"s3fs_benchmark"
]]

# cc_library(
#     name = "benchmark_util",
#     testonly = 1,
#     srcs = [
#         "benchmark_util.cc",
#     ],
#     hdrs = [
#         "benchmark_util.h",
#     ],
#     include_prefix = "arrow/acero",
#     deps = [
#         "acero",
#         "test_util",
#         "@google_benchmark//:benchmark",
#     ],
# )

# [cc_test(
#     name = name,
#     srcs = [name + ".cc"],
#     features = [
#         "generate_pdb_file",
#     ],
#     deps = [
#         "test_util",
#         "//cpp/src/arrow:test_common",
#         "@googletest//:gtest_main",
#     ],
# ) for name in [
#     "aggregate_node_test",
#     "asof_join_node_test",
#     "bloom_filter_test",
#     "fetch_node_test",
#     "hash_aggregate_test",
#     "hash_join_node_test",
#     "order_by_node_test",
#     "pivot_longer_node_test",
#     "plan_test",
#     "sorted_merge_node_test",
#     "source_node_test",
#     "task_util_test",
#     "test_nodes_test",
#     "tpch_node_test",
#     "union_node_test",
#     "util_test",
# ]]

# [cc_test(
#     name = name,
#     srcs = [name + ".cc"],
#     features = [
#         "generate_pdb_file",
#     ],
#     deps = [
#         "//cpp/src/arrow/dataset",
#         "benchmark_util",
#         "//cpp/src/arrow:benchmark_common",
#     ],
# ) for name in [
#     "aggregate_benchmark",
#     "asof_join_benchmark",
#     "expression_benchmark",
#     "filter_benchmark",
#     "hash_join_benchmark",
#     "project_benchmark",
#     "tpch_benchmark",
# ]]
