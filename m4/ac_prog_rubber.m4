
dnl ac_prog_rubber.m4: definition of the AC_PROG_RUBBER macro.

dnl This file define a macro to check for rubber executable. If found a make
dnl $(RUBBER) variable is set to the executable. In order to use rubber you can
dnl write a automake file like this:
dnl
dnl ## Remove generated pdf.
dnl CLEANFILES = paper.pdf
dnl
dnl ## Build paper in pdf format.
dnl paper.pdf: paper.tex section-1.tex section-2.tex
dnl         $(RUBBER) --pdf paper.tex
dnl
dnl pdf-local: paper.pdf
dnl
dnl ## Remove some garbage.
dnl clean-local:
dnl        $(RUBBER) --clean paper.tex
dnl
dnl The rubber program can also be used in a pipeline, through the rubber-pipe
dnl command. This macro also ensures that it is present in the current system
dnl and set the $(RUBBER_PIPE) variable to the executable.
AC_DEFUN([AC_PROG_RUBBER],
[

dnl Search rubber script. I think that if rubber is installed a base latex
dnl installation is avaible.
AC_CHECK_PROG(have_rubber, rubber, yes)
if test "$have_rubber" = "yes"; then
  RUBBER=rubber
  AC_SUBST(RUBBER)
else
  AC_MSG_ERROR([rubber executable not found])
fi

AC_CHECK_PROG(have_rubber_pipe, rubber-pipe, yes)
if test "$have_rubber_pipe" = "yes"; then
  RUBBER_PIPE=rubber-pipe
  AC_SUBST(RUBBER_PIPE)
else
  AC_MSG_ERROR([rubber-pipe executable not found])
fi

])

