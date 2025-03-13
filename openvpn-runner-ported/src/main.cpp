#include <stdlib.h> // for atoi

#include <string>
#include <iostream>
#include <thread>
#include <memory>
#include <mutex>

#include <openvpn/common/platform.hpp>

#ifdef OPENVPN_PLATFORM_MAC
#include <CoreFoundation/CFBundle.h>
#include <ApplicationServices/ApplicationServices.h>
#endif

#ifdef OPENVPN_USE_LOG_BASE_SIMPLE
#define OPENVPN_LOG_GLOBAL // use global rather than thread-local log object pointer
#include <openvpn/log/logbasesimple.hpp>
#endif


#include <openvpn-test-client.hpp>
//#include <openvpn-attachements.hpp>
// don't export core symbols
#define OPENVPN_CORE_API_VISIBILITY_HIDDEN

// use SITNL on Linux by default
#if defined(OPENVPN_PLATFORM_LINUX) && !defined(OPENVPN_USE_IPROUTE2) && !defined(OPENVPN_USE_SITNL)
#define OPENVPN_USE_SITNL
#endif

// should be included before other openvpn includes,
// with the exception of openvpn/log includes

#include <openvpn/common/exception.hpp>
#include <openvpn/common/string.hpp>
#include <openvpn/common/signal.hpp>
#include <openvpn/common/file.hpp>
#include <openvpn/common/getopt.hpp>
#include <openvpn/common/getpw.hpp>
#include <openvpn/common/cleanup.hpp>
#include <openvpn/time/timestr.hpp>
#include <openvpn/ssl/peerinfo.hpp>
#include <openvpn/ssl/sslchoose.hpp>

#ifdef OPENVPN_REMOTE_OVERRIDE
#include <openvpn/common/process.hpp>
#endif

#if defined(USE_MBEDTLS)
#include <openvpn/mbedtls/util/pkcs1.hpp>
#endif

#if defined(OPENVPN_PLATFORM_WIN)
#include <openvpn/win/console.hpp>
#include <shellapi.h>
#endif

#ifdef USE_NETCFG
#include "client/core-client-netcfg.hpp"
#endif

#if defined(OPENVPN_PLATFORM_LINUX)

#include <openvpn/tun/linux/client/tuncli.hpp>

// we use a static polymorphism and define a
// platform-specific TunSetup class, responsible
// for setting up tun device
#define TUN_CLASS_SETUP TunLinuxSetup::Setup<TUN_LINUX>
#include <openvpn/tun/linux/client/tuncli.hpp>
#elif defined(OPENVPN_PLATFORM_MAC)
#include <openvpn/tun/mac/client/tuncli.hpp>
#define TUN_CLASS_SETUP TunMac::Setup
#endif

using namespace openvpn;

OvpnStats LiveStats = OvpnStats();

#ifndef OPENVPN_OVPNCLI_OMIT_MAIN


#include <fstream>
#include <stdexcept>
#include <string>

std::string read_file(const std::string& file_path) {
    std::ifstream file(file_path, std::ios::binary);
    if (!file.is_open()) {
        throw std::runtime_error("Failed to open file: " + file_path);
    }
    
    std::string content;
    file.seekg(0, std::ios::end);
    content.resize(file.tellg());
    file.seekg(0, std::ios::beg);
    file.read(&content[0], content.size());
    
    return content;
}

// #include <openvpn3/openvpn/log/logbase.hpp>
// #include <openvpn3/openvpn/log/logbasesimple.hpp>



int main(int argc, char *argv[])
{
  int ret = 0;
  LiveStats.Reset();


	#ifdef OPENVPN_LOG_LOGBASE_H
	LogBaseSimple log;
	#endif

	#if defined(OPENVPN_PLATFORM_WIN)
	SetConsoleOutputCP(CP_UTF8);
	#endif

  try {
    // Create mutex for thread synchronization
	// int result = start_openvpn_client(argc, argv, &LiveStats);
    std::string config_content = read_file("runner-0.ovpn");
        // Use the content...
    int result = openvpn_client_minimal(&config_content,&LiveStats);
    // Check the result
    if (result == 0) {
        std::cout << "OpenVPN client exited successfully." << std::endl;
    } else {
        std::cout << "OpenVPN client exited with an error." << std::endl;
    }
  }
  catch (const std::exception& e) {
    std::cout << "Main thread exception: " << e.what() << std::endl;
    ret = 1;
  }
  return ret;
}

#endif


