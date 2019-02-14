const mysql = require('promise-mysql');

module.exports = mysql.createPool({
  user: 'root',
  password: '',
  database: 'test',
});
