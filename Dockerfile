# syntax=docker/dockerfile:1

# Use the base image mysql:8.4
FROM mysql:8.4

# Set environtent variables
ENV MYSQL_DATABASE=m1_evaluation

# Copy custom migrations or configuration files from your host to the container
COPY migrations/ /docker-entrypoint-initdb.d/