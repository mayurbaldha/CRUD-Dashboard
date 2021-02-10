const FashionEvent = require("../models/fashionEvents.model.js");

// Create and Save a new fashionevent
exports.create = (req, res) => {
   // Validate request
   if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  // Create a fashionEvent
  const fashionEvent = new FashionEvent({
    eventName: req.body.eventName,
    eventInfo: req.body.eventInfo
  });

  // Save fashionEvent in the database
  FashionEvent.create(fashionEvent, (err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the fashionEvent."
      });
    else res.send(data);
  });
};

// Retrieve all Fashionevent from the database.
exports.findAll = (req, res) => {
    FashionEvent.getAll((err, data) => {
        if (err)
          res.status(500).send({
            message:
              err.message || "Some error occurred while retrieving customers."
          });
        else res.send(data);
      });
      
};

// Find a single FashionEvent with a eventId
exports.findOne = (req, res) => {
    FashionEvent.findById(req.params.eventId, (err, data) => {
        if (err) {
          if (err.kind === "not_found") {
            res.status(404).send({
              message: `Not found Fashionevent with id ${req.params.eventId}.`
            });
          } else {
            res.status(500).send({
              message: "Error retrieving Fashionevent with id " + req.params.eventId
            });
          }
        } else res.send(data);
      });
};

// Update a FashionEvent identified by the eventId in the request
exports.update = (req, res) => {
   // Validate Request
   if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  FashionEvent.updateById(
    req.params.eventId,
    new FashionEvent(req.body),
    (err, data) => {
      if (err) {
        if (err.kind === "not_found") {
          res.status(404).send({
            message: `Not found FashionEvent with id ${req.params.eventId}.`
          });
        } else {
          res.status(500).send({
            message: "Error updating FashionEvent with id " + req.params.eventId
          });
        }
      } else res.send(data);
    }
  );
};

// Delete a FashionEvent with the specified eventId in the request
exports.delete = (req, res) => {
    FashionEvent.remove(req.params.eventId, (err, data) => {
        if (err) {
          if (err.kind === "not_found") {
            res.status(404).send({
              message: `Not found FashionEvent with id ${req.params.eventId}.`
            });
          } else {
            res.status(500).send({
              message: "Could not delete FashionEvent with id " + req.params.eventId
            });
          }
        } else res.send({ message: `FashionEvent was deleted successfully!` });
      });
};

// Delete all Fashionevent from the database.
exports.deleteAll = (req, res) => {
    FashionEvent.removeAll((err, data) => {
        if (err)
          res.status(500).send({
            message:
              err.message || "Some error occurred while removing all Fashionevent."
          });
        else res.send({ message: `All Fashionevent were deleted successfully!` });
      });
};