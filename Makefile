# MAKEFILE FOR SUPERFV AND TELEGESTIONE UTILS

# set a clean and a rebuild as default
default: clean build

OUTPUT_DIR := dist

$(OUTPUT_DIR):
	mkdir -p $@

build: $(OUTPUT_DIR)
	@echo "build package"
	dpkg-deb --root-owner-group --build hello-world dist

clean:
	@echo "clean deb package"
	rm -rf $(OUTPUT_DIR)/*

.PHONY: default build clean
