# syntax=docker/dockerfile:1

# Use the base image mysql:8.4
FROM mysql:8.4

# Set environtent variables
ENV MYSQL_DATABASE=m1_evaluation

# Copy custom scripts or configuration files from your host to the container
COPY ./scripts/ /docker-entrypoint-initdb.d/