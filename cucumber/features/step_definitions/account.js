'use strict'
var { driver } = require('../../capabilities/android.caps')
var Login = require('../android/page_objects/account')

const asserters = require('assert');
const { Given, When, Then } = require('cucumber');
const login = new Login();

Given('I click on Account Button', async () => {
  await driver.elementByXPath(login.account).click();
});

When('I click on Login Button', async () => {
  let element = await driver.elementById(login.loginButton);
  await element.click();
});

When('I click on close cookies button', { timeout: 2 * 5000 }, async () => {
  driver.setImplicitWaitTimeout(10000)
  await driver.elementByXPath(login.closeCookies).isDisplayed();
  await driver.elementByXPath(login.closeCookies).click();
});

When('I click on Login field button', async () => {
  await driver.elementByXPath(login.loginField).click();
});

When('I enter username', async () => {
  await driver.elementByXPath(login.usernameField).isDisplayed();
  await driver.elementByXPath(login.usernameField).type("daniyalz");
});

When('I enter password', async () => {
  await driver.elementByXPath(login.passwordField).type("12345");
});

When('I click on submit button', async () => {
  await driver.elementByXPath(login.submit).click();
});

Then('I should be logged in successfully', async () => {
  await driver.elementByXPath(login.home).click()
});