
dnl acltx_check.m4: check for LaTeX pre-requisites.

dnl This macro enable/check LaTeX pre-requisites.
AC_DEFUN([ACLTX_CHECK],
[

AC_MSG_CHECKING([for enabling LaTeX documentation])
AC_ARG_ENABLE([latex-doc],
              AS_HELP_STRING([--enable-latex-doc],
                             [Enable LaTeX documentation]),
              [
               case "$enableval" in
               yes)
                 latex_enabled=yes
               ;;
               *)
                 latex_enabled=no
               esac
              ],
              [latex_enabled=yes])

if test "x$latex_enabled" = "xyes"; then
  AC_MSG_RESULT([yes])

  AC_PROG_RUBBER()

  AC_AUTOCONF_MACRO_ARCHIVE()

  ACLTX_CLASS_BEAMER()
  ACLTX_PACKAGE_BABEL([beamer], [english])
  ACLTX_PACKAGE_INPUTENC([beamer])
  ACLTX_PACKAGE_ETEX([beamer])
else
  AC_MSG_RESULT([no])
fi

AM_CONDITIONAL([LATEX_ENABLED], [test $latex_enabled = yes])

])
