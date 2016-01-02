
PREFIX ?= /usr/local

install: manpage
	mkdir -p $(PREFIX)/{bin,share/man/man1}
	cp mandown $(PREFIX)/bin
	cp doc/mandown.1 $(PREFIX)/share/man/man1

doc/mandown.1: doc/man.md
	pandoc -s -f markdown -t man doc/man.md > $@

manpage: doc/mandown.1

.PHONY: manpage
