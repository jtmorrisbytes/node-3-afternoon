require("dotenv").config();
const massive = require("massive");
massive(process.env.DATABASE_URL).then(db => {
  db.product
    .update_product()
    .then(console.log)
    .catch(console.error);
});
