const connection = require("./db.js");
const sql = connection;

const Fashionevent = function(fashionEvent) {
  this.eventId = fashionEvent.eventId;
  this.eventName = fashionEvent.eventName;
  this.eventInfo = fashionEvent.eventInfo;
};

Fashionevent.create = (newEvent, result) => {
  sql.query("INSERT INTO fashionevents SET ?", newEvent, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(err, null);
      return;
    }

    console.log("created fashionEvent: ", { eventId: res.insertId, ...newEvent });
    result(null, { eventId: res.insertId, ...newEvent });
  });
};

Fashionevent.findById = (eventId, result) => {
  sql.query(`SELECT * FROM fashionevents WHERE eventId = ${eventId}`, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(err, null);
      return;
    }

    if (res.length) {
      console.log("found fashionevent: ", res[0]);
      result(null, res[0]);
      return;
    }

    // not found Customer with the id
    result({ kind: "not_found" }, null);
  });
};

Fashionevent.getAll = result => {
  sql.query("SELECT * FROM fashionevents", (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    console.log("fashionevents: ", res);
    result(null, res);
  });
};

Fashionevent.updateById = (id, fashionevent, result) => {
  sql.query(
    "UPDATE fashionevents SET eventName = ?,eventInfo = ? WHERE eventId = ?",
    [fashionevent.eventName, fashionevent.eventInfo, fashionevent.eventId],
    (err, res) => {
      if (err) {
        console.log("error: ", err);
        result(null, err);
        return;
      }

      if (res.affectedRows == 0) {
        // not found Event with the id
        result({ kind: "not_found" }, null);
        return;
      }

      console.log("updated fashionevent: ", { id: id, ...fashionevent });
      result(null, { id: id, ...fashionevent });
    }
  );
};

Fashionevent.remove = (id, result) => {
  sql.query("DELETE FROM fashionevents WHERE eventId = ?", id, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    if (res.affectedRows == 0) {
      // not found Event with the id
      result({ kind: "not_found" }, null);
      return;
    }

    console.log("deleted customer with id: ", id);
    result(null, res);
  });
};

Fashionevent.removeAll = result => {
  sql.query("DELETE FROM fashionevents", (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    console.log(`deleted ${res.affectedRows} fashionevents`);
    result(null, res);
  });
};

module.exports = Fashionevent;