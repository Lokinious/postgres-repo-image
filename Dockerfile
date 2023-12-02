# Use the official PostgreSQL image as the base image
FROM postgres:latest

# Environment variables to set the PostgreSQL user and password
ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=admin
ENV POSTGRES_DB=myfirstschema

# Copy SQL script to initialize the database schema
COPY init.sql /docker-entrypoint-initdb.d/

# Expose the default PostgreSQL port (5432)
EXPOSE 5432
