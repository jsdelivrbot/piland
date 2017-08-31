################################################################################
#
# lua-love
#
################################################################################

LUA_LOVE_SITE = $(BR2_GNU_MIRROR)/XXX
LUA_LOVE_VERSION = 0.10.2
LUA_LOVE_LICENSE = ISC
LUA_LOVE_DEPENDENCIES = luajit sdl2 openal libmodplug libvorbis libtheora physfs mpg123


LUA_LOVE_OVERRIDE_SRCDIR = ../love-0.10.2

$(eval $(autotools-package))
