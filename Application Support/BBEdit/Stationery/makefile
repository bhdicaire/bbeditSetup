###############################################################################
# Makefile for Tasks Boilerplate
#
# Boilerplate for a Makefile for general purpose tasks that includes `help`
# and `list` targets.
#
# Resources:
#   https://en.wikipedia.org/wiki/Make_(software)
#   https://www.digitalocean.com/community/tutorials/how-to-use-makefiles-to-automate-repetitive-tasks-on-an-ubuntu-vps
###############################################################################

###############################################################################
# help
#
# Print usage information. If this rule is first in the Makefile, it will run
# as the default rule when `make` is called with no arguments.
###############################################################################

.PHONY: help
help:
	@echo "Usage:"
	@echo "  make [example|help|list|<target>]"
	@echo
	@echo "example  Print the string 'Hello!'"
	@echo "help     Print help information."
	@echo "list     List all available targets."

###############################################################################
# Rules
#
# Add new rules to this section.
###############################################################################

.PHONY: example
example:
	@echo "Hello!"

###############################################################################
# list
#
# List all available targets in this Makefile.
#
# Source:
#   http://stackoverflow.com/q/4219255
###############################################################################

.PHONY: list
list:
	@$(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null \
		| awk -v RS= -F: '/^# File/,/^# Finished Make data base/ { \
			if ($$1 !~ "^[#.]") { \
				print $$1 \
			} \
		}' \
		| sort \
		| egrep -v -e '^[^[:alnum:]]'