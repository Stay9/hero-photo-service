var mysql = require('mysql');

var connection = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: '',
	database: 'hero'

});

connection.connect((err) => {
	if (err) {
		console.log('Error connecting to mysql ', err);
	} else {
		console.log('Successful conneciton to mysql');
	}
});


module.exports = connection;