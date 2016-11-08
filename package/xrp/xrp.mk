################################################################################
#
# XRP
#
################################################################################

XRP_VERSION = snapshot
XRP_SITE = $(BR2_PACKAGE_XRP_SOURCE_TREE)
XRP_SITE_METHOD = local
XRP_SOURCE = xrp
XRP_LICENSE = ?

XRP_CONFIG-$(BR2_PACKAGE_XRP_XTENSA_NEED_SYSTEM) = XTENSA_SYSTEM=$(BR2_PACKAGE_XRP_XTENSA_SYSTEM)

define XRP_BUILD_CMDS
  $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/xrp-linux-native
  for CORE in 0 1 ; do \
    $(MAKE) \
	$(XRP_CONFIG-y) \
	PATH=$(BR2_PACKAGE_XRP_XTENSA_TOOLS):$$PATH \
	-C $(@D)/xrp-dsp \
	DSP_CORE=visionp6cnn_ao \
	LSP_DIR=MW-MP/P6_$$CORE/xtensa-elf/lib && \
    mv $(@D)/xrp-dsp/xrp-dsp{,$$CORE} ; \
  done
endef

define XRP_INSTALL_TARGET_CMDS
  $(INSTALL) -D -m 0755 $(@D)/xrp-linux-native/linux-native-test $(TARGET_DIR)/root
  $(INSTALL) -D -m 0644 $(@D)/xrp-dsp/xrp-dsp0 $(TARGET_DIR)/lib/firmware/xrp0.elf
  $(INSTALL) -D -m 0644 $(@D)/xrp-dsp/xrp-dsp1 $(TARGET_DIR)/lib/firmware/xrp1.elf
endef

XRP_MODULE_SUBDIRS = xrp-kernel

$(eval $(kernel-module))
$(eval $(generic-package))
