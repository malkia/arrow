[cc_test(
    name = name,
    includes = ["."],
    srcs = [name + ".cc"] + ["reader_writer.h"],
    deps = [
        "//cpp/src/parquet/api"
    ],
) for name in [
    "encryption_reader_writer",
    "reader_writer",
    "reader_writer2",
]]

cc_test(
    name = "all_crypto_options",
    srcs = ["encryption_reader_writer_all_crypto_options.cc"],
    deps = [
        "//cpp/src/parquet/api"
    ],
)