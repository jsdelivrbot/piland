AC_CFLAGS = -Wall -std=C99 -g

lib_LTLIBRARIES = libwayland-egl.la

libwayland_egl_la_SOURCES = \
	wayland-egl-priv.h \
	wayland-egl.c

libwayland_egl_la_LDFLAGS = -shared

pkgconfigdir = $(libdir)/pkgconfig

pkgconfig_DATA = wayland-egl.pc

EXTRA_DIST = wayland-egl.pc.in

