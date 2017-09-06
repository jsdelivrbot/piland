#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([wayland-egl], [0.1])
AM_INIT_AUTOMAKE([1.11i])
AC_CONFIG_SRCDIR([src/wayland-egl-priv.h])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_MACRO_DIR([m4])

# Checks for programs.
AC_PROG_CC

# Checks for libraries.

# Checks for header files.
AC_CHECK_HEADERS([stdlib.h])

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.
AC_FUNC_MALLOC

LT_INIT

PKG_CHECK_MODULES(WAYLAND_EGL, [egl wayland-client ])

AC_OUTPUT([
	Makefile
	src/Makefile
	src/wayland-egl.pc
])

