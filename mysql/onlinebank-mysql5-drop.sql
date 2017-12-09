# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases v6.2.1                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          onlinebank.dez                                  #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2017-12-09 09:50                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `t1accounts` DROP FOREIGN KEY `t2refaccounttype_t1accounts`;

ALTER TABLE `t1accounts` DROP FOREIGN KEY `t4customers_t1accounts`;

ALTER TABLE `t4customers` DROP FOREIGN KEY `t3customertype_t4customers`;

ALTER TABLE `t6addresses` DROP FOREIGN KEY `t5refaddresstype_t6addresses`;

ALTER TABLE `t7customeraddresses` DROP FOREIGN KEY `t4customers_t7customeraddresses`;

ALTER TABLE `t7customeraddresses` DROP FOREIGN KEY `t6addresses_t7customeraddresses`;

ALTER TABLE `t8purchases` DROP FOREIGN KEY `t4customers_t8purchases`;

ALTER TABLE `t10merchants` DROP FOREIGN KEY `t9mechanttype_t10merchants`;

ALTER TABLE `t12transactions` DROP FOREIGN KEY `t11transactiontypes_t12transactions`;

ALTER TABLE `t12transactions` DROP FOREIGN KEY `t8purchases_t12transactions`;

ALTER TABLE `t12transactions` DROP FOREIGN KEY `t1accounts_t12transactions`;

ALTER TABLE `t13balancehistory` DROP FOREIGN KEY `t1accounts_t13balancehistory`;

ALTER TABLE `t14producttypes` DROP FOREIGN KEY `t10merchants_t14producttypes`;

ALTER TABLE `t15products` DROP FOREIGN KEY `t14producttypes_t15products`;

# ---------------------------------------------------------------------- #
# Drop table "t13balancehistory"                                         #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `t13balancehistory` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `t13balancehistory`;

# ---------------------------------------------------------------------- #
# Drop table "t12transactions"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `t12transactions` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `t12transactions`;

# ---------------------------------------------------------------------- #
# Drop table "t1accounts"                                                #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `t1accounts` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `t1accounts`;

# ---------------------------------------------------------------------- #
# Drop table "t15products"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `t15products` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `t15products`;

# ---------------------------------------------------------------------- #
# Drop table "t14producttypes"                                           #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `t14producttypes` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `t14producttypes`;

# ---------------------------------------------------------------------- #
# Drop table "t11transactiontypes"                                       #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `t11transactiontypes` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `t11transactiontypes`;

# ---------------------------------------------------------------------- #
# Drop table "t10merchants"                                              #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `t10merchants` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `t10merchants`;

# ---------------------------------------------------------------------- #
# Drop table "t9mechanttype"                                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `t9mechanttype` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `t9mechanttype`;

# ---------------------------------------------------------------------- #
# Drop table "t8purchases"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `t8purchases` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `t8purchases`;

# ---------------------------------------------------------------------- #
# Drop table "t7customeraddresses"                                       #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `t7customeraddresses` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `t7customeraddresses`;

# ---------------------------------------------------------------------- #
# Drop table "t6addresses"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `t6addresses` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `t6addresses`;

# ---------------------------------------------------------------------- #
# Drop table "t5refaddresstype"                                          #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `t5refaddresstype` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `t5refaddresstype`;

# ---------------------------------------------------------------------- #
# Drop table "t4customers"                                               #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `t4customers` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `t4customers`;

# ---------------------------------------------------------------------- #
# Drop table "t3customertype"                                            #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `t3customertype` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `t3customertype`;

# ---------------------------------------------------------------------- #
# Drop table "t2refaccounttype"                                          #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `t2refaccounttype` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `t2refaccounttype`;
