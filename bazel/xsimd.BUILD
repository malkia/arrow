package(default_visibility = ["//visibility:public"])

cc_library(
    name = "xsimd",
    hdrs = glob(["include/xsimd/**"]),
    strip_include_prefix = "include",
)

# bazel run -c opt @com_github_xtensorstack_xsimd//:benchmark
cc_binary(
    name = "benchmark",
    srcs = [
        "benchmark/main.cpp",
        "benchmark/xsimd_benchmark.hpp",
    ],
    deps = [
        "xsimd",
    ],
)

cc_binary(
    name = "mandelbrot_example",
    srcs = [
        "examples/mandelbrot.cpp",
        "examples/pico_bench.hpp",
    ],
    deps = ["xsimd"],
)

# bazel test -c opt @com_github_xtensorstack_xsimd//:tests
cc_test(
    name = "tests",
    srcs = [
        # TODO(malkia): Some test files do not compile yet.
        "test/test_utils.hpp",
        "test/test_arch.cpp",
        "test/test_basic_math.cpp",
        #"test/test_batch.cpp",
        "test/test_batch_bool.cpp",
        "test/test_batch_cast.cpp",
        "test/test_batch_complex.cpp",
        #"test/test_batch_constant.cpp",
        "test/test_batch_float.cpp",
        "test/test_batch_int.cpp",
        #"test/test_batch_manip.cpp",
        "test/test_bitwise_cast.cpp",
        "test/test_complex_exponential.cpp",
        "test/test_complex_hyperbolic.cpp",
        "test/test_complex_power.cpp",
        "test/test_complex_trigonometric.cpp",
        "test/test_conversion.cpp",
        "test/test_custom_default_arch.cpp",
        "test/test_error_gamma.cpp",
        "test/test_explicit_batch_instantiation.cpp",
        "test/test_exponential.cpp",
        "test/test_extract_pair.cpp",
        "test/test_fp_manipulation.cpp",
        "test/test_gnu_source.cpp",
        "test/test_hyperbolic.cpp",
        "test/test_load_store.cpp",
        "test/test_memory.cpp",
        "test/test_poly_evaluation.cpp",
        "test/test_power.cpp",
        "test/test_rounding.cpp",
        "test/test_select.cpp",
        #"test/test_shuffle.cpp",
        "test/test_sum.cpp",
        "test/test_sum.hpp",
        "test/test_traits.cpp",
        "test/test_trigonometric.cpp",
        #"test/test_xsimd_api.cpp",
    ],
    deps = [
        "xsimd",
        "@doctest//doctest:main",
    ],
)
