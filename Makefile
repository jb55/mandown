
PREFIX ?= /usr/local

install:
	mkdir -p $(PREFIX)/bin
	cp mandown $(PREFIX)/bin
