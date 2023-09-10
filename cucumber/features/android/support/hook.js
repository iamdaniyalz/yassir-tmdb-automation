const { BeforeAll, Before, After, AfterAll } = require('cucumber');
const { config, driver } = require('../../../capabilities/android.caps')

BeforeAll({ timeout: 80000 }, async () => {
  await driver.init(config);
});

AfterAll({ timeout: 50000 }, async () => {
  await driver.quit();
});

module.exports = {
  Before, After
};