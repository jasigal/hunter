# Copyright (c) 2016-2017 Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_configuration_types)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    libffi
    VERSION
    "3.4.3"
    URL
    "https://github.com/libffi/libffi/releases/download/v3.4.3/libffi-3.4.3.tar.gz"
    SHA1
    86c5eddb9312d1d41e280d92678bc0cf177086e8
)

hunter_configuration_types(libffi CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_autotools)

hunter_cmake_args(
    libffi
    CMAKE_ARGS
    PKGCONFIG_EXPORT_TARGETS=libffi
)

hunter_cacheable(libffi)
hunter_download(
    PACKAGE_NAME libffi
    PACKAGE_INTERNAL_DEPS_ID "9"
    PACKAGE_UNRELOCATABLE_TEXT_FILES
    "lib64/libffi.la"
    "lib/pkgconfig/libffi.pc"
)
