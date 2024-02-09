#TODO(malkia): This was tested only with Windows and MSVC

package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "core",
    srcs = glob(
        ["sdk/core/azure-core/src/**"],
        exclude = ["sdk/core/azure-core/src/http/curl/**"],
    ),
    hdrs = glob(["sdk/core/azure-core/inc/**"]),
    linkopts = ["winhttp.lib"],
    local_defines = ["BUILD_TRANSPORT_WINHTTP_ADAPTER"],
    strip_include_prefix = "sdk/core/azure-core/inc",
    deps = ["@com_github_microsoft_wil//:wil"],
)

cc_library(
    name = "template",
    srcs = glob(["sdk/template/azure-template/src/**"]),
    hdrs = glob(["sdk/template/azure-template/inc/**"]),
    strip_include_prefix = "sdk/template/azure-template/inc",
    deps = ["core"],
)

cc_library(
    name = "identity",
    srcs = glob(["sdk/identity/azure-identity/src/**"]),
    hdrs = glob(["sdk/identity/azure-identity/inc/**"]),
    linkopts = ["crypt32.lib"],
    strip_include_prefix = "sdk/identity/azure-identity/inc",
    deps = ["core"],
)

cc_library(
    name = "storage_common",
    srcs = glob(["sdk/storage/azure-storage-common/src/**"]),
    hdrs = glob(["sdk/storage/azure-storage-common/inc/**"]),
    linkopts = ["webservices.lib"],
    strip_include_prefix = "sdk/storage/azure-storage-common/inc",
    deps = ["core"],
)

cc_library(
    name = "storage_blobs",
    srcs = glob(["sdk/storage/azure-storage-blobs/src/**"]),
    hdrs = glob(["sdk/storage/azure-storage-blobs/inc/**"]),
    strip_include_prefix = "sdk/storage/azure-storage-blobs/inc",
    deps = ["storage_common"],
)

cc_library(
    name = "storage_files_shares",
    srcs = glob(["sdk/storage/azure-storage-files-shares/src/**"]),
    hdrs = glob(["sdk/storage/azure-storage-files-shares/inc/**"]),
    strip_include_prefix = "sdk/storage/azure-storage-files-shares/inc",
    deps = ["storage_common"],
)

cc_library(
    name = "storage_files_datalake",
    srcs = glob(["sdk/storage/azure-storage-files-datalake/src/**"]),
    hdrs = glob(["sdk/storage/azure-storage-files-datalake/inc/**"]),
    strip_include_prefix = "sdk/storage/azure-storage-files-datalake/inc",
    deps = ["storage_blobs"],
)

cc_library(
    name = "storage_queues",
    srcs = glob(["sdk/storage/azure-storage-queues/src/**"]),
    hdrs = glob(["sdk/storage/azure-storage-queues/inc/**"]),
    strip_include_prefix = "sdk/storage/azure-storage-queues/inc",
    deps = ["storage_common"],
)

cc_library(
    name = "storage",
    deps = [
        "storage_blobs",
        "storage_files_datalake",
        "storage_files_shares",
        "storage_queues",
    ],
)

#TODO(malkia): attestation, eventhubs, keyvault, tables
