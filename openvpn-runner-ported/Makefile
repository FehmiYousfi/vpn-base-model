# Variables
BUILD_DIR := build
BUILD_DIR_OPENVPNLIB := third_party/true_libopenvpn3/build

CMAKE := cmake
MAKE := make

# Default target
all: configure build

# Configure the project with CMake
configure:
	@echo "Configuring project..."
	@mkdir -p $(BUILD_DIR)
	@cd $(BUILD_DIR) && $(CMAKE) ..

# Build the project
build:
	@echo "Building project..."
	@cd $(BUILD_DIR) && $(MAKE)

# Clean the build directory
clean:
	@echo "Cleaning build directory..."
	@rm -rf $(BUILD_DIR)
	@rm -rf $(BUILD_DIR_OPENVPNLIB)

# Phony targets
.PHONY: all configure build clean