const wd = require('wd');

const PORT = 4723;
const PATH = '/wd/hub'

const config = {
  platformName: 'Android',
  app: __dirname + '/../../app/moviedb.apk',
  automationName: 'UIAutomator2',
  "appium:options": {
    "platformVersion": "14",
    "deviceName": "emulator-5554",
    "automationName": "UIAutomator2"
  }
};

const driver = wd.promiseChainRemote('127.0.0.1', PORT, PATH);

module.exports = {
  driver, config
};