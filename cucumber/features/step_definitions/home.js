'use strict'
var { driver } = require('../../capabilities/android.caps')
var Home = require('../android/page_objects/home')
var MovieDetails = require('../android/page_objects/movieDetails')

const asserters = require('assert');
const { Given, When, Then } = require('cucumber');
const home = new Home();
const details = new MovieDetails();

Given('I am on home screen', async () => {
  await driver.elementById(home.searchButton).isDisplayed();
});

When('I search for movie {string}', async (movieName) => {
  await driver.elementById(home.searchButton).type(movieName);
});

Then('search results should show {string}', { timeout: 3 * 5000 }, async (movieName) => {
  let element = await driver.elementByXPath(home.searchResult);
  await element.isDisplayed();
});

When('I click on the movie {string}', async (movieName) => {
  await driver.elementByXPath(home.searchResult).click();
});

Then('movie details should be visible', async () => {
  await driver.elementById(details.addToFavorites).isDisplayed();
});

When('I click on add to favorites button', async () => {
  await driver.elementById(details.addToFavorites).click();
});

Then('movie should be added to favorites', async () => {
  await driver.elementByXPath(details.addedToFavorite);
});