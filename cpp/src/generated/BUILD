package(
    default_visibility = ["//visibility:public"],
)

# TODO(malkia): Is it worth bringing in flatc/thrift compilers, and 
# having these pre-generated files actually generated during build?

# Generated arrow flatbuffers files
cc_library(
    name = "arrow_flatbuffers",
    hdrs = [
        "feather_generated.h",
        "File_generated.h",
        "Message_generated.h",
        "Schema_generated.h",
        "SparseTensor_generated.h",
        "Tensor_generated.h",
    ],
    include_prefix = "generated",
    includes = ["."],
    deps = [
        "@com_github_google_flatbuffers//:flatc_library"
    ],
)

# Generated parquet thrift files
cc_library(
    name = "parquet_thrift",
    srcs = [
        "parquet_constants.cpp",
        "parquet_types.cpp",
    ],
    hdrs = [
        "parquet_constants.h",
        "parquet_types.h",
    ],
    include_prefix = "generated",
    includes = ["."],
    deps = [
        "//cpp/src/parquet:windows",
        "@com_github_apache_thrift//:thrift",
    ],
)
