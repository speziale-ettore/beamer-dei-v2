
## Makefile.am: builds thesis.

MAINTAINERCLEANFILES = Makefile.in

TEXFILES = title-page.tex \
           sectioning.tex \
           frames.tex

TEXFONT = $(top_srcdir)/texmf/font
TEXFONTDEP = $(top_srcdir)/texmf/font/beamerfontthemedei-v2.sty

if LATEX_ENABLED

CLEANFILES = fontdei-test.pdf

all-local: pdf-local

fontdei-test.pdf: fontdei-test.tex \
             $(TEXFILES) \
	     $(TEXFONTDEP)
	$(RUBBER) --texpath $(TEXFONT) --pdf $<

pdf-local: fontdei-test.pdf

clean-local: clean-fontdei-test

clean-fontdei-test:
	$(RUBBER) --clean fontdei-test.tex

endif ## LATEX_ENABLED
