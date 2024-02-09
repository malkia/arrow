package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "ipc",
    srcs = [
        "dictionary.cc",
        "feather.cc",
        "json_simple.cc",
        "message.cc",
        "metadata_internal.cc",
        "options.cc",
        "reader.cc",
        "writer.cc",
    ],
    hdrs = [
        "api.h",
        "dictionary.h",
        "feather.h",
        "json_simple.h",
        "message.h",
        "metadata_internal.h",
        "options.h",
        "reader.h",
        "reader_internal.h",
        "type_fwd.h",
        "util.h",
        "writer.h",
    ],
    include_prefix = "arrow/ipc",
    deps = [
        "//cpp/src/arrow:internal",
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
    include_prefix = "arrow/ipc",
    deps = [
        "ipc",
        "//cpp/src/arrow:test_common",
    ],
)

[cc_test(
    name = name,
    srcs = [name + ".cc"],
    data = [
        # This declares all data
        "//testing:data",
        # This is to get to one file to the "data" folder, and then /.. to it (hack!)
        "//testing:README.md",
    ],
    env = {
        "ARROW_TEST_DATA": "$(rootpath //testing:README.md)/../data/",
    }, 
    deps = [
        "test_common",
        "@googletest//:gtest_main",
    ],
) for name in [
    "feather_test",
    "json_simple_test",
    "read_write_test",
    "tensor_test",
]]

cc_test(
    name = "read_write_benchmark",
    srcs = ["read_write_benchmark.cc"],
    deps = [
        "test_common",
        "@google_benchmark//:benchmark_main",
    ],
)