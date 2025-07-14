# Laravel Docker Setup

Personal Docker setup for Laravel development (and to help my bad memory).

## Create Laravel project:
```bash
docker compose up -d
```

```bash
docker compose exec php bash
```

```bash
composer create-project laravel/laravel .
```

Configure the laravel .env file

```bash
php artisan key:generate
php artisan migrate # If a DB is in use
```

Endpoints:
- Laravel: http://localhost:8080
- pgAdmin: http://localhost:5050
