/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases v6.2.1                     */
/* Target DBMS:           PostgreSQL 8.3                                  */
/* Project file:          POS-postgres83.dez                              */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database creation script                        */
/* Created on:            2017-12-09 13:43                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Tables                                                                 */
/* ---------------------------------------------------------------------- */

/* ---------------------------------------------------------------------- */
/* Add table "t1customers"                                                */
/* ---------------------------------------------------------------------- */

CREATE TABLE t1customers (
    t1f1customerid CHARACTER VARYING(40)   NOT NULL,
    t1f1customername CHARACTER VARYING(40) ,
    t1f1customerphone CHARACTER VARYING(40) ,
    t1f1customeremail CHARACTER VARYING(40) ,
    t1f1custoemrdesc CHARACTER VARYING(40) ,
    t2f2customertypecode CHARACTER VARYING(40) ,
    CONSTRAINT PK_t1customers PRIMARY KEY (t1f1customerid)
);

/* ---------------------------------------------------------------------- */
/* Add table "t2customertype"                                             */
/* ---------------------------------------------------------------------- */

CREATE TABLE t2customertype (
    t2f2customertypecode CHARACTER VARYING(40)   NOT NULL,
    t2f2customertypedesc CHARACTER VARYING(40) ,
    t2f2customertyperemarj CHARACTER VARYING(40) ,
    t2f2customertypeisactive BOOLEAN ,
    CONSTRAINT PK_t2customertype PRIMARY KEY (t2f2customertypecode)
);

/* ---------------------------------------------------------------------- */
/* Add table "t3addresses"                                                */
/* ---------------------------------------------------------------------- */

CREATE TABLE t3addresses (
    t3f3addressid CHARACTER VARYING(40)   NOT NULL,
    t3f3addressline1 CHARACTER VARYING(250) ,
    t3f3addressline2 CHARACTER VARYING(250) ,
    t3f3city CHARACTER VARYING(250) ,
    t3f3state CHARACTER VARYING(250) ,
    t3f3country CHARACTER VARYING(250) ,
    t3f3zip CHARACTER VARYING(40) ,
    t3f3natcode CHARACTER VARYING(40) ,
    t1f1customerid CHARACTER(40) ,
    CONSTRAINT PK_t3addresses PRIMARY KEY (t3f3addressid)
);

/* ---------------------------------------------------------------------- */
/* Add table "t4stafftypes"                                               */
/* ---------------------------------------------------------------------- */

CREATE TABLE t4stafftypes (
    t4f4stafftypecode CHARACTER VARYING(40)   NOT NULL,
    t4f4stafftypedesc CHARACTER VARYING(200) ,
    t4f4stafftyperemark CHARACTER VARYING(100) ,
    CONSTRAINT PK_t4stafftypes PRIMARY KEY (t4f4stafftypecode)
);

/* ---------------------------------------------------------------------- */
/* Add table "t5staff"                                                    */
/* ---------------------------------------------------------------------- */

CREATE TABLE t5staff (
    t5f5staffid CHARACTER VARYING(40)   NOT NULL,
    t5f5staffname CHARACTER VARYING(250) ,
    t5f5staffgender CHARACTER VARYING(50) ,
    t5f5staffemail CHARACTER VARYING(200) ,
    t5f5staffphone CHARACTER VARYING(40) ,
    t5f5staffstartdate DATE ,
    t5f5staffenddate DATE ,
    t4f4stafftypecode CHARACTER VARYING(40) ,
    CONSTRAINT PK_t5staff PRIMARY KEY (t5f5staffid)
);

/* ---------------------------------------------------------------------- */
/* Add table "t6paymentmodes"                                             */
/* ---------------------------------------------------------------------- */

CREATE TABLE t6paymentmodes (
    t6f6paymentmodeid CHARACTER VARYING(40)   NOT NULL,
    t6f6paymentmodedesc CHARACTER VARYING(250) ,
    t6f6paymentmoderemark CHARACTER VARYING(100) ,
    t6f6paymentmodeisactive BOOLEAN ,
    CONSTRAINT PK_t6paymentmodes PRIMARY KEY (t6f6paymentmodeid)
);

/* ---------------------------------------------------------------------- */
/* Add table "t7payments"                                                 */
/* ---------------------------------------------------------------------- */

CREATE TABLE t7payments (
    t7f7paymentid CHARACTER(40)   NOT NULL,
    t7f7paymentamount DOUBLE PRECISION ,
    t7f7paymentstatus CHARACTER VARYING(100) ,
    t6f6paymentmodeid CHARACTER VARYING(40) ,
    t8f8saleid CHARACTER(60) ,
    CONSTRAINT PK_t7payments PRIMARY KEY (t7f7paymentid)
);

/* ---------------------------------------------------------------------- */
/* Add table "t8sales"                                                    */
/* ---------------------------------------------------------------------- */

CREATE TABLE t8sales (
    t8f8saleid CHARACTER(60)   NOT NULL,
    t8f8saletime TIME WITH TIME ZONE ,
    t8f8wholesaleprice DOUBLE PRECISION ,
    t8f8retailprice DOUBLE PRECISION ,
    t8f8salestatus CHARACTER VARYING(40) ,
    t9f9taxcode CHARACTER VARYING(40) ,
    t8f8taxapplicable DOUBLE PRECISION ,
    t5f5staffid CHARACTER VARYING(40) ,
    t1f1customerid CHARACTER VARYING(40) ,
    t11f11outletid CHARACTER VARYING(40) ,
    CONSTRAINT PK_t8sales PRIMARY KEY (t8f8saleid)
);

/* ---------------------------------------------------------------------- */
/* Add table "t9taxcodes"                                                 */
/* ---------------------------------------------------------------------- */

CREATE TABLE t9taxcodes (
    t9f9taxcode CHARACTER VARYING(40)   NOT NULL,
    t9f9taxcodedesc CHARACTER VARYING(200) ,
    t9f9taxcoderemark CHARACTER VARYING(100) ,
    t9f9taxcodeisactive BOOLEAN ,
    t9f9taxrate DOUBLE PRECISION ,
    CONSTRAINT PK_t9taxcodes PRIMARY KEY (t9f9taxcode)
);

/* ---------------------------------------------------------------------- */
/* Add table "t10branches"                                                */
/* ---------------------------------------------------------------------- */

CREATE TABLE t10branches (
    t10f10branchcode CHARACTER VARYING(40)   NOT NULL,
    t10f10branchaddress CHARACTER VARYING(500) ,
    t10f10branchcity CHARACTER VARYING(250) ,
    t10f10branchstate CHARACTER VARYING(250) ,
    t10f10branchcountry CHARACTER VARYING(250) ,
    t10f10branchzip CHARACTER VARYING(50) ,
    t10f10branchisactive BOOLEAN ,
    t10f10branchstartdate DATE ,
    CONSTRAINT PK_t10branches PRIMARY KEY (t10f10branchcode)
);

/* ---------------------------------------------------------------------- */
/* Add table "t11salesoutlets"                                            */
/* ---------------------------------------------------------------------- */

CREATE TABLE t11salesoutlets (
    t11f11outletid CHARACTER VARYING(40)   NOT NULL,
    t11f11outlettype CHARACTER VARYING(100) ,
    t11f11outletisactive BOOLEAN ,
    t10f10branchcode CHARACTER VARYING(40) ,
    CONSTRAINT PK_t11salesoutlets PRIMARY KEY (t11f11outletid)
);

/* ---------------------------------------------------------------------- */
/* Add table "t12producttypes"                                            */
/* ---------------------------------------------------------------------- */

CREATE TABLE t12producttypes (
    t12f12producttypecode CHARACTER VARYING(40)   NOT NULL,
    t12f12producttypedesc CHARACTER VARYING(250) ,
    t12f12producttyperemark CHARACTER VARYING(100) ,
    t12f12productypeisactive BOOLEAN ,
    CONSTRAINT PK_t12producttypes PRIMARY KEY (t12f12producttypecode)
);

/* ---------------------------------------------------------------------- */
/* Add table "t13products"                                                */
/* ---------------------------------------------------------------------- */

CREATE TABLE t13products (
    t13f13productid CHARACTER VARYING(40)   NOT NULL,
    t13f13productname CHARACTER VARYING(200) ,
    t13f13productdesc CHARACTER VARYING(400) ,
    t13f13productimg CHARACTER(200) ,
    t13f13productwholesaleprice DOUBLE PRECISION ,
    t13f13productretailprice DOUBLE PRECISION ,
    t13f13productqtyavlbl BIGINT ,
    t13f13productisactive BOOLEAN ,
    t12f12producttypecode CHARACTER VARYING(40) ,
    CONSTRAINT PK_t13products PRIMARY KEY (t13f13productid)
);

/* ---------------------------------------------------------------------- */
/* Add table "t8sales_t13products"                                        */
/* ---------------------------------------------------------------------- */

CREATE TABLE t8sales_t13products (
    t8f8saleid CHARACTER(60)   NOT NULL,
    t13f13productid CHARACTER VARYING(40)   NOT NULL,
    t8t13quantity INTEGER ,
    CONSTRAINT PK_t8sales_t13products PRIMARY KEY (t8f8saleid, t13f13productid)
);

/* ---------------------------------------------------------------------- */
/* Foreign key constraints                                                */
/* ---------------------------------------------------------------------- */

ALTER TABLE t1customers ADD CONSTRAINT t2customertype_t1customers 
    FOREIGN KEY (t2f2customertypecode) REFERENCES t2customertype (t2f2customertypecode);

ALTER TABLE t3addresses ADD CONSTRAINT t1customers_t3addresses 
    FOREIGN KEY (t1f1customerid) REFERENCES t1customers (t1f1customerid);

ALTER TABLE t5staff ADD CONSTRAINT t4stafftypes_t5staff 
    FOREIGN KEY (t4f4stafftypecode) REFERENCES t4stafftypes (t4f4stafftypecode);

ALTER TABLE t7payments ADD CONSTRAINT t6paymentmodes_t7payments 
    FOREIGN KEY (t6f6paymentmodeid) REFERENCES t6paymentmodes (t6f6paymentmodeid);

ALTER TABLE t7payments ADD CONSTRAINT t8sales_t7payments 
    FOREIGN KEY (t8f8saleid) REFERENCES t8sales (t8f8saleid);

ALTER TABLE t8sales ADD CONSTRAINT t9taxcodes_t8sales 
    FOREIGN KEY (t9f9taxcode) REFERENCES t9taxcodes (t9f9taxcode);

ALTER TABLE t8sales ADD CONSTRAINT t5staff_t8sales 
    FOREIGN KEY (t5f5staffid) REFERENCES t5staff (t5f5staffid);

ALTER TABLE t8sales ADD CONSTRAINT t1customers_t8sales 
    FOREIGN KEY (t1f1customerid) REFERENCES t1customers (t1f1customerid);

ALTER TABLE t8sales ADD CONSTRAINT t11salesoutlets_t8sales 
    FOREIGN KEY (t11f11outletid) REFERENCES t11salesoutlets (t11f11outletid);

ALTER TABLE t11salesoutlets ADD CONSTRAINT t10branches_t11salesoutlets 
    FOREIGN KEY (t10f10branchcode) REFERENCES t10branches (t10f10branchcode);

ALTER TABLE t13products ADD CONSTRAINT t12producttypes_t13products 
    FOREIGN KEY (t12f12producttypecode) REFERENCES t12producttypes (t12f12producttypecode);

ALTER TABLE t8sales_t13products ADD CONSTRAINT t8sales_t8sales_t13products 
    FOREIGN KEY (t8f8saleid) REFERENCES t8sales (t8f8saleid);

ALTER TABLE t8sales_t13products ADD CONSTRAINT t13products_t8sales_t13products 
    FOREIGN KEY (t13f13productid) REFERENCES t13products (t13f13productid);
