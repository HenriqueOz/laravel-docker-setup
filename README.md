# Laravel Docker Setup

Personal Docker setup for Laravel development (and to help my bad memory).

## Create Laravel project:
```bash
docker compose exec php bash
```
Inside php container
```bash
composer create-project laravel/laravel .
php artisan key:generate
php artisan migrate
```

Endpoints:
- Laravel: http://localhost:8080
- pgAdmin: http://localhost:5050
