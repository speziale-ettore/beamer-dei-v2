
## Makefile.am: project main makefile.

SUBDIRS = texmf test

MAINTAINERCLEANFILES = aclocal.m4 \
                       configure \
                       Makefile.in

ACLOCAL_AMFLAGS = -I m4 -I $(AUTOCONF_MACRO_ARCHIVE_DIR)

EXTRA_DIST = bootstrap

maintainer-clean-local:
	rm -rf build-aux
