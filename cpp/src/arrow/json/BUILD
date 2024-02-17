package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "json",
    srcs = [
        "chunked_builder.cc",
        "chunker.cc",
        "converter.cc",
        "object_parser.cc",
        "object_writer.cc",
        "options.cc",
        "parser.cc",
        "reader.cc",
    ],
    hdrs = [
        "api.h",
        "chunked_builder.h",
        "chunker.h",
        "converter.h",
        "object_parser.h",
        "object_writer.h",
        "options.h",
        "parser.h",
        "rapidjson_defs.h",
        "reader.h",
        "type_fwd.h",
    ],
    include_prefix = "arrow/json",
    deps = [
        "//cpp/src/arrow:internal",
        "@rapidjson",
    ],
)

cc_library(
    name = "test_common",
    testonly = 1,
    hdrs = [
        "test_common.h",
    ],
    include_prefix = "arrow/json",
    deps = [
        "json",
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
        "test_common",
        "@googletest//:gtest_main",
    ],
) for name in [
    "chunked_builder_test",
    "chunker_test",
    "converter_test",
    "parser_test",
    "reader_test",
]]

cc_test(
    name = "parser_benchmark",
    srcs = ["parser_benchmark.cc"],
    features = [
        "generate_pdb_file",
    ],
    deps = [
        "json",
        "test_common",
        "@google_benchmark//:benchmark_main",
   ],
)