package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "pcg",
    includes = ["."],
    include_prefix = "arrow/vendored/pcg",
    hdrs = [
        "pcg_extras.hpp",
        "pcg_random.hpp",
        "pcg_uint128.hpp",
    ],
    deps = [
        "//cpp/src/arrow:config",
    ]
)
