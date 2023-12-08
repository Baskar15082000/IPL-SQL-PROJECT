const mysql = require("mysql2");

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "very_strong_password",
  database: "db",
});
function db(query) {
  connection.query(query, (err, res) => {
    if (err) {
      console.error(err);
    } else {
      console.log(res);
    }
  });
  connection.end();
}
module.exports = { connection, db };
