require("dotenv").config();
const express = require("express");
const massive = require("massive");

const app = express();

// since we are performing operations with the database,
// I dont want the server to run until the database is connected

massive(process.env.DATABASE_URL)
  .then(db => {
    app.set("db", db);
    console.log("database connected, starting server");
    app.listen(process.env.SERVER_PORT, process.env.SERVER_HOST, () => {
      console.log(
        `Server listening on http://${process.env.SERVER_HOST}:${process.env.SERVER_PORT}`
      );
    });
  })
  .catch(err => {
    console.log("database failed to connect:", err);
  });
