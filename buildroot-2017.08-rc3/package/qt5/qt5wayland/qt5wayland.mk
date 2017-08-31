################################################################################
#
# qt5wayland
#
################################################################################

QT5WAYLAND_VERSION = $(QT5_VERSION)
QT5WAYLAND_SITE = $(QT5_SITE)
QT5WAYLAND_SOURCE = qtwayland-opensource-src-$(QT5WAYLAND_VERSION).tar.xz
QT5WAYLAND_DEPENDENCIES = qt5base qt5declarative wayland wayland-protocols libxkbcommon
QT5WAYLAND_INSTALL_STAGING = YES

QT5WAYLAND_LICENSE = GPL-3.0 or LGPL-2.1 with exception or LGPL-3.0, GFDL-1.3 (docs)
QT5WAYLAND_LICENSE_FILES = LICENSE.GPLv3 LICENSE.LGPLv21 LGPL_EXCEPTION.txt LICENSE.LGPLv3 LICENSE.FDL

define QT5WAYLAND_CONFIGURE_CMDS
	(cd $(@D); $(TARGET_MAKE_ENV) $(HOST_DIR)/usr/bin/qmake)
endef

define QT5WAYLAND_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D)
endef

define QT5WAYLAND_INSTALL_STAGING_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D) install
	$(QT5_LA_PRL_FILES_FIXUP)
endef

ifeq ($(BR2_STATIC_LIBS),)
define QT5WAYLAND_INSTALL_TARGET_CMDS
	cp -dpf $(STAGING_DIR)/usr/lib/libQt5Wayland*.so.* $(TARGET_DIR)/usr/lib

	if [ -d $(STAGING_DIR)/usr/lib/qt/plugins/platforms/ ] ; then \
		mkdir -p $(TARGET_DIR)/usr/lib/qt/plugins/platforms ; \
		cp -dpf $(STAGING_DIR)/usr/lib/qt/plugins/platforms/libqwayland*.so $(TARGET_DIR)/usr/lib/qt/plugins/platforms ; \
	fi

	if [ -d $(STAGING_DIR)/usr/lib/qt/examples/wayland/ ] ; then \
		mkdir -p $(TARGET_DIR)/usr/lib/qt/examples/wayland ; \
		cp -dpfr $(STAGING_DIR)/usr/lib/qt/examples/wayland/* $(TARGET_DIR)/usr/lib/qt/examples/wayland ; \
	fi


	cp -dpfr $(STAGING_DIR)/usr/qml/QtWayland $(TARGET_DIR)/usr/qml/
endef
endif

$(eval $(generic-package))
