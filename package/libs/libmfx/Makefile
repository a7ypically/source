
# Copyright (C) 2008-2015 OpenWrt.org
# Copyright (C) 2016 Luiz Angelo Daros de Luca
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=libmfx
PKG_VERSION:=1-20161201
PKG_RELEASE:=1

PKG_REV:=v$(PKG_VERSION)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/lu-zero/mfx_dispatch.git
PKG_SOURCE_VERSION:=3f7a978654558b216a033d39108e0188d4fb4e73
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)

PKG_FIXUP:=autoreconf

PKG_MAINTAINER:=None

PKG_LICENSE_FILES:=LICENSE

PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libmfx
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=libmfx
  URL:=https://www.freedesktop.org/software/vaapi/releases/libva/
  DEPENDS:=+libva +libstdcpp
  ABI_VERSION:=$(PKG_VERSION)
endef

define Package/libmfx/description
   libmfx is an hw accel for video enc/dec
endef

CONFIGURE_ARGS += \
        --enable-shared

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/mfx/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/include/mfx/* $(1)/usr/include/mfx/
	$(INSTALL_DIR) $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/* $(1)/usr/lib/pkgconfig/
endef

define Package/libmfx/install
	$(INSTALL_DIR) $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so.* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libmfx))
