SELENIUM_VERSION := 3.3.1
SELENIUM_BINARY_URL := 'http://selenium-release.storage.googleapis.com/$(shell echo $(SELENIUM_VERSION)| cut -d '.' -f 1,2)/selenium-server-standalone-$(SELENIUM_VERSION).jar'

.PHONY: setup
setup:
	curl $(SELENIUM_BINARY_URL) \
		-o lib/selenium-server-standalone-$(SELENIUM_VERSION).jar
