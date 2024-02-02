package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "acero",
    srcs = [
        "accumulation_queue.cc",
        "aggregate_internal.cc",
        "asof_join_node.cc",
        "bloom_filter.cc",
        #        "bloom_filter_avx2.cc",
        "exec_plan.cc",
        "fetch_node.cc",
        "filter_node.cc",
        "groupby_aggregate_node.cc",
        "hash_join.cc",
        "hash_join_dict.cc",
        "hash_join_node.cc",
        "map_node.cc",
        "options.cc",
        "order_by_impl.cc",
        "order_by_node.cc",
        "partition_util.cc",
        "pivot_longer_node.cc",
        "project_node.cc",
        "query_context.cc",
        "scalar_aggregate_node.cc",
        "sink_node.cc",
        "sorted_merge_node.cc",
        "source_node.cc",
        "swiss_join.cc",
        #        "swiss_join_avx2.cc",
        "task_util.cc",
        "time_series_util.cc",
        "tpch_node.cc",
        "union_node.cc",
        "util.cc",
    ],
    hdrs = [
        "accumulation_queue.h",
        "aggregate_internal.h",
        "aggregate_node.h",
        "api.h",
        "asof_join_node.h",
        "backpressure_handler.h",
        "benchmark_util.h",
        "bloom_filter.h",
        "concurrent_queue_internal.h",
        "exec_plan.h",
        "hash_join.h",
        "hash_join_dict.h",
        "hash_join_node.h",
        "map_node.h",
        "options.h",
        "options_internal.h",
        "order_by_impl.h",
        "partition_util.h",
        "pch.h",
        "query_context.h",
        "schema_util.h",
        "swiss_join_internal.h",
        "task_util.h",
        "test_nodes.h",
        "test_util_internal.h",
        "time_series_util.h",
        "tpch_node.h",
        "type_fwd.h",
        "unmaterialized_table.h",
        "util.h",
        "visibility.h",
    ],
    defines = ["ARROW_ACERO_STATIC=1"],
    include_prefix = "arrow/acero",
    deps = [
        "//cpp/src/arrow",
    ],
)

cc_library(
    name = "test_util",
    testonly = 1,
    srcs = [
        "test_nodes.cc",
        "test_util_internal.cc",
    ],
    hdrs = [
        "test_nodes.h",
        "test_util_internal.h",
    ],
    include_prefix = "arrow/acero",
    deps = [
        "acero",
        "//cpp/src/arrow/testing",
    ],
)

cc_library(
    name = "benchmark_util",
    testonly = 1,
    srcs = [
        "benchmark_util.cc",
    ],
    hdrs = [
        "benchmark_util.h",
    ],
    include_prefix = "arrow/acero",
    deps = [
        "acero",
        "test_util",
        "@google_benchmark//:benchmark",
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
        "//cpp/src/arrow:test_common",
        "@googletest//:gtest_main",
    ],
) for name in [
    "aggregate_node_test",
    "asof_join_node_test",
    "bloom_filter_test",
    "fetch_node_test",
    "hash_aggregate_test",
    "hash_join_node_test",
    "order_by_node_test",
    "pivot_longer_node_test",
    "plan_test",
    "sorted_merge_node_test",
    "source_node_test",
    "task_util_test",
    "test_nodes_test",
    "tpch_node_test",
    "union_node_test",
    "util_test",
]]

[cc_test(
    name = name,
    srcs = [name + ".cc"],
    features = [
        "generate_pdb_file",
    ],
    deps = [
        "//cpp/src/arrow/dataset",
        "benchmark_util",
        "//cpp/src/arrow:benchmark_common",
    ],
) for name in [
    "aggregate_benchmark",
    "asof_join_benchmark",
    "expression_benchmark",
    "filter_benchmark",
    "hash_join_benchmark",
    "project_benchmark",
    "tpch_benchmark",
]]
