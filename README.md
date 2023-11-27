# Docker Compose For Wordpress

This is the demo docker-compose for run wordpress - mysql database in local

<img src="https://img.shields.io/badge/Wordpress-21759B?style=for-the-badge&logo=wordpress&logoColor=white" /> <img src="https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white" />

## Installation

1. Install docker
2. Install docker-compose
3. Run docker compose file

```bash
docker-compose up -d
```

## Usage

With wordpress config, let change enviroment variables same the config for mysql service

Wordpress
```yaml
    environment:
      WORDPRESS_DB_HOST: mysql:3306
      WORDPRESS_DB_USER: wordpress
      WORDPRESS_DB_PASSWORD: wordpress
      WORDPRESS_DB_NAME: wordpress
```

MySQL
```yaml
    environment:
      MYSQL_DATABASE: wordpress
      MYSQL_USER: wordpress
      MYSQL_PASSWORD: wordpress
```

## You can mount source to host volume

Wordpress
```yaml
       volumes:
      - ./wordpress:/var/www/html
```

MySQL
```yaml
      volumes:
      - mysql_data:/var/lib/mysql
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
