module.exports = (function(settings) {
  settings = {
    "src_folders" : ["tests"],
    "selenium" : {
      "start_process" : true,
      "server_path" : "./bin/selenium-server-standalone-3.3.1.jar",
      "log_path" : "",
      "port" : 4444,
      "cli_args" : {
        "webdriver.gecko.driver" : "./bin/geckodriver",
        "webdriver.chrome.driver" : "./bin/chromedriver"
      }
    },

    "test_settings" : {
      "default" : {
        "launch_url" : "http://localhost",
        "selenium_port"  : 4444,
        "selenium_host"  : "localhost",
        "desiredCapabilities": {
          "browserName": "firefox",
        }
      },

      "chrome" : {
        "desiredCapabilities": {
          "browserName": "chrome"
        }
      }
    }
  };
  return settings;

})(require('./nightwatch.json'));
