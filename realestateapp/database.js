var mysql = require('mysql');
var conn = mysql.createConnection({
  host: 'localhost',          // Replace with your host name
  user: 'root',               // Replace with your database username
  password: '',               // Replace with your database password
<<<<<<< HEAD
  database: 'realestateapp'   // Replace with your database Name
=======
  database: 'searchresults'   // Replace with your database Name
>>>>>>> 6052a71c6933978fd2aaa5f95ca472de9b0d2a8d
}); 
conn.connect(function(err) {
  if (err) throw err;
  console.log('Database connected.');
});
module.exports = conn;