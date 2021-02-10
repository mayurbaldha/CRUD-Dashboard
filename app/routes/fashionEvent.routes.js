const { authJwt } = require("../middleware");
// const controller = require("../controllers/user.controller");
const FashionEvent = require("../controllers/fashionEvent.controller.js");
module.exports = function(app) {
  app.use(function(req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });

  // Create a new fashionevent
  app.post("/fashionevents", [authJwt.verifyToken],FashionEvent.create);

  // Retrieve all fashionevents
  app.get("/fashionevents", [authJwt.verifyToken], FashionEvent.findAll);

  // Retrieve a single fashionevent with Id
  app.get("/fashionevents/:eventId",[authJwt.verifyToken], FashionEvent.findOne);

  // Update a fashionevent with Id
  app.put("/fashionevents/:eventId", [authJwt.verifyToken],FashionEvent.update);

  // Delete a fashionevent with Id
  app.delete("/fashionevents/:eventId", [authJwt.verifyToken],FashionEvent.delete);

  // delete a new fashionevent
  app.delete("/fashionevents", [authJwt.verifyToken],FashionEvent.deleteAll);

}
