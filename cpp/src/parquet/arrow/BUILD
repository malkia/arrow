cc_library(
    name = "arrow",
    srcs = [
        "path_internal.cc",
        "reader.cc",
        "reader_internal.cc",
        "schema.cc",
        "schema_internal.cc",
        "writer.cc",
    ],
    hdrs = [
        "path_internal.h",
        "reader.h",
        "reader_internal.h",
        "schema.h",
        "schema_internal.h",
        "writer.h",
    ],
    include_prefix = "parquet/arrow",
    deps = [
        "//cpp/src/parquet",
    ],
)

cc_library(
    name = "test_util",
    testonly = 1,
    hdrs = [
        "test_util.h",
    ],
    include_prefix = "parquet/arrow",
    deps = [
        "arrow",
        "//cpp/src/parquet:test_util",
        "//cpp/src/arrow/testing",
    ],
)

[cc_test(
    name = name,
    srcs = [name + ".cc"],
    features = [
        "generate_pdb_file",
    ],
    data = [
        # This declares all data
        "//cpp/submodules/parquet-testing:data",
        # This is to get to one file to the "data" folder, and then /.. to it (hack!)
        "//cpp/submodules/parquet-testing:data/README.md",
    ],
    env = {
        "PARQUET_TEST_DATA": "$(rootpath //cpp/submodules/parquet-testing:data/README.md)/../",
    },
    deps = [
        "test_util",
        "//cpp/src/parquet/api",
        "//cpp/src/arrow/csv",
        "@googletest//:gtest_main",
    ],
) for name in [
    "arrow_reader_writer_test",
    "arrow_schema_test",
    "arrow_statistics_test",
    "path_internal_test",
    "reconstruct_internal_test",
]]

[cc_test(
    name = name,
    srcs = [name + ".cc"],
    features = [
        "generate_pdb_file",
    ],
    # data = [
    #     # This declares all data
    #     "//cpp/submodules/parquet-testing:data",
    #     # This is to get to one file to the "data" folder, and then /.. to it (hack!)
    #     "//cpp/submodules/parquet-testing:data/README.md",
    # ],
    # env = {
    #     "PARQUET_TEST_DATA": "$(rootpath //cpp/submodules/parquet-testing:data/README.md)/../",
    # },
    deps = [
        "arrow",
        "//cpp/src/arrow/testing",
        "//cpp/src/arrow:benchmark_common",
    ],
) for name in [
    "reader_writer_benchmark",
]]
