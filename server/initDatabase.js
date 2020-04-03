require("dotenv").config();
const massive = require("massive");
massive(process.env.DATABASE_URL).then(db => {
  db.product
    .seed()
    .then(result => {
      console.log("seeded products table");
    })
    .catch(err => {
      console.error("failed to seed the products table", err);
    });
});
