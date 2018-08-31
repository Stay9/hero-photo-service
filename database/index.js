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
  user: 'other_user',
  host: '54.193.78.59',
  database: 'sdc',
  password: 'other_user',
})

// const connection = new Pool({
//   host: 'localhost',
//   user: '',
//   database: 'sdc',
//   password: '',
// })

module.exports = connection;