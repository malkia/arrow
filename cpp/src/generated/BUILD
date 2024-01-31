package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "generated",
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
