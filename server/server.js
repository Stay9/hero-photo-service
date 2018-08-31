const express = require('express');

const app = require('./app.js');

const PORT = 8000;

app.listen(PORT, (err) => {
  if (err) {
    console.log('Error connecting to the port :', err);
  } else {
    console.log(`Hero Photo server is listening on port ${PORT} in`, process.env.NODE_ENV, 'mode');
  }
});
