
.PHONY: setup
setup:
	mkdir -p bin
	$(MAKE) bin/selenium-server-standalone-$(SELENIUM_VERSION).jar
	$(MAKE) bin/geckodriver
	$(MAKE) bin/chromedriver

.PHONY: run
run:
	java -jar bin/$(SELENIUM_JAR_FILE)


SELENIUM_VERSION		:= 3.3.1
SELENIUM_JAR_FILE		:= selenium-server-standalone-$(SELENIUM_VERSION).jar
SELENIUM_BINARY_URL := 'http://selenium-release.storage.googleapis.com/$(shell echo $(SELENIUM_VERSION)| cut -d '.' -f 1,2)/$(SELENIUM_JAR_FILE)'
bin/selenium-server-standalone-$(SELENIUM_VERSION).jar:
	curl $(SELENIUM_BINARY_URL) \
		-o bin/selenium-server-standalone-$(SELENIUM_VERSION).jar


GECKO_DRIVER_VERSION	:= 0.15.0
GECKO_DRIVER_URL			:= 'https://github.com/mozilla/geckodriver/releases/download/v$(GECKO_DRIVER_VERSION)/geckodriver-v$(GECKO_DRIVER_VERSION)-macos.tar.gz'
bin/geckodriver:
	curl -L $(GECKO_DRIVER_URL) \
		-o bin/geckodriver-v$(GECKO_DRIVER_VERSION)-macos.tar.gz
	tar xf bin/geckodriver-v$(GECKO_DRIVER_VERSION)-macos.tar.gz -C lib
	rm bin/geckodriver-v$(GECKO_DRIVER_VERSION)-macos.tar.gz

CHROME_DRIVER_VERSION	:= 2.28
CHROME_DRIVER_URL			:= 'https://chromedriver.storage.googleapis.com/$(CHROME_DRIVER_VERSION)/chromedriver_mac64.zip'
bin/chromedriver:
	curl -L $(CHROME_DRIVER_URL) -o bin/chromedriver_mac64.zip
	unzip bin/chromedriver_mac64.zip -d bin
	rm bin/chromedriver_mac64.zip
