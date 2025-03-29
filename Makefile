SHELL := /bin/sh

INSTALL := /usr/bin/install
GIT := /usr/bin/git
WGET := /usr/bin/wget
ECHO := /bin/echo
RM := /bin/rm

-include local.mk

root-dir := .
local-bin-dir := $(HOME)/local/bin

all-deps := \
	$(local-bin-dir)/brew-update \
	$(local-bin-dir)/topdf \
	$(local-bin-dir)/fix-rstudio.sh \
	$(local-bin-dir)/xlsx2csv \
	$(local-bin-dir)/gretlcli \
	$(local-bin-dir)/emacs-server

all: $(all-deps)

$(local-bin-dir)/%: $(root-dir)/% | $(local-bin-dir)
	$(INSTALL) -m 0750 -T $< $@


$(local-bin-dir):
	$(INSTALL) -m 0755 -d $@

.PHONY: clean
clean:
	-@$(RM) $(all-deps)


# Local Variables:
# mode: makefile-gmake
# eval: (flyspell-mode -1)
# End:
