
dnl configure.ac: project autoconfiguration script config file.

AC_PREREQ([2.61])

AC_INIT([beamer-dei-v2], [0.1], [speziale.ettore@gmail.com])
AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_MACRO_DIR([m4])
AM_INIT_AUTOMAKE([foreign tar-pax])
AM_MAINTAINER_MODE()

dnl LaTeX checks.

ACLTX_CHECK()

AC_CONFIG_FILES([Makefile \
                 test/Makefile])

AC_CONFIG_FILES([test/colordei-test.tex \
                 test/fontdei-test.tex \
                 test/outerdei-test.tex])

AC_OUTPUT()
