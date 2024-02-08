load("@bazel_skylib//rules:expand_template.bzl", "expand_template")
load(
    "//bazel:version.bzl",
    "ARROW_FULL_SO_VERSION",
    "ARROW_SO_VERSION",
    "ARROW_VERSION",
    "ARROW_VERSION_MAJOR",
    "ARROW_VERSION_MINOR",
    "ARROW_VERSION_PATCH",
)
load("@bazel_skylib//lib:paths.bzl", "paths")

package(
    default_visibility = ["//visibility:public"],
)

expand_template(
    name = "parquet_version_h",
    out = "parquet_version.h",
    substitutions = {
        "@ARROW_VERSION_MAJOR@": "%d" % ARROW_VERSION_MAJOR,
        "@ARROW_VERSION_MINOR@": "%d" % ARROW_VERSION_MINOR,
        "@ARROW_VERSION_PATCH@": "%d" % ARROW_VERSION_PATCH,
        "@ARROW_VERSION@": ARROW_VERSION,
        "@ARROW_SO_VERSION@": ARROW_SO_VERSION,
        "@ARROW_FULL_SO_VERSION@": ARROW_FULL_SO_VERSION,
    },
    template = "parquet_version.h.in",
)

cc_library(
    name = "windows",
    hdrs = [
        "windows_compatibility.h",
        "windows_fixup.h",
    ],
    include_prefix = "parquet",
    deps = [
        "//cpp/src/arrow",
    ],
)

cc_library(
    name = "parquet",
    srcs = [
        "bloom_filter.cc",
        "bloom_filter_reader.cc",
        "column_reader.cc",
        "column_scanner.cc",
        "column_writer.cc",
        "encoding.cc",
        "exception.cc",
        "file_reader.cc",
        "file_writer.cc",
        "level_comparison.cc",
        "level_comparison_avx2.cc",
        "level_conversion.cc",
        "level_conversion_bmi2.cc",
        "metadata.cc",
        "page_index.cc",
        "platform.cc",
        "printer.cc",
        "properties.cc",
        "schema.cc",
        "statistics.cc",
        "stream_reader.cc",
        "stream_writer.cc",
        "types.cc",
        "xxhasher.cc",
        "encryption/crypto_factory.cc",
        "encryption/encryption.cc",
        "encryption/encryption_internal.cc",
        #TODO(malkia): In the future if we have no-SSL build would need that.
        #"encryption/encryption_internal_nossl.cc",
        "encryption/file_key_unwrapper.cc",
        "encryption/file_key_wrapper.cc",
        "encryption/file_system_key_material_store.cc",
        "encryption/internal_file_decryptor.cc",
        "encryption/internal_file_encryptor.cc",
        "encryption/key_material.cc",
        "encryption/key_metadata.cc",
        "encryption/key_toolkit.cc",
        "encryption/key_toolkit_internal.cc",
        "encryption/kms_client.cc",
        "encryption/local_wrap_kms_client.cc",
        "encryption/openssl_internal.cc",
    ],
    hdrs = [
        "bloom_filter.h",
        "bloom_filter_reader.h",
        "column_page.h",
        "column_reader.h",
        "column_scanner.h",
        "column_writer.h",
        "encoding.h",
        "encryption/crypto_factory.h",
        "encryption/encryption.h",
        "encryption/encryption_internal.h",
        "encryption/file_key_material_store.h",
        "encryption/file_key_unwrapper.h",
        "encryption/file_key_wrapper.h",
        "encryption/file_system_key_material_store.h",
        "encryption/internal_file_decryptor.h",
        "encryption/internal_file_encryptor.h",
        "encryption/key_encryption_key.h",
        "encryption/key_material.h",
        "encryption/key_metadata.h",
        "encryption/key_toolkit.h",
        "encryption/key_toolkit_internal.h",
        "encryption/kms_client.h",
        "encryption/kms_client_factory.h",
        "encryption/local_wrap_kms_client.h",
        "encryption/openssl_internal.h",
        "encryption/two_level_cache_with_expiration.h",
        "encryption/type_fwd.h",
        "exception.h",
        "file_reader.h",
        "file_writer.h",
        "hasher.h",
        "level_comparison.h",
        "level_comparison_inc.h",
        "level_conversion.h",
        "level_conversion_inc.h",
        "metadata.h",
        "page_index.h",
        "parquet_version.h",
        "pch.h",
        "platform.h",
        "printer.h",
        "properties.h",
        "schema.h",
        "schema_internal.h",
        "statistics.h",
        "stream_reader.h",
        "stream_writer.h",
        "thrift_internal.h",
        "type_fwd.h",
        "types.h",
        "xxhasher.h",
    ],
    defines = ["PARQUET_STATIC=1"],
    include_prefix = "parquet",
    deps = [
        "windows",
        "//cpp/src/arrow",
        "//cpp/src/generated:parquet_thrift",
        "@boringssl//:ssl",
    ],
)

cc_library(
    name = "test_util",
    testonly = 1,
    srcs = [
        "encryption/test_encryption_util.cc",
        "encryption/test_in_memory_kms.cc",
        "test_util.cc",
    ],
    hdrs = [
        "encryption/test_encryption_util.h",
        "encryption/test_in_memory_kms.h",
        "test_util.h",
    ],
    include_prefix = "parquet",
    deps = [
        "parquet",
        "//cpp/src/arrow/testing",
    ],
)

cc_library(
    name = "benchmark_util",
    testonly = 1,
    srcs = [
        "benchmark_util.cc",
    ],
    hdrs = [
        "benchmark_util.h",
    ],
    include_prefix = "parquet",
    deps = [
        "parquet",
        "test_util",
        "@google_benchmark//:benchmark",
    ],
)

[cc_test(
    name = name,
    srcs = [name + ".cc"],
    data = [
        # This declares all data
        "//cpp/submodules:parquet-testing",
        # This is to get to one file to the "data" folder, and then /.. to it (hack!)
        "//cpp/submodules:parquet-testing/data/README.md",
    ],
    env = {
        "PARQUET_TEST_DATA": "$(rootpath //cpp/submodules:parquet-testing/data/README.md)/../",
    },
    features = [
        "generate_pdb_file",
    ],
    deps = [
        "test_util",
        "//cpp/src/parquet/api",
        "@googletest//:gtest_main",
    ],
) for name in [
    "bloom_filter_reader_test",
    "bloom_filter_test",
    "column_reader_test",
    "column_scanner_test",
    "column_writer_test",
    "encoding_test",
    "file_deserialize_test",
    "file_serialize_test",
    "level_conversion_test",
    "metadata_test",
    "page_index_test",
    "properties_test",
    "public_api_test",
    "reader_test",
    "schema_test",
    "statistics_test",
    "stream_reader_test",
    "stream_writer_test",
    "types_test",
]]

[cc_test(
    name = name,
    srcs = [name + ".cc"],
    features = [
        "generate_pdb_file",
    ],
    deps = [
        "benchmark_util",
        "//cpp/src/arrow:benchmark_common",
    ],
) for name in [
    "bloom_filter_benchmark",
    "column_io_benchmark",
    "column_reader_benchmark",
    "encoding_benchmark",
    "level_conversion_benchmark",
    "page_index_benchmark",
]]
