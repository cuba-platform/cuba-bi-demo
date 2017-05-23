-- begin BIDEMO_CUSTOMER
create table BIDEMO_CUSTOMER (
    ID varchar2(32),
    VERSION number(10) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar2(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar2(50),
    DELETE_TS timestamp,
    DELETED_BY varchar2(50),
    --
    NAME varchar2(100) not null,
    EMAIL varchar2(100),
    CITY_ID varchar2(32),
    --
    primary key (ID)
)^
-- end BIDEMO_CUSTOMER
-- begin BIDEMO_ORDER
create table BIDEMO_ORDER (
    ID varchar2(32),
    VERSION number(10) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar2(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar2(50),
    DELETE_TS timestamp,
    DELETED_BY varchar2(50),
    --
    DATE_ timestamp not null,
    AMOUNT number(19, 2),
    CUSTOMER_ID varchar2(32),
    --
    primary key (ID)
)^
-- end BIDEMO_ORDER
-- begin BIDEMO_PRODUCT
create table BIDEMO_PRODUCT (
    ID varchar2(32),
    VERSION number(10) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar2(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar2(50),
    DELETE_TS timestamp,
    DELETED_BY varchar2(50),
    --
    NAME varchar2(50) not null,
    PRICE number(19, 2) not null,
    PRODUCT_LINE_ID varchar2(32),
    --
    primary key (ID)
)^
-- end BIDEMO_PRODUCT
-- begin BIDEMO_ORDER_LINE
create table BIDEMO_ORDER_LINE (
    ID varchar2(32),
    VERSION number(10) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar2(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar2(50),
    DELETE_TS timestamp,
    DELETED_BY varchar2(50),
    --
    PRODUCT_ID varchar2(32) not null,
    QUANTITY number(19, 3) not null,
    ORDER_ID varchar2(32),
    --
    primary key (ID)
)^
-- end BIDEMO_ORDER_LINE
-- begin BIDEMO_TERRITORY
create table BIDEMO_TERRITORY (
    ID varchar2(32),
    VERSION number(10) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar2(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar2(50),
    DELETE_TS timestamp,
    DELETED_BY varchar2(50),
    --
    NAME varchar2(255),
    --
    primary key (ID)
)^
-- end BIDEMO_TERRITORY
-- begin BIDEMO_COUNTRY
create table BIDEMO_COUNTRY (
    ID varchar2(32),
    VERSION number(10) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar2(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar2(50),
    DELETE_TS timestamp,
    DELETED_BY varchar2(50),
    --
    NAME varchar2(255),
    TERRITORY_ID varchar2(32),
    --
    primary key (ID)
)^
-- end BIDEMO_COUNTRY
-- begin BIDEMO_CITY
create table BIDEMO_CITY (
    ID varchar2(32),
    VERSION number(10) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar2(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar2(50),
    DELETE_TS timestamp,
    DELETED_BY varchar2(50),
    --
    NAME varchar2(255),
    COUNTRY_ID varchar2(32),
    --
    primary key (ID)
)^
-- end BIDEMO_CITY
-- begin BIDEMO_PRODUCT_LINE
create table BIDEMO_PRODUCT_LINE (
    ID varchar2(32),
    VERSION number(10) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar2(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar2(50),
    DELETE_TS timestamp,
    DELETED_BY varchar2(50),
    --
    NAME varchar2(255),
    --
    primary key (ID)
)^
-- end BIDEMO_PRODUCT_LINE
