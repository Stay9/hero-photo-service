// model make queries to the hero database
var connection = require('./index.js');


// populating the users table
var populateUsers = () => {
	for (var i = 1; i <= 100; i++) {
		var userName = "user" + i; 
		var membershipDate = "06/2018";

		var theQuery = `INSERT INTO users (user_name, user_membership_date) VALUES ('${userName}', '${membershipDate}')`;
		connection.query(theQuery, (err, res) => {
			if (err) {
				console.log('Error in populating the users table', err);
			} else {
				console.log('Success in populating the users table', res);
			}
		})

	}

}

// populating the lists table
var populateLists = () => {
	for (var i = 1; i <= 100; i++) {
		var listName = "My favorite list " + i; 
		var theQuery = `INSERT INTO lists (list_name, list_user_id) VALUES ('${listName}', ${i})`;
		connection.query(theQuery, (err, res) => {
			if (err) {
				console.log('Error in populating the lists table ', err);
			} else {
				console.log('Success in populating the lists table ', res);
			}

		});
  		
	}

}



populateUsers();
populateLists();



