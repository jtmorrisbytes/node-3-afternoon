BEGIN;
DROP TABLE IF EXISTS product;
CREATE TABLE product(
  product_id SERIAL,
  name VARCHAR(40),
  description varchar(80), 
  price INT,
  image_url TEXT
);
insert into product (name, description, price, image_url) values ('Wine - Beaujolais Villages', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 39, 'http://dummyimage.com/177x187.jpg/ff4444/ffffff');
insert into product (name, description, price, image_url) values ('Beer - Upper Canada Lager', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 26, 'http://dummyimage.com/186x206.png/5fa2dd/ffffff');
insert into product (name, description, price, image_url) values ('Veal - Striploin', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 28, 'http://dummyimage.com/250x107.jpg/dddddd/000000');
insert into product (name, description, price, image_url) values ('Sausage - Chorizo', 'Etiam pretium iaculis justo.', 35, 'http://dummyimage.com/196x235.jpg/dddddd/000000');
insert into product (name, description, price, image_url) values ('Veal - Loin', 'Pellentesque viverra pede ac diam.', 12, 'http://dummyimage.com/214x227.png/5fa2dd/ffffff');
insert into product (name, description, price, image_url) values ('Scampi Tail', 'Praesent id massa id nisl venenatis lacinia.', 36, 'http://dummyimage.com/147x210.jpg/dddddd/000000');
insert into product (name, description, price, image_url) values ('Cloves - Ground', 'Donec vitae nisi.', 49, 'http://dummyimage.com/230x118.bmp/5fa2dd/ffffff');
insert into product (name, description, price, image_url) values ('Grapefruit - Pink', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus', 42, 'http://dummyimage.com/161x103.bmp/dddddd/000000');
insert into product (name, description, price, image_url) values ('Trueblue - Blueberry Cranberry', 'In blandit ultrices enim.', 24, 'http://dummyimage.com/246x246.jpg/5fa2dd/ffffff');
insert into product (name, description, price, image_url) values ('Sprouts Dikon', 'In hac habitasse platea dictumst.', 28, 'http://dummyimage.com/215x205.png/ff4444/ffffff');
insert into product (name, description, price, image_url) values ('Macaroons - Two Bite Choc', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', 41, 'http://dummyimage.com/241x189.bmp/5fa2dd/ffffff');
insert into product (name, description, price, image_url) values ('Sloe Gin - Mcguinness', 'Curabitur at ipsum ac tellus semper interdum.', 25, 'http://dummyimage.com/241x209.png/dddddd/000000');
insert into product (name, description, price, image_url) values ('Bread Ww Cluster', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 13, 'http://dummyimage.com/147x184.jpg/5fa2dd/ffffff');
insert into product (name, description, price, image_url) values ('Water - Mineral, Carbonated', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sa', 3, 'http://dummyimage.com/233x211.png/cc0000/ffffff');
insert into product (name, description, price, image_url) values ('Ice Cream - Super Sandwich', 'In hac habitasse platea dictumst.', 28, 'http://dummyimage.com/110x216.jpg/5fa2dd/ffffff');
insert into product (name, description, price, image_url) values ('Plate - Foam, Bread And Butter', 'Praesent lectus.', 33, 'http://dummyimage.com/170x249.bmp/cc0000/ffffff');
insert into product (name, description, price, image_url) values ('Sobe - Tropical Energy', 'Ut at dolor quis odio consequat varius.', 15, 'http://dummyimage.com/215x184.bmp/5fa2dd/ffffff');
insert into product (name, description, price, image_url) values ('Wine - White, Colubia Cresh', 'Morbi ut odio.', 10, 'http://dummyimage.com/153x247.jpg/dddddd/000000');
insert into product (name, description, price, image_url) values ('Wine - Shiraz Wolf Blass Premium', 'Nunc purus.', 29, 'http://dummyimage.com/125x225.png/ff4444/ffffff');
insert into product (name, description, price, image_url) values ('Wine - Barossa Valley Estate', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 4, 'http://dummyimage.com/178x110.bmp/cc0000/ffffff');
insert into product (name, description, price, image_url) values ('Mousse - Passion Fruit', 'Praesent lectus.', 33, 'http://dummyimage.com/211x170.jpg/cc0000/ffffff');
insert into product (name, description, price, image_url) values ('Nut - Pumpkin Seeds', 'Aenean lectus.', 48, 'http://dummyimage.com/127x212.png/ff4444/ffffff');
insert into product (name, description, price, image_url) values ('Chicken - Livers', 'Maecenas ut massa quis augue luctus tincidunt.', 9, 'http://dummyimage.com/156x163.png/cc0000/ffffff');
insert into product (name, description, price, image_url) values ('Cabbage - Savoy', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel ac', 15, 'http://dummyimage.com/107x119.jpg/ff4444/ffffff');
insert into product (name, description, price, image_url) values ('Coffee Beans - Chocolate', 'Vivamus in felis eu sapien cursus vestibulum.', 37, 'http://dummyimage.com/170x205.bmp/5fa2dd/ffffff');
END;