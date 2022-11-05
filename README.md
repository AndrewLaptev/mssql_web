# mssql_web

## About

Simple deployment scripts for MS SQL + Adminer for database training course

## Prerequisites

* Ubuntu >=16.04
* Docker >=20.19.12
* Docker-compose >= 1.29.2 (1.27.0)
* Python >= 3.9

## How it works

Deploy three docker containers with MS SQL Server, Adminer and Initializator. Initializator configures and fills MS SQL databases via ODBC driver.

## How to setup

* Create `.csv` file with users in `data` folder by example file `data/users.csv.example`
* Copy or rename file `.env.example` to `.env`, open and enter values to env variabels

### Structure of `.env` config file:
 - `MSSQL_SERVER` - MS SQL server name, this name of docker container with MS SQL and hostname also
 - `MSSQL_SA_USERNAME` - MS SQL admin name
 - `MSSQL_SA_PASSWORD` - MS SQL admin password
 - `MSSQL_USERNAME_TEMPLATE` - template username for MS SQL users generation (ex. `user` wil be generated like `user1`, `user2` etc., where number it is `id` column from `.csv` users file
 - `MSSQL_PASSWORD_LEN` - password length for MS SQL users from `.csv` file
 - `USERS_CSV_FILE` - filename for `.csv` users file contain in `data` folder

## Installation

```bash 
sudo docker-compose up -d
```
