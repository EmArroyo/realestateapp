var mysql = require('mysql');
var conn = mysql.createConnection({
  host: 'localhost',          // Replace with your host name
  user: 'root',               // Replace with your database username
  password: '',               // Replace with your database password
  database: 'searchresults'   // Replace with your database Name
}); 
conn.connect(function(err) {
  if (err) throw err;
  console.log('Database connected.');
});
module.exports = conn;