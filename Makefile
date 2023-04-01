# Makefile for running the Linux script and cleanup script

# Define variables
LINUX_SCRIPT = ./bin/linux.sh
CLEANUP_SCRIPT = ./bin/cleanup.sh

# Set default target
all: linux

# Define linux target
linux: $(LINUX_SCRIPT)
	@echo "Running Linux script..."
	@bash $(LINUX_SCRIPT)

# Define clean target
clean: $(CLEANUP_SCRIPT)
	@echo "Running cleanup script..."
	@bash $(CLEANUP_SCRIPT)

# Set execute permissions
permissions:
	chmod -R +x ./bin

# Set phony targets
.PHONY: all linux clean permissions





