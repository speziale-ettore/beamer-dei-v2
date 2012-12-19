
dnl acltx_package_etex.m4: check for etex package.

dnl This macro checks for the usability of the etex package in the given
dnl latex document class. If not possible, an error message is printed. If the
dnl document class is missing, the default article is used.
AC_DEFUN([ACLTX_PACKAGE_ETEX],
[

ACLTX_PACKAGE(etex,
              m4_ifval([$1], [$1], [article]),
              have_etex,
              [],
              AC_MSG_ERROR([Unable to find the etex package]))

])
