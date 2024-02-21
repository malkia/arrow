load("@bazel_skylib//rules:common_settings.bzl", "bool_flag")

package(
    default_visibility = ["//visibility:public"]
)

filegroup(
    name = "testing_data",
    srcs = glob(["testing/**"]),
)

bool_flag(
    name = "with_glog",
    build_setting_default = False,
)

bool_flag(
    name = "with_backtrace",
    build_setting_default = False,
)

config_setting(
    name = "with_glog_on",
    flag_values = {
        "with_glog": "true",
    },
)

config_setting(
    name = "with_backtrace_on",
    flag_values = {
        "with_backtrace": "true",
    },
)
