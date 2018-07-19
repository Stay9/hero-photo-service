const express = require('express');

const app = express();

// making a middleware to tarck all incoming requests
app.use((req, res, next) => {
  console.log('Request method: ', req.method);
  next();
});


// spotholder for middleware of static assets


app.listen(3000, () => {
  console.log('Hero Photo server is listening on port 3000');
});
