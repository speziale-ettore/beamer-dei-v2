
dnl acltx_package_helvet.m4: check for helvet package.

dnl This macro checks for the usability of the helvet package in the given
dnl latex document class. If not possible, an error message is printed. If the
dnl document class is missing, the default article is used.
AC_DEFUN([ACLTX_PACKAGE_HELVET],
[

ACLTX_PACKAGE(helvet,
              m4_ifval([$1], [$1], [article]),
              have_helvet,
              [],
              AC_MSG_ERROR([Unable to find the helvet package]))

])
