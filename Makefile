all: $(ALL) 

REGEX0  = regex_0
REGEX0_O = regex_0.o

REGEX1 = regex_1
REGEX1_O = regex_1.o

REGEX2 = regex_scanf
REGEX2_O = regex_scanf.o

ALL = $(REGEX0) $(REGEX1) $(REGEX2)
ALL_O = REGEX0_O REGEX1_O REGEX2_O

SOURCES:=./src
INCLUDES:=./inc
TESTS:=./tests

BUILD:=./build
BIN:=./bin

CFILES:=$(shell find $(SOURCES) -printf '%P ' -name '*.c')
OFILES:=$(patsubst %.c,$(BUILD)/%.o,$(CFILES))

CC:=gcc
CFLAGS:=-std=c11 -Wall -I$(INCLUDES)

$(OFILES): $(BUILD)/%.o: $(SOURCES)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean mkdir

$(REGEX0): mkdir $(OFILES)
	$(CC) $(BUILD)/$(REGEX0_O) $(CFLAGS) -o $(BIN)/$(REGEX0)

$(REGEX1): mkdir $(OFILES)
	$(CC) $(BUILD)/$(REGEX1_O) $(CFLAGS) -o $(BIN)/$(REGEX1)

$(REGEX2): mkdir $(OFILES)
	$(CC) $(BUILD)/$(REGEX2_O) $(CFLAGS) -o $(BIN)/$(REGEX2)

mkdir:
	mkdir -p $(BUILD)
	mkdir -p $(BIN)

clean:
	rm -rf $(BUILD)
	rm -rf $(BIN)
	rm -f $(TARGET)
	rm -f $(TARGET).test
	rm -f $(TARGET).dbg
	rm -f $(TARGET).dbg.test