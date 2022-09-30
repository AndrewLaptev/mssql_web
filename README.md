# mssql_web

## About

Simple deployment scripts for MS SQL + Adminer for database training course

## Prerequisites

* Ubuntu 16.04 and higher
* Docker and docker-compose
* Python3

## How it works

Deploy two docker containers with MS SQL Server and Adminer, after script `query_generator.py` create `query.sql` file from files in `data` directory. This file may be import in MS SQL Server via Adminer function `Import` or just copy/paste content in SQL command field

## How to setup

* Copy or rename file `.env.example` to `.env`, open and input MS SQL Server admin password
* Copy or rename file `data/users_passwords.json.example` to `data/users_passwords.json`, open and input usernames and passwords

## Installation

```bash 
bash install.sh
```
