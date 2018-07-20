const express = require('express');

const app = express();

// making a middleware to tarck all incoming requests
app.use((req, res, next) => {
  console.log('Request method: ', req.method);
  next();
});

// access the static files
app.use(express.static('../client/dist'));

/*app.get('/', (req, res) => {
  res.send(200);
});*/

app.listen(3000, () => {
  console.log('Hero Photo server is listening on port 3000');
});
