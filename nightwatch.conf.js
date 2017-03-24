module.exports = (function(settings) {
  // if (process.env.__NIGHTWATCH_ENV_KEY !== 'chrome_1') {
  //   settings.output_folder = false;
  //   settings.output = false;
  // }
  settings = {
    "src_folders" : ["tests"],
    "output_folder" : "reports",
    // "custom_commands_path" : "",
    // "custom_assertions_path" : "",
    // "page_objects_path" : "",
    // "globals_path" : "",

    "selenium" : {
      "start_process" : true,
      "server_path" : "./bin/selenium-server-standalone-3.3.1.jar",
      "log_path" : "",
      "port" : 4444,
      "cli_args" : {
        "webdriver.gecko.driver" : "./bin/geckodriver",
        "webdriver.chrome.driver" : "/Users/yoshiki_aoki/work/src/github.o-in.dwango.co.jp/aoki/hello-nightwatch/bin/chromedriver"//,
        // "webdriver.edge.driver" : ""
      }
    },

    "test_settings" : {
      "default" : {
        "launch_url" : "http://localhost",
        "selenium_port"  : 4444,
        "selenium_host"  : "localhost",
        // "silent": true,
        // "screenshots" : {
        //   "enabled" : false,
        //   "path" : ""
        // },
        "desiredCapabilities": {
          "browserName": "firefox",
          "marionette": false,
          "javascriptEnabled": true
        }
      },

      "chrome" : {
        "desiredCapabilities": {
          "browserName": "chrome"
        }
      },
      //
      // "edge" : {
      //   "desiredCapabilities": {
      //     "browserName": "MicrosoftEdge"
      //   }
      // }
    }
  };
  return settings;

})(require('./nightwatch.json'));
