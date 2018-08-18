// const mysql = require('mysql');

// const connection = mysql.createConnection({
//   host: 'localhost',
//   user: 'root',
//   password: '',
//   database: 'hero',

// });

// connection.connect((err) => {
  // if (err) {
  //   console.log('Error connecting to mysql ', err);
  // } else {
  //   console.log('Successful connection to mysql');
  // }
// });

// connect to psql
const { Pool } = require('pg');

const connection = new Pool({
  user: '',
  host: 'localhost',
  database: 'sdc',
  password: '',
})

module.exports = connection;