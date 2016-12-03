
# Copyright (C) 2008-2015 OpenWrt.org
# Copyright (C) 2016 Luiz Angelo Daros de Luca
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=libva
PKG_VERSION:=1.7.3
PKG_RELEASE:=1

PKG_REV:=v$(PKG_VERSION)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=https://www.freedesktop.org/software/vaapi/releases/libva/
PKG_SOURCE_VERSION:=$(PKG_REV)
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)

PKG_MAINTAINER:=None

PKG_LICENSE_FILES:=LICENSE

PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libva
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=libva
  URL:=https://www.freedesktop.org/software/vaapi/releases/libva/
  DEPENDS:=+libdrm
  ABI_VERSION:=$(PKG_VERSION)
endef

define Package/libva/description
   libva is an hw accel for video enc/dec
endef

#CONFIGURE_ARGS += \
#		--prefix=$(CONFIGURE_PREFIX) \
#		--libdir=/usr/lib \

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/va/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/include/va/* $(1)/usr/include/va/
	$(INSTALL_DIR) $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/* $(1)/usr/lib/pkgconfig/
endef

define Package/libva/install
	$(INSTALL_DIR) $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so.* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libva))
