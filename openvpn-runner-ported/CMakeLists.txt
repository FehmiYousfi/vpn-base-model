cmake_minimum_required(VERSION 3.10)
project(OpenVPNClient)

set(OPENVPN3_DIR ${CMAKE_SOURCE_DIR}/third_party/true_libopenvpn3/openvpn3)

# Enable compiler optimizations for size
if(CMAKE_CXX_COMPILER_ID STREQUAL "GNU" OR CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
    # Use -Os for size optimization
    set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -Os")
    # Enable link-time optimization (LTO) for GCC/Clang
    set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -flto")
    set(CMAKE_EXE_LINKER_FLAGS_RELEASE "${CMAKE_EXE_LINKER_FLAGS_RELEASE} -flto")
elseif(CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
    # Use /O1 for size optimization in MSVC
    set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} /O1")
    # Enable link-time code generation (LTCG) for MSVC
    set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} /GL")
    set(CMAKE_EXE_LINKER_FLAGS_RELEASE "${CMAKE_EXE_LINKER_FLAGS_RELEASE} /LTCG")
endif()

set(ADDED_COMPILE_OPTIONS
    -Wno-unused-variable
    -Wno-deprecated-declarations
    -Wno-array-bounds
    -fpermissive
    -Wno-unused-parameter
    -Wno-error=maybe-uninitialized
)

add_compile_options(${ADDED_COMPILE_OPTIONS})

# Include directories
include_directories(${CMAKE_SOURCE_DIR}/third_party/true_libopenvpn3)
include_directories(${CMAKE_SOURCE_DIR}/third_party/true_libopenvpn3/openvpn3)
include_directories(${CMAKE_SOURCE_DIR}/third_party/true_libopenvpn3/libtins/include)
include_directories(${CMAKE_SOURCE_DIR}/src)


# Specify the source file
set(SOURCES src/main.cpp)

# Add the executable
add_executable(OpenVPNClient ${SOURCES})
target_compile_definitions(OpenVPNClient PRIVATE
      -DHAVE_CONFIG_H
      -DASIO_STANDALONE
      -DUSE_ASIO
      -DGIT_VERSION_STRING=\"${OPENVPN3_GIT}\"
      -DNO_ROUTE_EXCLUDE_EMULATION
      -DOPENVPN_SHOW_SESSION_TOKEN
      -DUSE_OPENSSL
)
target_include_directories(OpenVPNClient PUBLIC
      ${OPENVPN3_DIR}
      ${OPENVPN3_DIR}/lzo/include
      ${OPENVPN3_DIR}/lz4/lib
      ${OPENVPN3_DIR}/asio/asio/include
      ${OPENVPN3_DIR}/openvpn3
      ${OPENVPN3_DIR}/mbdetls/include
)

# Path to the static libraries
set(LIBOPENVPN_LIBRARY ${CMAKE_SOURCE_DIR}/third_party/true_libopenvpn3/build/liblibopenvpn3.a)
set(LIBTINS_LIBRARY ${CMAKE_SOURCE_DIR}/third_party/true_libopenvpn3/build/libtins/lib/libtins.a)
set(LIBOPENVPNCLI_LIBRARY ${CMAKE_SOURCE_DIR}/third_party/true_libopenvpn3/build/openvpn3/test/cli-lib/libopenvpncli-ported.a)

# Check if the static libraries exist
if(NOT EXISTS ${LIBOPENVPN_LIBRARY} OR NOT EXISTS ${LIBTINS_LIBRARY} OR NOT EXISTS ${LIBOPENVPNCLI_LIBRARY})
    message(STATUS "liblibopenvpn.a or libtins.a or libopenvpncli-ported.a not found. Building them from source...")

    # Add ExternalProject to build the libraries
    include(ExternalProject)
    ExternalProject_Add(
        libopenvpn
        SOURCE_DIR ${CMAKE_SOURCE_DIR}/third_party/true_libopenvpn3
        BINARY_DIR ${CMAKE_SOURCE_DIR}/third_party/true_libopenvpn3/build
        CONFIGURE_COMMAND cmake -S ${CMAKE_SOURCE_DIR}/third_party/true_libopenvpn3 -B ${CMAKE_SOURCE_DIR}/third_party/true_libopenvpn3/build
        BUILD_COMMAND cmake --build ${CMAKE_SOURCE_DIR}/third_party/true_libopenvpn3/build --config Release
        INSTALL_COMMAND ""
        BUILD_BYPRODUCTS 
            ${CMAKE_SOURCE_DIR}/third_party/true_libopenvpn3/build/liblibopenvpn3.a
            ${CMAKE_SOURCE_DIR}/third_party/true_libopenvpn3/build/libtins/lib/libtins.a
            ${CMAKE_SOURCE_DIR}/third_party/true_libopenvpn3/build/openvpn3/test/cli-lib/libopenvpncli-ported.a
    )

    # Add a dependency to ensure the libraries are built before linking
    add_dependencies(OpenVPNClient libopenvpn)

    # Update the library paths to point to the built libraries
    set(LIBOPENVPN_LIBRARY ${CMAKE_SOURCE_DIR}/third_party/true_libopenvpn3/build/liblibopenvpn3.a)
    set(LIBTINS_LIBRARY ${CMAKE_SOURCE_DIR}/third_party/true_libopenvpn3/build/libtins/lib/libtins.a)
    set(LIBOPENVPNCLI_LIBRARY ${CMAKE_SOURCE_DIR}/third_party/true_libopenvpn3/build/openvpn3/test/cli-lib/libopenvpncli-ported.a)
endif()

# Find and link OpenSSL (or another SSL library)
find_package(OpenSSL REQUIRED)
if(OpenSSL_FOUND)
    message(STATUS "OpenSSL found: ${OPENSSL_VERSION}")
    include_directories(${OPENSSL_INCLUDE_DIR})
    target_link_libraries(OpenVPNClient OpenSSL::SSL OpenSSL::Crypto)
else()
    message(FATAL_ERROR "OpenSSL not found. Please install OpenSSL.")
endif()

# Link the static libraries
target_link_libraries(OpenVPNClient ${LIBOPENVPN_LIBRARY} ${LIBTINS_LIBRARY} ${LIBOPENVPNCLI_LIBRARY})

# Additional libraries (if required)
# For example, if the library depends on pthread, you can link it like this:
find_package(Threads REQUIRED)
target_link_libraries(OpenVPNClient Threads::Threads)
set_property(TARGET OpenVPNClient PROPERTY CXX_STANDARD 17)
