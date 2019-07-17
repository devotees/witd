BUILD=_build

# dependencies:
# 	markdown

all:
	mkdir -p $(BUILD)/clues
	markdown index.md > $(BUILD)/index.html
	markdown clues.md > $(BUILD)/clues/index.html
	markdown 404.md > $(BUILD)/404.html

run:
	cd $(BUILD) ; python3 -m http.server 8080
