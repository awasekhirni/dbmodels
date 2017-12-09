/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases v6.2.1                     */
/* Target DBMS:           PostgreSQL 8.3                                  */
/* Project file:          POS-postgres83.dez                              */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database drop script                            */
/* Created on:            2017-12-09 13:43                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Drop foreign key constraints                                           */
/* ---------------------------------------------------------------------- */

ALTER TABLE t1customers DROP CONSTRAINT t2customertype_t1customers;

ALTER TABLE t3addresses DROP CONSTRAINT t1customers_t3addresses;

ALTER TABLE t5staff DROP CONSTRAINT t4stafftypes_t5staff;

ALTER TABLE t7payments DROP CONSTRAINT t6paymentmodes_t7payments;

ALTER TABLE t7payments DROP CONSTRAINT t8sales_t7payments;

ALTER TABLE t8sales DROP CONSTRAINT t9taxcodes_t8sales;

ALTER TABLE t8sales DROP CONSTRAINT t5staff_t8sales;

ALTER TABLE t8sales DROP CONSTRAINT t1customers_t8sales;

ALTER TABLE t8sales DROP CONSTRAINT t11salesoutlets_t8sales;

ALTER TABLE t11salesoutlets DROP CONSTRAINT t10branches_t11salesoutlets;

ALTER TABLE t13products DROP CONSTRAINT t12producttypes_t13products;

ALTER TABLE t8sales_t13products DROP CONSTRAINT t8sales_t8sales_t13products;

ALTER TABLE t8sales_t13products DROP CONSTRAINT t13products_t8sales_t13products;

/* ---------------------------------------------------------------------- */
/* Drop table "t7payments"                                                */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE t7payments DROP CONSTRAINT PK_t7payments;

/* Drop table */

DROP TABLE t7payments;

/* ---------------------------------------------------------------------- */
/* Drop table "t8sales_t13products"                                       */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE t8sales_t13products DROP CONSTRAINT PK_t8sales_t13products;

/* Drop table */

DROP TABLE t8sales_t13products;

/* ---------------------------------------------------------------------- */
/* Drop table "t8sales"                                                   */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE t8sales DROP CONSTRAINT PK_t8sales;

/* Drop table */

DROP TABLE t8sales;

/* ---------------------------------------------------------------------- */
/* Drop table "t3addresses"                                               */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE t3addresses DROP CONSTRAINT PK_t3addresses;

/* Drop table */

DROP TABLE t3addresses;

/* ---------------------------------------------------------------------- */
/* Drop table "t1customers"                                               */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE t1customers DROP CONSTRAINT PK_t1customers;

/* Drop table */

DROP TABLE t1customers;

/* ---------------------------------------------------------------------- */
/* Drop table "t13products"                                               */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE t13products DROP CONSTRAINT PK_t13products;

/* Drop table */

DROP TABLE t13products;

/* ---------------------------------------------------------------------- */
/* Drop table "t12producttypes"                                           */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE t12producttypes DROP CONSTRAINT PK_t12producttypes;

/* Drop table */

DROP TABLE t12producttypes;

/* ---------------------------------------------------------------------- */
/* Drop table "t11salesoutlets"                                           */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE t11salesoutlets DROP CONSTRAINT PK_t11salesoutlets;

/* Drop table */

DROP TABLE t11salesoutlets;

/* ---------------------------------------------------------------------- */
/* Drop table "t10branches"                                               */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE t10branches DROP CONSTRAINT PK_t10branches;

/* Drop table */

DROP TABLE t10branches;

/* ---------------------------------------------------------------------- */
/* Drop table "t9taxcodes"                                                */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE t9taxcodes DROP CONSTRAINT PK_t9taxcodes;

/* Drop table */

DROP TABLE t9taxcodes;

/* ---------------------------------------------------------------------- */
/* Drop table "t6paymentmodes"                                            */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE t6paymentmodes DROP CONSTRAINT PK_t6paymentmodes;

/* Drop table */

DROP TABLE t6paymentmodes;

/* ---------------------------------------------------------------------- */
/* Drop table "t5staff"                                                   */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE t5staff DROP CONSTRAINT PK_t5staff;

/* Drop table */

DROP TABLE t5staff;

/* ---------------------------------------------------------------------- */
/* Drop table "t4stafftypes"                                              */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE t4stafftypes DROP CONSTRAINT PK_t4stafftypes;

/* Drop table */

DROP TABLE t4stafftypes;

/* ---------------------------------------------------------------------- */
/* Drop table "t2customertype"                                            */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE t2customertype DROP CONSTRAINT PK_t2customertype;

/* Drop table */

DROP TABLE t2customertype;
