CREATE DOMAIN NAME
  AS VARCHAR(200);

CREATE DOMAIN ID
  AS VARCHAR(36);

CREATE TABLE SITE_MARK (
  ID ID NOT NULL,
  SITE_ID ID NOT NULL,
  SPECIES_ID ID NOT NULL,
  MARK VARCHAR(50) NOT NULL,
  CONSTRAINT PrimaryKey3 PRIMARY KEY (ID)
);

CREATE TABLE ROLE (
  ID ID NOT NULL,
  ROLE NAME NOT NULL,
  CONSTRAINT PrimaryKey5 PRIMARY KEY (ID)
);

CREATE TABLE SPECIES (
  ID ID NOT NULL,
  SPECIES VARCHAR(50) NOT NULL,
  "_SPECIES_CODE" VARCHAR(50) NOT NULL,
  CONSTRAINT PrimaryKey2 PRIMARY KEY (ID)
);

CREATE TABLE SITE (
  ID ID NOT NULL,
  SITE_TYPE VARCHAR(50) NOT NULL,
  HOLDING_NUMBER VARCHAR(11) NOT NULL,
  NAME VARCHAR(100) NOT NULL,
  ADDRESS VARCHAR(255) NOT NULL,
  POSTCODE VARCHAR(8) NOT NULL,
  STATE VARCHAR(15) NOT NULL,
  OUR_SITE_FLAG BOOLEAN NOT NULL,
  CONSTRAINT INTEG_2 PRIMARY KEY (ID)
);

CREATE TABLE SITE_CONTACT (
  ID VARCHAR(36) NOT NULL,
  SITE_ID VARCHAR(36) NOT NULL,
  NAME VARCHAR(100) NOT NULL,
  LANDLINE VARCHAR(50),
  MOBILE VARCHAR(50),
  EMAIL VARCHAR(255),
  ADDRESS VARCHAR(255),
  POSTCODE VARCHAR(8),
  ROLE_ID ID NOT NULL,
  CONSTRAINT PrimaryKey1 PRIMARY KEY (ID)
);

CREATE INDEX NewIndex ON ROLE
  ();

ALTER TABLE SITE_MARK ADD CONSTRAINT SITE_SITE_MARK
  FOREIGN KEY (SITE_ID)
  REFERENCES SITE (ID)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE SITE_CONTACT ADD CONSTRAINT ROLE_SITE_CONTACT
  FOREIGN KEY (ROLE_ID)
  REFERENCES ROLE (ID);

ALTER TABLE SITE_CONTACT ADD CONSTRAINT SITE_SITE_CONTACTS
  FOREIGN KEY (SITE_ID)
  REFERENCES SITE (ID)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE SITE_MARK ADD CONSTRAINT SPECIES_SITE_MARK
  FOREIGN KEY (SPECIES_ID)
  REFERENCES SPECIES (ID)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

COMMENT ON COLUMN SITE.HOLDING_NUMBER IS 'If the site is an agricultural holding the Country Parish Holding Number.';

COMMENT ON COLUMN SITE.NAME IS 'A user defined name for the site.';

COMMENT ON COLUMN SITE.ID IS 'Internal unique id';

COMMENT ON COLUMN SITE.SITE_TYPE IS 'The type of site livestock can be moved off or moved onto e.g. Farm, Abattoir, Market etc.';

COMMENT ON COLUMN SITE.STATE IS 'The state of the site e.g. Active, Inactive.';

COMMENT ON COLUMN SITE.OUR_SITE_FLAG IS 'A flag indicating if the site belongs to the application operator.';

COMMENT ON COLUMN SITE.ADDRESS IS 'The address of the site.';

COMMENT ON COLUMN SITE.POSTCODE IS 'The postcode of the site.';
