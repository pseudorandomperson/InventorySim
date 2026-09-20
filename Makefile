SRC_DIR := src
BUILD_DIR := build
CLASSES := $(BUILD_DIR)/classes
JAR := $(BUILD_DIR)/InventorySim.jar

SOURCES := $(shell find $(SRC_DIR) -name '*.java')

.PHONY: all compile jar run clean

all: jar

compile:
	mkdir -p $(CLASSES)
	javac -d $(CLASSES) $(SOURCES)

jar: compile
	jar cfe $(JAR) com.InventorySim.Main -C $(CLASSES) .

run: jar
	java -jar $(JAR)

clean:
	rm -rf $(BUILD_DIR)
