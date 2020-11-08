#!/usr/bin/env bash

# Login using your DOCKER username and password
docker login -u <username> -p <"password">

# Start and connect to the docker CONTAINER
## Run the CONTAINER and execute the init scripts
### POSTGRES_PASSWORD is used to connect from a third-party app
### -d will be used below via -U
docker run -e POSTGRES_PASSWORD=<testpw> -d <postgres>

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

# Cleanup
docker stop <aa9f01c38d04>
docker system prune --volumes
