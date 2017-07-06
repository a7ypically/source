#
# Copyright (C) 2009 OpenWrt.org
#

SUBTARGET:=mt7628
BOARDNAME:=MT7628 based boards
FEATURES+=usb
CPU_TYPE:=24kc

DEFAULT_PACKAGES += mt7628-binary

define Target/Description
	Build firmware images for Ralink MT7628 based boards.
endef

