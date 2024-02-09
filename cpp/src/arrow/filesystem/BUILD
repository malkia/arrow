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
    deps = [
        "test_util",
        "@googletest//:gtest_main",
    ],
) for name in [
    "filesystem_test",
    "localfs_test",
    #"azurefs_test",
    #"gcsfs_test",
    #"hdfs_test",
    #"s3fs_narrative_test",
    #"s3fs_test",
]]

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
