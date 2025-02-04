#include <iostream>
#include <thread>
#include <chrono>
#include <atomic>
#include <mutex>
#include <iomanip>

std::atomic<bool> stats_thread_running{true}; 
std::mutex stats_mutex;

class OvpnStats {
private:
    // Member variables (now private for encapsulation)
    unsigned int BYTES_IN;
    unsigned int BYTES_OUT;
    unsigned int PACKETS_IN;
    unsigned int PACKETS_OUT;
    unsigned int TUN_BYTES_IN;
    unsigned int TUN_BYTES_OUT;
    unsigned int TUN_PACKETS_IN;
    unsigned int TUN_PACKETS_OUT;

public:
    // Constructor replaces Init()
    OvpnStats() : BYTES_IN(0), BYTES_OUT(0), PACKETS_IN(0), PACKETS_OUT(0),
                 TUN_BYTES_IN(0), TUN_BYTES_OUT(0), TUN_PACKETS_IN(0),
                 TUN_PACKETS_OUT(0) {}

    // Update method with parameter validation
 void Update(const std::vector<long long>& stats,int range) {
        if (stats.size() != range) {
            throw std::out_of_range("The stats vector must contain exactly " + std::to_string(range) + " elements.");
        }
        BYTES_IN = static_cast<unsigned int>(stats[0]);
        BYTES_OUT = static_cast<unsigned int>(stats[1]);
        PACKETS_IN = static_cast<unsigned int>(stats[2]);
        PACKETS_OUT = static_cast<unsigned int>(stats[3]);
        TUN_BYTES_IN = static_cast<unsigned int>(stats[4]);
        TUN_BYTES_OUT = static_cast<unsigned int>(stats[5]);
        TUN_PACKETS_IN = static_cast<unsigned int>(stats[6]);
        TUN_PACKETS_OUT = static_cast<unsigned int>(stats[7]);
    }

    void Reset() {
        BYTES_IN = 0;
        BYTES_OUT = 0;
        PACKETS_IN = 0;
        PACKETS_OUT = 0;
        TUN_BYTES_IN = 0;
        TUN_BYTES_OUT = 0;
        TUN_PACKETS_IN = 0;
        TUN_PACKETS_OUT = 0;
    }

    unsigned int getBytesIn() const { return BYTES_IN; }
    unsigned int getBytesOut() const { return BYTES_OUT; }
    unsigned int getPacketsIn() const { return PACKETS_IN; }
    unsigned int getPacketsOut() const { return PACKETS_OUT; }
    unsigned int getTunBytesIn() const { return TUN_BYTES_IN; }
    unsigned int getTunBytesOut() const { return TUN_BYTES_OUT; }
    unsigned int getTunPacketsIn() const { return TUN_PACKETS_IN; }
    unsigned int getTunPacketsOut() const { return TUN_PACKETS_OUT; }

    ~OvpnStats() = default;

    OvpnStats(const OvpnStats&) = default;
    OvpnStats& operator=(const OvpnStats&) = default;

    void print_stats() const {
        const double BYTES_TO_MB = 1.0 / (1024 * 1024); 

        std::cout << std::fixed << std::setprecision(2);
        std::cout << "BYTES_IN: " << BYTES_IN * BYTES_TO_MB << " MB\n"
                  << "BYTES_OUT: " << BYTES_OUT * BYTES_TO_MB << " MB\n"
                  << "PACKETS_IN: " << PACKETS_IN << "\n"
                  << "PACKETS_OUT: " << PACKETS_OUT << "\n"
                  << "TUN_BYTES_IN: " << TUN_BYTES_IN * BYTES_TO_MB << " MB\n"
                  << "TUN_BYTES_OUT: " << TUN_BYTES_OUT * BYTES_TO_MB << " MB\n"
                  << "TUN_PACKETS_IN: " << TUN_PACKETS_IN << "\n"
                  << "TUN_PACKETS_OUT: " << TUN_PACKETS_OUT << "\n";
    }
};


