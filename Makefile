PUBLISH_DIR=release

all: clean
	hugo -d "$(PUBLISH_DIR)"
	tree "$(PUBLISH_DIR)"

clean:
	rm -rf "$(PUBLISH_DIR)"/*

publish:
	find $(PUBLISH_DIR) -mindepth 1 -maxdepth 1 -exec scp -r "{}" "resonant-bytes.de:www/resobyte/" \;

.PHONY: all clean publish
