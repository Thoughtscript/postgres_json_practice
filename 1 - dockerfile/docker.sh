#!/usr/bin/env bash

# Login using your DOCKER username and password
docker login -u <username> -p <"password">

# Build from dockerfile
## Use this over `docker build - < Dockerfile`
## Note that the dockerfile copies in ANY files in this directory
docker build .
## Get the CONTAINER ID <aa9f01c38d04>from the end of this

# Start and connect to the docker CONTAINER
## Run the CONTAINER and execute the init scripts
### POSTGRES_PASSWORD is used to connect from a third-party app
### -d will be used below via -U
### Note that the -p flag must be supplied to expose and map the internal port
docker run -e POSTGRES_PASSWORD=<testpw> -p 5432:5432 -d <aa9f01c38d04>

# Get the CONTAINER ID <aa9f01c38d04>
docker stats

# Get host/ip address for CONTAINER
docker inspect <aa9f01c38d04>

# Connect to the CONTAINER
## -U designates the database
docker exec -it <aa9f01c38d04> psql -U <postgres>

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
