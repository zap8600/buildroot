################################################################################
#
# Check buildroot dependencies and bail out if the user's
# system is judged to be lacking....
#
################################################################################

# suitable-host-pkg: calls check-host-$(1).sh shell script. Parameter (2)
# can be the candidate to be checked. If not present, the check-host-$(1).sh
# script should use 'which' to find a candidate. The script should return
# the path to the suitable host tool, or nothing if no suitable tool was found.
define suitable-host-package
$(shell support/dependencies/check-host-$(1).sh $(2))
endef

# Make sure that if the tar dependency is present it is always the first one in
# the DEPENDENCIES_HOST_PREREQ, otherwise sources for other dependencies will
# fail to unpack.
-include support/dependencies/check-host-tar.mk
-include $(sort $(filter-out %/check-host-tar.mk,$(wildcard support/dependencies/check-host-*.mk)))

ifeq ($(BR2_CCACHE),y)
DEPENDENCIES_HOST_PREREQ += host-ccache
endif

core-dependencies:
	@HOSTCC="$(firstword $(HOSTCC))" MAKE="$(MAKE)" \
		DL_TOOLS="$(sort $(DL_TOOLS_DEPENDENCIES))" \
		$(TOPDIR)/support/dependencies/dependencies.sh

dependencies: HOSTCC=$(HOSTCC_NOCCACHE)
dependencies: HOSTCXX=$(HOSTCXX_NOCCACHE)
dependencies: core-dependencies $(DEPENDENCIES_HOST_PREREQ)

################################################################################
#
# Toplevel Makefile options
#
################################################################################
.PHONY: dependencies core-dependencies
