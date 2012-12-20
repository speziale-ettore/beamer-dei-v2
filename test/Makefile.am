
## Makefile.am: builds thesis.

MAINTAINERCLEANFILES = Makefile.in

TEXFILES = title-page.tex \
           sectioning.tex \
           frames.tex \
	   bibliography.tex \
	   bibliography.bib

TEXCOLOR = $(top_srcdir)/texmf/color
TEXCOLORDEP = $(top_srcdir)/texmf/color/beamercolorthemedei-v2.sty

TEXFONT = $(top_srcdir)/texmf/font
TEXFONTDEP = $(top_srcdir)/texmf/font/beamerfontthemedei-v2.sty

TEXOUTER = $(top_srcdir)/texmf/outer
TEXOUTERDEP = $(top_srcdir)/texmf/outer/beamerouterthemedei-v2.sty

if LATEX_ENABLED

CLEANFILES = colordei-test.pdf \
	     fontdei-test.pdf \
	     outerdei-test.pdf

all-local: pdf-local

colordei-test.pdf: colordei-test.tex \
                   $(TEXFILES) \
		   $(TEXCOLORDEP)
	$(RUBBER) --texpath $(TEXCOLOR) --pdf $<

fontdei-test.pdf: fontdei-test.tex \
                  $(TEXFILES) \
	          $(TEXFONTDEP)
	$(RUBBER) --texpath $(TEXFONT) --pdf $<

outerdei-test.pdf: outerdei-test.tex \
                   $(TEXFILES) \
		   $(TEXOUTERDEP)
	$(RUBBER) --texpath $(TEXOUTER) --pdf $<

pdf-local: colordei-test.pdf \
	   fontdei-test.pdf \
           outerdei-test.pdf

clean-local: clean-colordei-test \
	     clean-fontdei-test \
             clean-outerdei-test

clean-colordei-test:
	$(RUBBER) --clean colordei-test.tex

clean-fontdei-test:
	$(RUBBER) --clean fontdei-test.tex

clean-outerdei-test:
	$(RUBBER) --clean outerdei-test.tex

endif ## LATEX_ENABLED
