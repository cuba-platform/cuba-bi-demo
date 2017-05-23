-- begin BIDEMO_CUSTOMER
create table BIDEMO_CUSTOMER (
    ID varchar(32),
    VERSION integer not null,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    --
    NAME varchar(100) not null,
    EMAIL varchar(100),
    CITY_ID varchar(32),
    --
    primary key (ID)
)^
-- end BIDEMO_CUSTOMER
-- begin BIDEMO_ORDER
create table BIDEMO_ORDER (
    ID varchar(32),
    VERSION integer not null,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    --
    DATE_ datetime(3) not null,
    AMOUNT decimal(19, 2),
    CUSTOMER_ID varchar(32),
    --
    primary key (ID)
)^
-- end BIDEMO_ORDER
-- begin BIDEMO_PRODUCT
create table BIDEMO_PRODUCT (
    ID varchar(32),
    VERSION integer not null,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    --
    NAME varchar(50) not null,
    PRICE decimal(19, 2) not null,
    PRODUCT_LINE_ID varchar(32),
    --
    primary key (ID)
)^
-- end BIDEMO_PRODUCT
-- begin BIDEMO_ORDER_LINE
create table BIDEMO_ORDER_LINE (
    ID varchar(32),
    VERSION integer not null,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    --
    PRODUCT_ID varchar(32) not null,
    QUANTITY decimal(19, 3) not null,
    ORDER_ID varchar(32),
    --
    primary key (ID)
)^
-- end BIDEMO_ORDER_LINE
-- begin BIDEMO_TERRITORY
create table BIDEMO_TERRITORY (
    ID varchar(32),
    VERSION integer not null,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    --
    primary key (ID)
)^
-- end BIDEMO_TERRITORY
-- begin BIDEMO_COUNTRY
create table BIDEMO_COUNTRY (
    ID varchar(32),
    VERSION integer not null,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    TERRITORY_ID varchar(32),
    --
    primary key (ID)
)^
-- end BIDEMO_COUNTRY
-- begin BIDEMO_CITY
create table BIDEMO_CITY (
    ID varchar(32),
    VERSION integer not null,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    COUNTRY_ID varchar(32),
    --
    primary key (ID)
)^
-- end BIDEMO_CITY
-- begin BIDEMO_PRODUCT_LINE
create table BIDEMO_PRODUCT_LINE (
    ID varchar(32),
    VERSION integer not null,
    CREATE_TS datetime(3),
    CREATED_BY varchar(50),
    UPDATE_TS datetime(3),
    UPDATED_BY varchar(50),
    DELETE_TS datetime(3),
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    --
    primary key (ID)
)^
-- end BIDEMO_PRODUCT_LINE
