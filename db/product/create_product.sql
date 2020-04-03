INSERT INTO product (name,description,price,image_url)
Values ($1,$2,$3,$4) returning product_id;