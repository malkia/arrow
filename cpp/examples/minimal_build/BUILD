cc_test(
    name = "example",
    srcs = ["example.cc"],
    args = ["$(rootpath test.csv)"],
    data = ["test.csv"],
    deps = [
        "//cpp/src/arrow/csv",
    ],
)
