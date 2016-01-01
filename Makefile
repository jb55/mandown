
PREFIX ?= /usr/local

install:
	mkdir -p $(PREFIX)/bin
	cp mdman $(PREFIX)/bin
