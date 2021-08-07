##########################################################################
# documentation of the Makefile's targets
##########################################################################

# main target
all:
	@echo "This Makefile is for the maintenance of the repository, not for building."
	@echo "Supported targets:"
	@echo "* integration_check - check library integrations"
	@echo "* integration_update - generate integration files"

##########################################################################
# Integration
##########################################################################

# check library integrations
integration_check:
	@cmake -P ./integration_test/test_integration.cmake

# generate integration files
integration_update:
	@cmake -P ./support/generate_integration.cmake
