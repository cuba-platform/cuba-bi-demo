-- begin BIDEMO_CUSTOMER
create table BIDEMO_CUSTOMER (
    ID uniqueidentifier,
    VERSION integer not null,
    CREATE_TS datetime2,
    CREATED_BY varchar(50),
    UPDATE_TS datetime2,
    UPDATED_BY varchar(50),
    DELETE_TS datetime2,
    DELETED_BY varchar(50),
    --
    NAME varchar(100) not null,
    EMAIL varchar(100),
    CITY_ID uniqueidentifier,
    --
    primary key nonclustered (ID)
)^
-- end BIDEMO_CUSTOMER
-- begin BIDEMO_ORDER
create table BIDEMO_ORDER (
    ID uniqueidentifier,
    VERSION integer not null,
    CREATE_TS datetime2,
    CREATED_BY varchar(50),
    UPDATE_TS datetime2,
    UPDATED_BY varchar(50),
    DELETE_TS datetime2,
    DELETED_BY varchar(50),
    --
    DATE_ datetime2 not null,
    AMOUNT decimal(19, 2),
    CUSTOMER_ID uniqueidentifier,
    --
    primary key nonclustered (ID)
)^
-- end BIDEMO_ORDER
-- begin BIDEMO_PRODUCT
create table BIDEMO_PRODUCT (
    ID uniqueidentifier,
    VERSION integer not null,
    CREATE_TS datetime2,
    CREATED_BY varchar(50),
    UPDATE_TS datetime2,
    UPDATED_BY varchar(50),
    DELETE_TS datetime2,
    DELETED_BY varchar(50),
    --
    NAME varchar(50) not null,
    PRICE decimal(19, 2) not null,
    PRODUCT_LINE_ID uniqueidentifier,
    --
    primary key nonclustered (ID)
)^
-- end BIDEMO_PRODUCT
-- begin BIDEMO_ORDER_LINE
create table BIDEMO_ORDER_LINE (
    ID uniqueidentifier,
    VERSION integer not null,
    CREATE_TS datetime2,
    CREATED_BY varchar(50),
    UPDATE_TS datetime2,
    UPDATED_BY varchar(50),
    DELETE_TS datetime2,
    DELETED_BY varchar(50),
    --
    PRODUCT_ID uniqueidentifier not null,
    QUANTITY decimal(19, 3) not null,
    ORDER_ID uniqueidentifier,
    --
    primary key nonclustered (ID)
)^
-- end BIDEMO_ORDER_LINE
-- begin BIDEMO_TERRITORY
create table BIDEMO_TERRITORY (
    ID uniqueidentifier,
    VERSION integer not null,
    CREATE_TS datetime2,
    CREATED_BY varchar(50),
    UPDATE_TS datetime2,
    UPDATED_BY varchar(50),
    DELETE_TS datetime2,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    --
    primary key nonclustered (ID)
)^
-- end BIDEMO_TERRITORY
-- begin BIDEMO_COUNTRY
create table BIDEMO_COUNTRY (
    ID uniqueidentifier,
    VERSION integer not null,
    CREATE_TS datetime2,
    CREATED_BY varchar(50),
    UPDATE_TS datetime2,
    UPDATED_BY varchar(50),
    DELETE_TS datetime2,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    TERRITORY_ID uniqueidentifier,
    --
    primary key nonclustered (ID)
)^
-- end BIDEMO_COUNTRY
-- begin BIDEMO_CITY
create table BIDEMO_CITY (
    ID uniqueidentifier,
    VERSION integer not null,
    CREATE_TS datetime2,
    CREATED_BY varchar(50),
    UPDATE_TS datetime2,
    UPDATED_BY varchar(50),
    DELETE_TS datetime2,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    COUNTRY_ID uniqueidentifier,
    --
    primary key nonclustered (ID)
)^
-- end BIDEMO_CITY
-- begin BIDEMO_PRODUCT_LINE
create table BIDEMO_PRODUCT_LINE (
    ID uniqueidentifier,
    VERSION integer not null,
    CREATE_TS datetime2,
    CREATED_BY varchar(50),
    UPDATE_TS datetime2,
    UPDATED_BY varchar(50),
    DELETE_TS datetime2,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    --
    primary key nonclustered (ID)
)^
-- end BIDEMO_PRODUCT_LINE
