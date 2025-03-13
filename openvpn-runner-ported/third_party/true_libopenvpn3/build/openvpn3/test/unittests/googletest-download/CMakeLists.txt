cmake_minimum_required(VERSION 3.5)

project(googletest-download NONE)

include(ExternalProject)
ExternalProject_Add(googletest
  GIT_REPOSITORY    https://github.com/google/googletest.git
  	GIT_TAG           release-1.10.0
        SOURCE_DIR        "/home/fyou/Desktop/vpn-base-model/openvpn-runner-ported/third_party/true_libopenvpn3/build/openvpn3/test/unittests/googletest-src"
        BINARY_DIR        "/home/fyou/Desktop/vpn-base-model/openvpn-runner-ported/third_party/true_libopenvpn3/build/openvpn3/test/unittests/googletest-build"
        CONFIGURE_COMMAND ""
        BUILD_COMMAND     ""
        INSTALL_COMMAND   ""
        TEST_COMMAND      ""
        )
