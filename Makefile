BIN_DIR := bin
# Define the C++ compiler
CXX := g++
# Compiler flags
CXXFLAGS := -std=c++17 -Wall

# List of source files (without the .cpp extension)
SOURCES := swap guess_the_number basic_calculator rps improved_calculator improved_rps

TARGETS := $(addprefix $(BIN_DIR)/,$(SOURCES))

$(shell mkdir -p $(BIN_DIR))

# Rule to build all targets
all: $(TARGETS)

# Rule to build each target from its corresponding source
$(BIN_DIR)/%: %.cpp
	$(CXX) $(CXXFLAGS) -o $@ $<

# Phony target to clean compiled binaries
.PHONY: clean
clean-all:
	rm -rf $(BIN_DIR)