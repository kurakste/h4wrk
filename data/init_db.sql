DROP TABLE IF EXISTS Goods;
CREATE TABLE
   `Goods` (
      `id` INT(11) NOT NULL AUTO_INCREMENT,
      `name` VARCHAR (255),
      `description` VARCHAR (255),
      `fname` VARCHAR (255),
      PRIMARY KEY(`id`)
   ) ENGINE = INNODB;
TRUNCATE TABLE Goods;
INSERT INTO Goods (name, description, fname) VALUES ('Item1', 'decription of i1', 'pic1.jpg');
INSERT INTO Goods (name, description, fname) VALUES ('Item2', 'decription of i2', 'pic2.jpg');
INSERT INTO Goods (name, description, fname) VALUES ('Item3', 'decription of i3', 'pic3.jpg');
INSERT INTO Goods (name, description, fname) VALUES ('Item4', 'decription of i4', 'pic4.jpg');
INSERT INTO Goods (name, description, fname) VALUES ('Item5', 'decription of i5', 'pic5.jpg');
INSERT INTO Goods (name, description, fname) VALUES ('Item6', 'decription of i6', 'pic6.jpg');
INSERT INTO Goods (name, description, fname) VALUES ('Item7', 'decription of i7', 'pic7.jpg');
INSERT INTO Goods (name, description, fname) VALUES ('Item11', 'decription of i11', 'pic11.jpg');
INSERT INTO Goods (name, description, fname) VALUES ('Item12', 'decription of i12', 'pic12.jpg');
INSERT INTO Goods (name, description, fname) VALUES ('Item13', 'decription of i13', 'pic13.jpg');
INSERT INTO Goods (name, description, fname) VALUES ('Item14', 'decription of i14', 'pic14.jpg');
INSERT INTO Goods (name, description, fname) VALUES ('Item15', 'decription of i15', 'pic15.jpg');
INSERT INTO Goods (name, description, fname) VALUES ('Item16', 'decription of i16', 'pic16.jpg');
INSERT INTO Goods (name, description, fname) VALUES ('Item17', 'decription of i17', 'pic17.jpg');
INSERT INTO Goods (name, description, fname) VALUES ('Item21', 'decription of i21', 'pic21.jpg');
INSERT INTO Goods (name, description, fname) VALUES ('Item22', 'decription of i22', 'pic22.jpg');
INSERT INTO Goods (name, description, fname) VALUES ('Item23', 'decription of i23', 'pic23.jpg');
INSERT INTO Goods (name, description, fname) VALUES ('Item24', 'decription of i24', 'pic24.jpg');
INSERT INTO Goods (name, description, fname) VALUES ('Item25', 'decription of i25', 'pic25.jpg');
INSERT INTO Goods (name, description, fname) VALUES ('Item26', 'decription of i26', 'pic26.jpg');
INSERT INTO Goods (name, description, fname) VALUES ('Item27', 'decription of i27', 'pic27.jpg');


