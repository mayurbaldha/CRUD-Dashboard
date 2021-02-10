const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const app = express();
var corsOptions = {
  origin: "http://localhost:4200"
};
// parse requests of content-type: application/json
app.use(bodyParser.json());
app.use(cors(corsOptions));
// parse requests of content-type: application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

// simple route
app.get("/", (req, res) => {
  res.json({ message: "Welcome to Fashion API application." });
});
require("./app/routes/fashionEvent.routes.js")(app);
require('./app/routes/auth.routes')(app);
require('./app/routes/user.routes')(app);
// set port, listen for requests
app.listen(3000, () => {
  console.log("Server is running on port 3000.");
});