################################################################################
#
# XRP
#
################################################################################

XRP_VERSION = xrp-20170117
XRP_SITE = $(call github,foss-xtensa,xrp,$(XRP_VERSION))
XRP_SOURCE = $(XRP_VERSION).tar.gz
XRP_LICENSE = ?

XRP_CONFIG-$(BR2_PACKAGE_XRP_XTENSA_NEED_SYSTEM) = XTENSA_SYSTEM=$(BR2_PACKAGE_XRP_XTENSA_SYSTEM)

define XRP_USERSPACE_BUILD-y
  $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/xrp-linux-native
endef

define XRP_FIRMWARE_BUILD-y
  for (( CORE=0; CORE < $(BR2_PACKAGE_XRP_DSP_NUM_CORES); ++CORE )) ; do \
    $(MAKE) \
	$(XRP_CONFIG-y) \
	PATH=$(BR2_PACKAGE_XRP_XTENSA_TOOLS):$$PATH \
	-C $(@D)/xrp-dsp \
	DSP_CORE=$(BR2_PACKAGE_XRP_DSP_CORE_NAME) \
	LSP=`printf $(BR2_PACKAGE_XRP_DSP_LSP) $${CORE}` && \
    mv $(@D)/xrp-dsp/xrp-dsp{,$$CORE} ; \
  done
endef

define XRP_BUILD_CMDS
  $(XRP_USERSPACE_BUILD-$(BR2_PACKAGE_XRP_USERSPACE))
  $(XRP_FIRMWARE_BUILD-$(BR2_PACKAGE_XRP_FIRMWARE))
endef

define XRP_USERSPACE_INSTALL-y
  $(INSTALL) -D -m 0755 $(@D)/xrp-linux-native/linux-native-test $(TARGET_DIR)/root
endef

define XRP_FIRMWARE_INSTALL-y
  for (( CORE=0 ; CORE < $(BR2_PACKAGE_XRP_DSP_NUM_CORES); ++CORE )) ; do \
    $(INSTALL) -D -m 0644 $(@D)/xrp-dsp/xrp-dsp$${CORE} $(TARGET_DIR)/lib/firmware/xrp$${CORE}.elf ; \
  done
endef

define XRP_INSTALL_TARGET_CMDS
  $(XRP_USERSPACE_INSTALL-$(BR2_PACKAGE_XRP_USERSPACE))
  $(XRP_FIRMWARE_INSTALL-$(BR2_PACKAGE_XRP_FIRMWARE))
endef

XRP_MODULE_SUBDIRS = xrp-kernel

$(eval $(kernel-module))
$(eval $(generic-package))
