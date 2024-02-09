[cc_binary(
    name = name,
    srcs = [name + ".cc"],
    features = [
        "generate_pdb_file",
    ],
    deps = ["//cpp/src/parquet/api"],
) for name in [
    "parquet_dump_schema",
    "parquet_reader",
    "parquet_scan",
]]
