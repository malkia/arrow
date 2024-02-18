load("@com_github_nelhage_rules_boost//:boost/boost.bzl", "boost_deps")

def _deps2(blah):
    boost_deps()

deps2 = module_extension(implementation = _deps2)