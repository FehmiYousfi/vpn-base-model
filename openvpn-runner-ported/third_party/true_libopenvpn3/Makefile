# Variables
BUILD_DIR := build
CMAKE := cmake
MAKE := make

# Default target
all: configure build

# Configure the project with CMake
configure:
	@echo "Configuring project..."
	@mkdir -p $(BUILD_DIR)
	@cd $(BUILD_DIR) && $(CMAKE) -DCOMPILE_TARGET=DESKTOP_x86_64 -DFLAVOR=DESKTOP ..

# Build the project
build:
	@echo "Building project..."
	@cd $(BUILD_DIR) && $(MAKE)

# Clean the build directory
clean:
	@echo "Cleaning build directory..."
	@rm -rf $(BUILD_DIR)

# Phony targets
.PHONY: all configure build clean