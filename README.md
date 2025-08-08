
# Docker run

### Build image
    docker build -t m1_mysql .

### Run docker
    docker run --name m1_evaluation -e MYSQL_ROOT_PASSWORD=root -p 3307:3306 -d m1_mysql

### Test access
    docker exec m1_evaluation mysql -u root -proot -e "SELECT * FROM m1_evaluation.country_currencies;"

### Copy folder
    docker cp ./scripts/ m1_evaluation:/docker-entrypoint-initdb.d/

### Copy files
    for file in ./scripts/*.sql; do docker cp $file m1_evaluation:/docker-entrypoint-initdb.d; done

### Change ownership after cp
    docker exec -u 0 -it m1_evaluation chown -R root:root /docker-entrypoint-initdb.d/

### Execute queries
    for file in ./scripts/*.sql; do docker exec -i m1_evaluation mysql -u root -proot m1_evaluation < ./scripts/$(basename ${file}); done

### Migrate fresh database
Combination of `Copy files`, `Change ownership after cp`, `Execute queries`.

    ./bash_commands/migrate.sh

# Docker compose
    docker compose up