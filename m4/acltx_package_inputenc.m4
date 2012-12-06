
dnl acltx_package_inputenc.m4: check for inputenc package.

dnl This macro checks for the usability of the inputenc package in the given
dnl latex document class. If not possible, an error message is printed. If the
dnl document class is missing, the default article is used.
AC_DEFUN([ACLTX_PACKAGE_INPUTENC],
[

ACLTX_PACKAGE_OPT(inputenc,
                  m4_ifval([$1], [$1], [article]),
                  have_inputenc, utf8,
                  [],
                  AC_MSG_ERROR([Unable to find the inputenc package]))

])
