# mssql_web

## About

Simple deployment scripts for MS SQL + Adminer for database training course

## Prerequisites

* Ubuntu >=16.04
* Docker >=20.19.12
* Docker-compose >= 1.29.2 (1.27.0)
* Python >= 3.9

## How it works

Deploy three docker containers with MS SQL Server, Adminer and Initializator. Initializator configures and fills MS SQL database via run `initializator.py` via ODBC driver.

## How to setup

* Copy or rename file `.env.example` to `.env`, open and input MS SQL Server sa password
* Copy or rename file `data/users_passwords.json.example` to `data/users_passwords.json`, open and input usernames and passwords

## Installation

```bash 
sudo docker-compose up -d
```
