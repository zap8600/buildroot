################################################################################
#
# XRP
#
################################################################################

XRP_VERSION = ec469a53d535c510b8a4f2c22b737d44a8797158
XRP_SITE = $(call github,foss-xtensa,xrp,$(XRP_VERSION))
XRP_SOURCE = xrp-$(XRP_VERSION).tar.gz
BR_NO_CHECK_HASH_FOR += $(XRP_SOURCE)
XRP_LICENSE = MIT, GPL

ifneq ($(BR2_PACKAGE_XRP_USERSPACE),y)
XRP_CONF_OPTS += --disable-native
endif

ifeq ($(BR2_PACKAGE_XRP_EXAMPLE),y)
XRP_CONF_OPTS += --enable-example
endif

HOST_XRP_CONF_OPTS = --disable-native

ifeq ($(BR2_PACKAGE_HOST_XRP),y)
HOST_XRP_CONF_OPTS += --enable-sim
HOST_XRP_DEPENDENCIES += host-dtc
endif

ifeq ($(BR2_PACKAGE_HOST_XRP_EXAMPLE),y)
HOST_XRP_CONF_OPTS += --enable-example
endif

XRP_MODULE_SUBDIRS = xrp-kernel

$(eval $(kernel-module))
$(eval $(autotools-package))
$(eval $(host-autotools-package))

include $(sort $(wildcard package/xrp/*/*.mk))
