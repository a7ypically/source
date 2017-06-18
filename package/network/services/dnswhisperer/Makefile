#
# Copyright (C) 2014-2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=dnswhisperer
PKG_VERSION:=0.3
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_PROTO:=git
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_URL:=https://github.com/a7ypically/dnswhisperer.git
PKG_SOURCE_VERSION:=3d301555602ba53fb54dca7128be7bc9d4aac62c

PKG_MAINTAINER:=Johannes Morgenroth <jm@m-network.de>
PKG_LICENSE:=Apache-2.0

include $(INCLUDE_DIR)/package.mk

define Package/dnswhisperer
  SECTION:=net
  CATEGORY:=Network
  #DEPENDS:=+libevent2
  TITLE:=Filter dns queries
endef

define Package/dnswhisperer/description
 Filter dns queries
endef

define Package/dnswhisperer/install
	$(INSTALL_DIR) $(1)/usr/sbin $(1)/etc/init.d ${1}/etc/config
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/dnswhisperer $(1)/usr/sbin/
	$(INSTALL_BIN) ./files/dnswhisperer.init $(1)/etc/init.d/dnswhisperer
	$(INSTALL_CONF) ./files/dnswhisperer.config $(1)/etc/config/dnswhisperer
endef

$(eval $(call BuildPackage,dnswhisperer))
