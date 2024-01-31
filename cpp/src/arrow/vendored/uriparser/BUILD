package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "uriparser",
    includes = ["."],
    include_prefix = "arrow/vendored/uriparser",
    hdrs = [
        "config.h",
        "Uri.h",
        "UriBase.h",
        "UriCommon.h",
        "UriDefsAnsi.h",
        "UriDefsConfig.h",
        "UriDefsUnicode.h",
        "UriIp4.h",
        "UriIp4Base.h",
        "UriMemory.h",
        "UriNormalizeBase.h",
        "UriParseBase.h",
    ],
    srcs = [
        "UriCommon.c",
        "UriCompare.c",
        "UriEscape.c",
        "UriFile.c",
        "UriIp4.c",
        "UriIp4Base.c",
        "UriMemory.c",
        "UriNormalize.c",
        "UriNormalizeBase.c",
        "UriParse.c",
        "UriParseBase.c",
        "UriQuery.c",
        "UriRecompose.c",
        "UriResolve.c",
        "UriShorten.c",
    ],
    deps = [
        "//cpp/src/arrow:config",
    ]
)
