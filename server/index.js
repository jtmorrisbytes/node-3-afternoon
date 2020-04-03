require("dotenv").config();
const express = require("express");
const massive = require("massive");

const app = express();
app.use(require("morgan")("dev"));
app.use(express.json());

const productController = require("./controllers/product");

app.get("/api/products", productController.getAll);
app.get("/api/products/:id", productController.getOne);
app.put("/api/products/:id", productController.update);
app.post("/api/products", productController.create);
app.delete("/api/products/:id", productController.delete);
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
