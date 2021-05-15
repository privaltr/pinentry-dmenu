PRGM = pinentry-dmenu
PREFIX ?= /usr
SHRDIR ?= $(PREFIX)/share
BINDIR ?= $(PREFIX)/bin

install:
	@install -Dm755 pinentry-dmenu		  -t $(DESTDIR)$(BINDIR)
	@install -Dm644 LICENSE               -t $(DESTDIR)$(SHRDIR)/licenses/$(PRGM)

uninstall:
	@unlink $(DESTDIR)$(BINDIR)/$(PRGM) # Remove binary
	@rm -Rf $(DESTDIR)$(SHRDIR)/$(PRGM) # Remove icons
	@rm -Rf $(DESTDIR)$(SHRDIR)/licenses/$(PRGM) # Remove license
