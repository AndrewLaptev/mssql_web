#!/bin/bash

sudo docker-compose up -d --build && python3 query_generator.py