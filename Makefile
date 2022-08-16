PUBLISH_DIR=release

all: clean
	hugo -d "$(PUBLISH_DIR)"
	tree "$(PUBLISH_DIR)"

clean:
	rm -rf "$(PUBLISH_DIR)"/*

publish:
	scp -r "$(PUBLISH_DIR)" "resonant-bytes.de:www/resobyte"

.PHONY: all clean publish
