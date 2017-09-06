################################################################################
#
# wayland-egl
#
################################################################################

WAYLAND_EGL_VERSION = 0.1
WAYLAND_EGL_SITE = http://wayland.freedesktop.org/releases
WAYLAND_EGL_SOURCE = wayland-$(WAYLAND_VERSION).tar.xz
WAYLAND_LICENSE = MIT
WAYLAND_EGL_LICENSE_FILES = COPYING
WAYLAND_EGL_INSTALL_STAGING = YES
WAYLAND_EGL_INSTALL_TARGET = YES

WAYLAND_EGL_OVERRIDE_SRCDIR = ../wayland-egl

$(eval $(autotools-package))
$(eval $(host-autotools-package))
