PREFIX = $(if $(DESTDIR),$(DESTDIR)/usr,$(if $(filter root,$(USER)),/usr/local,$(HOME)/.local))
BINDIR = $(PREFIX)/bin
LIBDIR = $(PREFIX)/lib/$(TARGET)

.PHONY: install
install: hid_listen
	install -D -T -m 0755 -o root $< $(BINDIR)/teensy-listen

.DEFAULT_GOAL := hid_listen
