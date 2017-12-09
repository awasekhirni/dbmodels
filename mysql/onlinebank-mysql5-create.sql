# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases v6.2.1                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          onlinebank.dez                                  #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2017-12-09 09:50                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Tables                                                                 #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "t1accounts"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `t1accounts` (
    `t1f1accountid` VARCHAR(40) NOT NULL,
    `t1f1accountisactive` BOOL,
    `t2f2accounttypecode` VARCHAR(40),
    `t3f3customerid` VARCHAR(40),
    CONSTRAINT `PK_t1accounts` PRIMARY KEY (`t1f1accountid`)
);

# ---------------------------------------------------------------------- #
# Add table "t2refaccounttype"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `t2refaccounttype` (
    `t2f2accounttypecode` VARCHAR(40) NOT NULL,
    `t2f2accounttypedesc` VARCHAR(200),
    `t2f2accounttyperemark` VARCHAR(100),
    CONSTRAINT `PK_t2refaccounttype` PRIMARY KEY (`t2f2accounttypecode`)
);

# ---------------------------------------------------------------------- #
# Add table "t3customertype"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `t3customertype` (
    `t3f3customercode` VARCHAR(40) NOT NULL,
    `t3f3customerdesc` VARCHAR(200),
    `t3f3customerremark` VARCHAR(100),
    CONSTRAINT `PK_t3customertype` PRIMARY KEY (`t3f3customercode`)
);

# ---------------------------------------------------------------------- #
# Add table "t4customers"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `t4customers` (
    `t3f3customerid` VARCHAR(40) NOT NULL,
    `t3f3customername` VARCHAR(250),
    `t3f3customeremail` VARCHAR(250),
    `t3f3customerdesc` VARCHAR(40),
    `t3f3customercode` VARCHAR(40),
    CONSTRAINT `PK_t4customers` PRIMARY KEY (`t3f3customerid`)
);

# ---------------------------------------------------------------------- #
# Add table "t5refaddresstype"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `t5refaddresstype` (
    `t5f5addresstypecode` VARCHAR(40) NOT NULL,
    `t5f5addresstypedesc` VARCHAR(200),
    `t5f5addresstyperemark` VARCHAR(100),
    CONSTRAINT `PK_t5refaddresstype` PRIMARY KEY (`t5f5addresstypecode`)
);

# ---------------------------------------------------------------------- #
# Add table "t6addresses"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `t6addresses` (
    `t6f6addressid` VARCHAR(40) NOT NULL,
    `t6f6addressstreet` VARCHAR(250),
    `t6f6city` VARCHAR(250),
    `t6f6state` VARCHAR(250),
    `t6f6country` VARCHAR(250),
    `t6f6zip` VARCHAR(40),
    `t6f6natcode` VARCHAR(40),
    `t5f5addresstypecode` VARCHAR(40),
    CONSTRAINT `PK_t6addresses` PRIMARY KEY (`t6f6addressid`)
);

# ---------------------------------------------------------------------- #
# Add table "t7customeraddresses"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `t7customeraddresses` (
    `t7f7customeraddressid` VARCHAR(40) NOT NULL,
    `t3f3customerid` VARCHAR(40),
    `t6f6addressid` VARCHAR(40),
    CONSTRAINT `PK_t7customeraddresses` PRIMARY KEY (`t7f7customeraddressid`)
);

# ---------------------------------------------------------------------- #
# Add table "t8purchases"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `t8purchases` (
    `t8f8purchaseid` VARCHAR(50) NOT NULL,
    `t8f8purchaseamount` NUMERIC,
    `t8f8taxpercent` NUMERIC,
    `t8f8taxcode` VARCHAR(40),
    `t8f8purchasedescription` VARCHAR(500),
    `t8f8purchasetime` DATETIME,
    `t3f3customerid` VARCHAR(40),
    CONSTRAINT `PK_t8purchases` PRIMARY KEY (`t8f8purchaseid`)
);

# ---------------------------------------------------------------------- #
# Add table "t9mechanttype"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `t9mechanttype` (
    `t9f9merchanttypecode` VARCHAR(40) NOT NULL,
    `t9f9merchanttypedesc` VARCHAR(200),
    `t9f9merchanttyperemarks` VARCHAR(250),
    CONSTRAINT `PK_t9mechanttype` PRIMARY KEY (`t9f9merchanttypecode`)
);

# ---------------------------------------------------------------------- #
# Add table "t10merchants"                                               #
# ---------------------------------------------------------------------- #

CREATE TABLE `t10merchants` (
    `t10f10merchantid` VARCHAR(40) NOT NULL,
    `t10f10merchantname` VARCHAR(250),
    `t10f10merchantdesc` VARCHAR(500),
    `t9f9merchanttypecode` VARCHAR(40),
    CONSTRAINT `PK_t10merchants` PRIMARY KEY (`t10f10merchantid`)
);

# ---------------------------------------------------------------------- #
# Add table "t11transactiontypes"                                        #
# ---------------------------------------------------------------------- #

CREATE TABLE `t11transactiontypes` (
    `t11f11transactiontypecode` VARCHAR(40) NOT NULL,
    `t11f11transactiondesc` VARCHAR(250),
    `t11f11transactionremarks` VARCHAR(250),
    CONSTRAINT `PK_t11transactiontypes` PRIMARY KEY (`t11f11transactiontypecode`)
);

# ---------------------------------------------------------------------- #
# Add table "t12transactions"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `t12transactions` (
    `t12f12transactionid` VARCHAR(50) NOT NULL,
    `t12f12transactiondatetime` DATETIME,
    `t12f12transactionstatus` VARCHAR(100),
    `t11f11transactiontypecode` VARCHAR(40),
    `t8f8purchaseid` VARCHAR(50),
    `t1f1accountid` VARCHAR(40),
    CONSTRAINT `PK_t12transactions` PRIMARY KEY (`t12f12transactionid`)
);

# ---------------------------------------------------------------------- #
# Add table "t13balancehistory"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `t13balancehistory` (
    `t13f13balancedata` DATETIME,
    `t13f13balanceamount` NUMERIC,
    `t1f1accountid` VARCHAR(40) NOT NULL,
    CONSTRAINT `PK_t13balancehistory` PRIMARY KEY (`t1f1accountid`)
);

# ---------------------------------------------------------------------- #
# Add table "t14producttypes"                                            #
# ---------------------------------------------------------------------- #

CREATE TABLE `t14producttypes` (
    `t14f14producttypecode` VARCHAR(50) NOT NULL,
    `t14f14producttypedesc` VARCHAR(200),
    `t14f14producttyperemark` VARCHAR(400),
    `t10f10merchantid` VARCHAR(40),
    CONSTRAINT `PK_t14producttypes` PRIMARY KEY (`t14f14producttypecode`)
);

# ---------------------------------------------------------------------- #
# Add table "t15products"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `t15products` (
    `t15productid` VARCHAR(50) NOT NULL,
    `t15productdesc` VARCHAR(250),
    `t15productimg` VARCHAR(250),
    `t15productisactive` BOOL,
    `t14f14producttypecode` VARCHAR(50),
    CONSTRAINT `PK_t15products` PRIMARY KEY (`t15productid`)
);

# ---------------------------------------------------------------------- #
# Foreign key constraints                                                #
# ---------------------------------------------------------------------- #

ALTER TABLE `t1accounts` ADD CONSTRAINT `t2refaccounttype_t1accounts` 
    FOREIGN KEY (`t2f2accounttypecode`) REFERENCES `t2refaccounttype` (`t2f2accounttypecode`);

ALTER TABLE `t1accounts` ADD CONSTRAINT `t4customers_t1accounts` 
    FOREIGN KEY (`t3f3customerid`) REFERENCES `t4customers` (`t3f3customerid`);

ALTER TABLE `t4customers` ADD CONSTRAINT `t3customertype_t4customers` 
    FOREIGN KEY (`t3f3customercode`) REFERENCES `t3customertype` (`t3f3customercode`);

ALTER TABLE `t6addresses` ADD CONSTRAINT `t5refaddresstype_t6addresses` 
    FOREIGN KEY (`t5f5addresstypecode`) REFERENCES `t5refaddresstype` (`t5f5addresstypecode`);

ALTER TABLE `t7customeraddresses` ADD CONSTRAINT `t4customers_t7customeraddresses` 
    FOREIGN KEY (`t3f3customerid`) REFERENCES `t4customers` (`t3f3customerid`);

ALTER TABLE `t7customeraddresses` ADD CONSTRAINT `t6addresses_t7customeraddresses` 
    FOREIGN KEY (`t6f6addressid`) REFERENCES `t6addresses` (`t6f6addressid`);

ALTER TABLE `t8purchases` ADD CONSTRAINT `t4customers_t8purchases` 
    FOREIGN KEY (`t3f3customerid`) REFERENCES `t4customers` (`t3f3customerid`);

ALTER TABLE `t10merchants` ADD CONSTRAINT `t9mechanttype_t10merchants` 
    FOREIGN KEY (`t9f9merchanttypecode`) REFERENCES `t9mechanttype` (`t9f9merchanttypecode`);

ALTER TABLE `t12transactions` ADD CONSTRAINT `t11transactiontypes_t12transactions` 
    FOREIGN KEY (`t11f11transactiontypecode`) REFERENCES `t11transactiontypes` (`t11f11transactiontypecode`);

ALTER TABLE `t12transactions` ADD CONSTRAINT `t8purchases_t12transactions` 
    FOREIGN KEY (`t8f8purchaseid`) REFERENCES `t8purchases` (`t8f8purchaseid`);

ALTER TABLE `t12transactions` ADD CONSTRAINT `t1accounts_t12transactions` 
    FOREIGN KEY (`t1f1accountid`) REFERENCES `t1accounts` (`t1f1accountid`);

ALTER TABLE `t13balancehistory` ADD CONSTRAINT `t1accounts_t13balancehistory` 
    FOREIGN KEY (`t1f1accountid`) REFERENCES `t1accounts` (`t1f1accountid`);

ALTER TABLE `t14producttypes` ADD CONSTRAINT `t10merchants_t14producttypes` 
    FOREIGN KEY (`t10f10merchantid`) REFERENCES `t10merchants` (`t10f10merchantid`);

ALTER TABLE `t15products` ADD CONSTRAINT `t14producttypes_t15products` 
    FOREIGN KEY (`t14f14producttypecode`) REFERENCES `t14producttypes` (`t14f14producttypecode`);
