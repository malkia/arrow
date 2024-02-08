[cc_binary(
    name = name,
    srcs = [name + ".cc"],
    deps = [
        "//cpp/src/arrow",
        "//cpp/src/arrow/dataset",
        "//cpp/src/arrow/dataset:file_csv",
    ],
) for name in [
    "arrow_example",
    "compute_example",
    "dataset_example",
#    "file_access_example",
]]
