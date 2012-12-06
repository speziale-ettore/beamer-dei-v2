
dnl acltx_class_beamer.m4: check for beamer class.

dnl This macro checks for the beamer latex class. If not found the given action
dnl is executed; if none given, an error message is printed.
AC_DEFUN([ACLTX_CLASS_BEAMER],
[

ACLTX_CLASS(beamer, have_beamer, [],
  [m4_ifval([$1], [$1], AC_MSG_ERROR([Unable to find the beamer class]))])

])
