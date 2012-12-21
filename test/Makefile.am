
## Makefile.am: builds tests.

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

TEXINNER = $(top_srcdir)/texmf/inner
TEXINNERDEP = $(top_srcdir)/texmf/inner/beamerinnerthemedei-v2.sty

TEXTHEME = $(top_srcdir)/texmf/theme
TEXTHEMEDEP = $(top_srcdir)/texmf/theme/beamerthemedei-v2.sty

if LATEX_ENABLED

CLEANFILES = colordei-test.pdf \
	     fontdei-test.pdf \
	     innerdei-test.pdf \
	     outerdei-test.pdf \
	     themedei-test.pdf

EXTRA_DIST = $(TEXFILES)

colordei-test.pdf: colordei-test.tex \
                   $(TEXFILES) \
		   $(TEXCOLORDEP)
	$(RUBBER) --texpath $(TEXCOLOR) --pdf $<

fontdei-test.pdf: fontdei-test.tex \
                  $(TEXFILES) \
	          $(TEXFONTDEP)
	$(RUBBER) --texpath $(TEXFONT) --pdf $<

innerdei-test.pdf: innerdei-test.tex \
                   $(TEXFILES) \
		   $(TEXINNERDEP)
	$(RUBBER) --texpath $(TEXINNER) --pdf $<

outerdei-test.pdf: outerdei-test.tex \
                   $(TEXFILES) \
		   $(TEXOUTERDEP)
	$(RUBBER) --texpath $(TEXOUTER) --pdf $<

themedei-test.pdf: themedei-test.tex \
                   $(TEXFILES) \
		   $(TEXCOLORDEP) \
		   $(TEXFONTDEP) \
		   $(TEXINNERDEP) \
		   $(TEXOUTERDEP) \
		   $(TEXTHEMEDEP)
	$(RUBBER) --texpath $(TEXCOLOR) \
	          --texpath $(TEXFONT) \
		  --texpath $(TEXINNER) \
		  --texpath $(TEXOUTER) \
		  --texpath $(TEXTHEME) \
		  --pdf $<

check-local: colordei-test.pdf \
             fontdei-test.pdf \
             innerdei-test.pdf \
             outerdei-test.pdf \
             themedei-test.pdf

clean-local: clean-colordei-test \
	     clean-fontdei-test \
	     clean-innerdei-test \
             clean-outerdei-test \
	     clean-themedei-test

clean-colordei-test:
	$(RUBBER) --clean colordei-test.tex

clean-fontdei-test:
	$(RUBBER) --clean fontdei-test.tex

clean-innerdei-test:
	$(RUBBER) --clean innerdei-test.tex

clean-outerdei-test:
	$(RUBBER) --clean outerdei-test.tex

clean-themedei-test:
	$(RUBBER) --clean themedei-test.tex

endif ## LATEX_ENABLED
