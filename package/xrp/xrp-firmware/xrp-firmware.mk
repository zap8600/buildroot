################################################################################
#
# XRP firmware
#
################################################################################

XRP_FIRMWARE_VERSION = $(XRP_VERSION)
XRP_FIRMWARE_SITE = $(XRP_SITE)
XRP_FIRMWARE_SOURCE = $(XRP_SOURCE)
XRP_FIRMWARE_LICENSE = MIT

XRP_FIRMWARE_CONFIG-$(BR2_PACKAGE_XRP_FIRMWARE_XTENSA_NEED_SYSTEM) = \
	XTENSA_SYSTEM=$(BR2_PACKAGE_XRP_FIRMWARE_XTENSA_SYSTEM)

XRP_FIRMWARE_CONF_ENV = CC=xt-xcc AR=xt-ar RANLIB=xt-ranlib
HOST_XRP_FIRMWARE_CONF_ENV = $(XRP_FIRMWARE_CONF_ENV)

XRP_FIRMWARE_CONF_OPTS = --enable-dsp
HOST_XRP_FIRMWARE_CONF_OPTS = --enable-dsp --disable-native --enable-sim

ifeq ($(BR2_PACKAGE_XRP_FIRMWARE_EXAMPLE),y)
XRP_FIRMWARE_CONF_OPTS += --enable-example
endif

ifeq ($(BR2_PACKAGE_HOST_XRP_FIRMWARE_EXAMPLE),y)
HOST_XRP_FIRMWARE_CONF_OPTS += --enable-example
endif

define XRP_FIRMWARE_CONFIGURE_CMDS
	(cd $($(PKG)_SRCDIR) && rm -rf config.cache && \
	$($(PKG)_CONF_ENV) \
	CONFIG_SITE=/dev/null \
	./configure \
		--host=xtensa-elf \
		--prefix=/usr \
		--exec-prefix=/usr \
		--sysconfdir=/etc \
		--localstatedir=/var \
		--program-prefix="" \
		--disable-dependency-tracking \
		$(QUIET) $($(PKG)_CONF_OPTS) \
	)
endef

HOST_XRP_FIRMWARE_CONFIGURE_CMDS = $(XRP_FIRMWARE_CONFIGURE_CMDS)

XRP_FIRMWARE_IMAGE_NAME = xrp-dsp-nat
HOST_XRP_FIRMWARE_IMAGE_NAME = xrp-dsp-sim

define XRP_FIRMWARE_BUILD_CMDS
  DSP_COMM_BASES=($(call qstrip,$(BR2_PACKAGE_$(PKG)_DSP_COMM_BASE))) ; \
  for (( CORE=0; CORE < $(BR2_PACKAGE_$(PKG)_DSP_NUM_CORES); ++CORE )) ; do \
    $(MAKE) \
	$($(PKG)_CONFIG-y) \
	PATH=$(BR2_PACKAGE_$(PKG)_XTENSA_TOOLS):$$PATH \
	-C $(@D) \
	DSP_CORE=$(BR2_PACKAGE_$(PKG)_DSP_CORE_NAME) \
	DSP_LSP=`printf $(BR2_PACKAGE_$(PKG)_DSP_LSP) $${CORE}` \
	DSP_COMM_BASE=$${DSP_COMM_BASES[$${CORE}]} && \
    mv $(@D)/xrp-example/$($(PKG)_IMAGE_NAME){,$$CORE} ; \
  done
endef

HOST_XRP_FIRMWARE_BUILD_CMDS = $(XRP_FIRMWARE_BUILD_CMDS)

define XRP_FIRMWARE_INSTALL_TARGET_CMDS
  for (( CORE=0 ; CORE < $(BR2_PACKAGE_$(PKG)_DSP_NUM_CORES); ++CORE )) ; do \
    $(INSTALL) -D -m 0644 $(@D)/xrp-example/$($(PKG)_IMAGE_NAME)$${CORE} $(TARGET_DIR)/lib/firmware/xrp$${CORE}.elf ; \
  done
endef

HOST_XRP_FIRMWARE_INSTALL_TARGET_CMDS = $(XRP_FIRMWARE_INSTALL_TARGET_CMDS)

$(eval $(generic-package))
$(eval $(host-generic-package))
