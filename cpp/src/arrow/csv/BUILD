package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "csv",
    srcs = [
        "chunker.cc",
        "column_builder.cc",
        "column_decoder.cc",
        "converter.cc",
        "options.cc",
        "parser.cc",
        "reader.cc",
        "writer.cc",
    ],
    hdrs = [
        "api.h",
        "chunker.h",
        "column_builder.h",
        "column_decoder.h",
        "converter.h",
        "inference_internal.h",
        "invalid_row.h",
        "lexing_internal.h",
        "options.h",
        "parser.h",
        "reader.h",
        "type_fwd.h",
        "writer.h",
    ],
    include_prefix = "arrow/csv",
    deps = [
        "//cpp/src/arrow",
    ],
)

cc_library(
    name = "test_common",
    testonly = 1,
    srcs = [
        "test_common.cc",
    ],
    hdrs = [
        "test_common.h",
    ],
    include_prefix = "arrow/csv",
    deps = [
        "csv",
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
    "chunker_test",
    "column_builder_test",
    "column_decoder_test",
    "converter_test",
    "parser_test",
    "reader_test",
    "writer_test",
]]

[cc_test(
    name = name,
    srcs = [name + ".cc"],
    features = [
        "generate_pdb_file",
    ],
    deps = [
        "csv",
        "test_common",
        "//cpp/src/arrow:benchmark_common",
    ],
) for name in [
    "converter_benchmark",
    "parser_benchmark",
    "writer_benchmark",
]]
