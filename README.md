# postgres_json_practice

[![](https://img.shields.io/badge/Postgres-13.0.0-099cec.svg)](https://www.postgresql.org)
[![](https://img.shields.io/badge/DockerHub-postgres-blue.svg)](https://hub.docker.com/_/postgres)

This repo contains `postgres 13.0` JSON interpolation and querying using `docker` as an environment wrapper.

It's two exercises wrapped into one:

1. Working with docker and postgres in a variety of ways.
1. JSON and JSONB querying.

## Instructions and Use

There are four examples demonstrating a variety of ways to spin up a dockerized postgres instance.

> See: [Basic Docker Operations](https://github.com/Thoughtscript/docker)

## Notes

1. Create a new superuser via SQL script rather than passing in a POSTGRES_USER ENV variable.
1. The POSTGRES_USER ENV variable is not used to connect in docker but through a 3rd party GUI client like pgadmin or postico.

## Resources

1. https://wkrzywiec.medium.com/database-in-a-docker-container-how-to-start-and-whats-it-about-5e3ceea77e50
1. https://www.vertabelo.com/blog/json-and-postgresql-a-powerful-combination/
1. https://kb.objectrocket.com/postgresql/postgres-insert-json-example-1270
1. https://www.postgresql.org/docs/13/datatype-json.html
1. https://hub.docker.com/_/postgres
