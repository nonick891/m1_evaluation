#!/bin/bash

## $1 -> $source example: ./migrations/*.sql
## $2 -> $destination example: /docker-entrypoint-initdb.d
## $3 -> $image example: m1_evaluation

for file in ./migrations/*.sql; do docker cp $file m1_evaluation:/docker-entrypoint-initdb.d; done
docker exec -u 0 -it m1_evaluation chown -R root:root /docker-entrypoint-initdb.d/
for file in ./migrations/*.sql; do docker exec -i m1_evaluation mysql -u root -proot m1_evaluation < ./migrations/$(basename ${file}); done