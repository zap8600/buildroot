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

define XRP_INSTALL_TARGET_CMDS
  $(INSTALL) -D -m 0755 $(@D)/xrp-linux-native/linux-native-test $(TARGET_DIR)/root
  for (( CORE=0 ; CORE < $(BR2_PACKAGE_XRP_DSP_NUM_CORES); ++CORE )) ; do \
    $(INSTALL) -D -m 0644 $(@D)/xrp-dsp/xrp-dsp$${CORE} $(TARGET_DIR)/lib/firmware/xrp$${CORE}.elf ; \
  done
endef

XRP_MODULE_SUBDIRS = xrp-kernel

$(eval $(kernel-module))
$(eval $(generic-package))
