const mysql = require('mysql');
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'samm_user',
  password: 'samm_user_Passw0rd!',
  database: 'samm'
});
connection.connect((err) => {
    if(err){
      console.log('Error connecting to Db');
      return;
    }
    console.log('Connection established');
  });
module.exports = connection;
