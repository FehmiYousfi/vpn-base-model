# Install script for directory: /home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/build/libtins/lib/libtins.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/address_range.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/arp.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/bootp.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/handshake_capturer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/stp.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/pppoe.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/constants.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/crypto.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/cxxstd.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/data_link_type.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins/detail" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/detail/address_helpers.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins/detail" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/detail/icmp_extension_helpers.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins/detail" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/detail/pdu_helpers.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins/detail" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/detail/sequence_number_helpers.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins/detail" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/detail/smart_ptr.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins/detail" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/detail/type_traits.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/dhcp.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/dhcpv6.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/dns.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/dot3.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/dot1q.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/eapol.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/endianness.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/ethernetII.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/exceptions.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/hw_address.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/icmp_extension.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/icmp.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/icmpv6.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/ieee802_3.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/internals.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/ip_reassembler.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/ip.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/ip_address.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/ipv6.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/ipv6_address.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/ipsec.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/llc.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/loopback.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/macros.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/mpls.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/memory_helpers.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/network_interface.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/packet.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/packet_sender.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/pdu.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/pdu_allocator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/pdu_cacher.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/pdu_iterator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/pdu_option.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/radiotap.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/rawpdu.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/rsn_information.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/sll.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/small_uint.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/snap.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/tcp.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins/tcp_ip" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/tcp_ip/ack_tracker.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins/tcp_ip" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/tcp_ip/flow.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins/tcp_ip" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/tcp_ip/data_tracker.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins/tcp_ip" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/tcp_ip/stream.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins/tcp_ip" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/tcp_ip/stream_follower.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins/tcp_ip" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/tcp_ip/stream_identifier.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/timestamp.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/tins.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/udp.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/utils.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins/utils" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/utils/checksum_utils.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins/utils" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/utils/frequency_utils.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins/utils" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/utils/radiotap_parser.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins/utils" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/utils/radiotap_writer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins/utils" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/utils/routing_utils.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins/utils" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/utils/resolve_utils.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tins/utils" TYPE FILE FILES "/home/fyou/Desktop/ovpn-build/openvpn-runner-ported/third_party/true_libopenvpn3/libtins/src/../include//tins/utils/pdu_utils.h")
endif()

