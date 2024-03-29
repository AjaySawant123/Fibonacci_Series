CXX = g++
CXXFLAGS = -std=c++11
SRC_DIR = .
BIN_DIR = ./bin
EXE = $(BIN_DIR)/PartC-789.exe
HEX = $(BIN_DIR)/PartC-789.hex

SOURCES := $(wildcard $(SRC_DIR)/*.cpp)

all: $(EXE) $(HEX)

$(EXE): $(SOURCES)
	@mkdir -p $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $^ -o $@

$(HEX): $(EXE)
	@mkdir -p $(BIN_DIR)
	objcopy -O ihex $< $@

zip: all
	@mkdir -p $(BIN_DIR)
	zip -j $(BIN_DIR)/PartC-789.zip $(EXE) $(HEX)

clean:
	rm -rf $(BIN_DIR)

.PHONY: all zip clean
