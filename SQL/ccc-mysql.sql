-- Create the core database
CREATE DATABASE IF NOT EXISTS CoreDB;

-- Switch to the core database
USE CoreDB;

-- Create a table for Infractions
CREATE TABLE IF NOT EXISTS Infractions(
    id        varchar(36) not null,
    reporter  varchar(36) not null,
    timestamp timestamp not null default current_timestamp,
    url       varchar(1024) not null,
    type      varchar(32) not null,
    content   json
);