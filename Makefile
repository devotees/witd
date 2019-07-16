BUILD=_build

# dependencies:
# 	markdown

all:
	mkdir -p $(BUILD)
	markdown index.md > $(BUILD)/index.html
	markdown clues.md > $(BUILD)/clues.html
