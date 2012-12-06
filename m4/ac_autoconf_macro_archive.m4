
dnl ac_autoconf_macro_archive.m4: definition of the AC_AUTOCONF_MACRO_ARCHIVE
dnl                               macro.

dnl This file define a macro that enable the configure parameter
dnl --with-autoconf-macro-archive. It can be used to supply the path to the
dnl directory where the autoconf macro archive is stored. If not selected, the
dnl default value $HOME/.local/share/aclocal/ac-archive is used. Once the right
dnl path has been selected, the make $(AUTOCONF_MACRO_ARCHIVE_DIR) variable is
dnl set to it.
AC_DEFUN([AC_AUTOCONF_MACRO_ARCHIVE],
[

dnl Provide the configure switch, with a default value.
AC_ARG_WITH([autoconf-macro-archive],
            AS_HELP_STRING([--with-autoconf-macro-archive=DIR],
                           [path to the autoconf macro archive directory]),
            [
            if test "$withval" = "no"; then
              have_autoconf_macro_archive="no"
            elif test "$withval" = "yes"; then
              have_autoconf_macro_archive="yes"
              AUTOCONF_MACRO_ARCHIVE_DIR="$HOME/.local/share/aclocal/ac-archive"
            else
              have_autoconf_macro_archive="yes"
              AUTOCONF_MACRO_ARCHIVE_DIR="$withval"
            fi
            ],
            [
            have_autoconf_macro_archive="yes"
            AUTOCONF_MACRO_ARCHIVE_DIR="$HOME/.local/share/aclocal/ac-archive"
            ])

AC_MSG_CHECKING([for autoconf macro archive directory])
if test "$have_autoconf_macro_archive" = "yes"; then
  AC_MSG_RESULT([$AUTOCONF_MACRO_ARCHIVE_DIR])
  AC_SUBST(AUTOCONF_MACRO_ARCHIVE_DIR)
else
  AC_MSG_RESULT([no])
  AC_MSG_ERROR([path to the autoconf macro archive is mandatory])
fi

])
