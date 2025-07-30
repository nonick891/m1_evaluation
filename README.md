
# Docker run

### Build image
    docker build -t m1_mysql .

### Run mysql docker
    docker run --name m1_evaluation -e MYSQL_ROOT_PASSWORD=root -p 3307:3306 -d m1_mysql

### Access using CLI
    docker exec m1_evaluation mysql -u root -proot -e "SELECT * FROM m1_evaluation.country_currency;"

### Copy updated files
    docker cp ./scripts/ m1_evaluation:/docker-entrypoint-initdb.d/

# Docker compose
    docker compose up