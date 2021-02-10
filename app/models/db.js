
const mysql = require('mysql2');
 
// create the connection to database
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: "admin123",
  database: 'fashionDB'
});
module.exports = connection;

