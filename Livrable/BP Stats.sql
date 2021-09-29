CREATE DATABASE BP_Stats;
USE BP_Stats;

CREATE TABLE Country(
   Country VARCHAR(20),
   ISO3166_alpha3 VARCHAR (03),
   ISO3166_numeric FLOAT (20),
   Region_ VARCHAR(20),
   SubRegion VARCHAR(20),
   PRIMARY KEY(ISO3166_alpha3)
);

CREATE TABLE Fossil_Energy(
   Country VARCHAR(20),
   ISO3166_alpha3 VARCHAR (03),
   coalcons_ej FLOAT(20),
   coalprod_ej FLOAT(20),
   gascons_ej FLOAT(20),
   gasprod_ej FLOAT(20),
   oilcons_ej FLOAT(20),
   oilprod_kbd FLOAT(20),
   Years INT NOT NULL,
   PRIMARY KEY(ISO3166_alpha3,Years),
   FOREIGN KEY(ISO3166_alpha3) REFERENCES Country(ISO3166_alpha3)
);

CREATE TABLE Clean_Energy(
   Country VARCHAR(20),
   ISO3166_alpha3 VARCHAR (03),
   renewables_ej FLOAT(20),
   ren_power_ej FLOAT(20),
   biofuels_cons_ej FLOAT(20),
   biofuels_prod_pj FLOAT(20),
   Years INT NOT NULL,
   PRIMARY KEY(ISO3166_alpha3,Years),
   FOREIGN KEY(ISO3166_alpha3) REFERENCES Country(ISO3166_alpha3)
);

CREATE TABLE Key_Minerals(
   Country VARCHAR(20),
   ISO3166_alpha3 VARCHAR (03),
   lithium_kt FLOAT(20),
   cobalt_kt FLOAT(20),
   graphite_kt FLOAT(20),
   rareearths_kt FLOAT(20),
   Years INT NOT NULL,
   PRIMARY KEY(ISO3166_alpha3,Years),
   FOREIGN KEY(ISO3166_alpha3) REFERENCES Country(ISO3166_alpha3)
);

CREATE TABLE Population(
   Country VARCHAR(20),
   ISO3166_alpha3 VARCHAR (03),
   pop FLOAT(20),
   Years INT NOT NULL,
   PRIMARY KEY(ISO3166_alpha3,Years),
   FOREIGN KEY (ISO3166_alpha3) REFERENCES Country(ISO3166_alpha3)
);
