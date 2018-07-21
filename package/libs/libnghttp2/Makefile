#
# Copyright (C) 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=nghttp2
PKG_VERSION:=1.32.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=https://github.com/nghttp2/nghttp2/releases/download/v$(PKG_VERSION)
#PKG_MAINTAINER:=
PKG_MD5SUM:=29ca2577225a265d452aa6b52d15c0ea

PKG_LICENSE:=MIT License
PKG_LICENSE_FILES:=COPYING

#PKG_FIXUP:=autoreconf
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

TARGET_CFLAGS+=-std=gnu99 -fPIC -O3 -ffast-math -I.
MAKE_FLAGS+= LD="$(TARGET_CC) -o" 

CONFIGURE_ARGS += \
		--enable-lib-only

define Package/libnghttp2
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=HTTP/2 library
  URL:=https://nghttp2.org
endef

define Package/libnghttp2/description
  HTTP/2 library
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/nghttp2/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/include/nghttp2/* $(1)/usr/include/nghttp2/
	$(INSTALL_DIR) $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/* $(1)/usr/lib/pkgconfig/
endef

define Package/libnghttp2/install
	$(INSTALL_DIR) $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libnghttp2))
