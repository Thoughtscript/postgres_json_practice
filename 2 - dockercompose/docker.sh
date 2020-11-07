#!/usr/bin/env bash

# Login using your DOCKER username and password
docker login -u <username> -p <"password">

# Build and start docker-compose
docker-compose up

# Get the CONTAINER ID <aa9f01c38d04>
docker stats

# Get host/ip address for CONTAINER
docker inspect <aa9f01c38d04>

# Execute psql queries within exec terminal
## via init_json_sql.sql
## via queries.sql

# Connect with the following
## Host: localhost
## Port: 5432
## User: testuser
## Password: testpassword
## Database: postgres
### See: postico.png

# Cleanup
docker stop <aa9f01c38d04>
docker system prune --volumes

# Cleanup
docker stop <aa9f01c38d04>
docker system prune --volumes
