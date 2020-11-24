ACLOCAL_AMFLAGS = -I m4
SUBDIRS = lib include test-cxxtest test-boost
EXTRA_DIST = README

.PHONY : test

all : $(SUBDIRS)

test:
	$(MAKE) -C test-cxxtest test-run
	$(MAKE) -C test-boost test-run
