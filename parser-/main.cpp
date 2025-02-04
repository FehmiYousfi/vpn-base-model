#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <map>
#include <sstream>

class ConfigBlock {
public:
    std::string name;
    std::string content;

    ConfigBlock(const std::string& name, const std::string& content)
        : name(name), content(content) {}
};

class OpenVPNConfig {
public:
    std::map<std::string, std::string> keyValuePairs;
    std::vector<ConfigBlock> blocks;

    void addKeyValue(const std::string& key, const std::string& value) {
        keyValuePairs[key] = value;
    }

    void addBlock(const std::string& name, const std::string& content) {
        blocks.emplace_back(name, content);
    }

    void print() const {
        std::cout << "OpenVPN Configuration:" << std::endl;
        std::cout << "======================" << std::endl;

        // Print key-value pairs with explanations
        for (const auto& kv : keyValuePairs) {
            std::cout << "Setting: " << kv.first << std::endl;
            std::cout << "  Value: " << kv.second << std::endl;

            // Add explanations for common settings
            if (kv.first == "proto") {
                std::cout << "  Explanation: Specifies the protocol to use (e.g., UDP or TCP)." << std::endl;
            } else if (kv.first == "remote") {
                std::cout << "  Explanation: Defines the remote server address and port." << std::endl;
            } else if (kv.first == "dev") {
                std::cout << "  Explanation: Specifies the type of virtual network interface (e.g., 'tun' or 'tap')." << std::endl;
            } else if (kv.first == "resolv-retry") {
                std::cout << "  Explanation: Determines how long the client will retry resolving the server's hostname." << std::endl;
            } else if (kv.first == "nobind") {
                std::cout << "  Explanation: Prevents the client from binding to a specific local port." << std::endl;
            } else if (kv.first == "persist-key") {
                std::cout << "  Explanation: Keeps the key in memory even if the connection is restarted." << std::endl;
            } else if (kv.first == "persist-tun") {
                std::cout << "  Explanation: Keeps the virtual network interface active even if the connection is restarted." << std::endl;
            } else if (kv.first == "auth") {
                std::cout << "  Explanation: Specifies the hash algorithm used for authentication (e.g., SHA256)." << std::endl;
            } else if (kv.first == "cipher") {
                std::cout << "  Explanation: Specifies the encryption cipher to use (e.g., AES-128-GCM)." << std::endl;
            } else if (kv.first == "tls-client") {
                std::cout << "  Explanation: Indicates that this is a TLS client configuration." << std::endl;
            } else if (kv.first == "tls-version-min") {
                std::cout << "  Explanation: Specifies the minimum TLS version to use (e.g., 1.2)." << std::endl;
            } else if (kv.first == "verb") {
                std::cout << "  Explanation: Sets the verbosity level of log messages (e.g., 3 for medium verbosity)." << std::endl;
            } else {
                std::cout << "  Explanation: No additional information available for this setting." << std::endl;
            }
            std::cout << std::endl;
        }

        // Print blocks with explanations
        for (const auto& block : blocks) {
            std::cout << "Block: " << block.name << std::endl;
            std::cout << "  Content:" << std::endl;
            std::cout << block.content << std::endl;

            // Add explanations for common blocks
            if (block.name == "ca") {
                std::cout << "  Explanation: Contains the Certificate Authority (CA) certificate for verifying server certificates." << std::endl;
            } else if (block.name == "cert") {
                std::cout << "  Explanation: Contains the client's certificate for authentication." << std::endl;
            } else if (block.name == "key") {
                std::cout << "  Explanation: Contains the client's private key for authentication." << std::endl;
            } else if (block.name == "tls-crypt") {
                std::cout << "  Explanation: Contains a static key for encrypting control channel traffic." << std::endl;
            } else {
                std::cout << "  Explanation: No additional information available for this block." << std::endl;
            }
            std::cout << std::endl;
        }
    }
};

OpenVPNConfig parseConfigFile(const std::string& filename) {
    OpenVPNConfig config;
    std::ifstream file(filename);
    std::string line;
    std::string currentBlockName;
    std::stringstream currentBlockContent;

    while (std::getline(file, line)) {
        if (line.empty()) continue;

        if (line[0] == '<') {
            if (!currentBlockName.empty()) {
                config.addBlock(currentBlockName, currentBlockContent.str());
                currentBlockContent.str("");
                currentBlockContent.clear();
            }
            currentBlockName = line.substr(1, line.find('>') - 1);
        } else if (line[0] == '#') {
            // Ignore comments
            continue;
        } else if (!currentBlockName.empty()) {
            currentBlockContent << line << "\n";
        } else {
            size_t spacePos = line.find(' ');
            if (spacePos != std::string::npos) {
                std::string key = line.substr(0, spacePos);
                std::string value = line.substr(spacePos + 1);
                config.addKeyValue(key, value);
            }
        }
    }

    if (!currentBlockName.empty()) {
        config.addBlock(currentBlockName, currentBlockContent.str());
    }

    return config;
}

int main() {
    std::string filename = "runner-0.ovpn";
    OpenVPNConfig config = parseConfigFile(filename);
    config.print();
    return 0;
}
