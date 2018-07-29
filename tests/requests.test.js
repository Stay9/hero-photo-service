const request = require('supertest');
const app = require('../server/app.js');


describe('Test the root path', () => {
  test('It should response the GET method', () => request(app).get('/').then((response) => {
    expect(response.statusCode).toBe(200);
  }));
});

describe('Request to get listings photos (getListingPhotos)', () => {
  test('Output array should have 15 elements', () => request(app).get('/listings/4/photos').then((response) => {
    expect(JSON.parse(response.text).length).toBe(15);
  }));
});
