
dnl acltx_package_babel.m4: check for babel package.

dnl This macro checks for the usability of the babel package in the given
dnl latex document class. If not possible, an error message is printed. If the
dnl document class is missing, the default article is used. The default babel
dnl language is english.
AC_DEFUN([ACLTX_PACKAGE_BABEL],
[

ACLTX_PACKAGE_OPT(babel,
                  m4_ifval([$1], [$1], [article]),
                  have_babel,
                  m4_ifval([$2], [$2], [english]),
                  [],
                  AC_MSG_ERROR([Unable to find the babel package]))

])
