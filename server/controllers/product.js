module.exports = {
  getAll: function getAll(req, res) {
    req.app
      .get("db")
      .product.read_products()
      .then(data => {
        res.json(data);
      })
      .catch(err => {
        console.log(err);
        res.status(500).json(err);
      });
  },
  getOne: function getOne(req, res) {
    if (!req.params.id) {
      res.sendStatus(400);
    } else {
      req.app
        .get("db")
        .product.read_product(req.params.id)
        .then(data => {
          if (data.length == 0) {
            res.sendStatus(404);
          } else res.json(data);
        });
    }
  },
  create: function create(req, res) {
    let { name, description, price, image_url } = req.body;
    console.log("create: req.body", req.body);
    req.app
      .get("db")
      .product.create_product(name, description, price, image_url)
      .then(data => {
        console.log("create: returned result from create", data);
        res.send(200);
      })
      .catch(err => {
        console.error(err);
        res.status(500).json(err);
      });
  },
  delete: function update(req, res) {
    if (!req.params.id) {
      res.sendStatus(400);
    } else {
      req.app
        .get("db")
        .product.delete_product(req.params.id)
        .then(() => {
          res.sendStatus(200);
        })
        .catch(err => {
          res.sendStatus(500);
        });
    }
  },
  update: function update(req, res) {
    let db = req.app.get("db");
    if (!req.params.id) {
      res.status(500).json({ error: "missing id in request" });
    } else {
      console.log("update: check if product exists");
      req.app
        .get("db")
        .product.update_product(req.params.id, req.query.desc)
        .then(data => {
          if (data.length > 0) {
            console.log("update: check if found result", data);
            res.sendStatus(200);
          } else {
            res.status(500).json({
              error:
                "failed to update " +
                req.params.id +
                "likely because the id doesnt exist"
            });
          }
        })
        .catch(err => {
          console.error(err);
          res.status(500).json(err);
        });
    }
  }
};
