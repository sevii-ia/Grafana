# Grafana

Цей репозиторій містить конфігурації та налаштування для моніторингу за допомогою Grafana.

## Вимоги

- Grafana >= 9.x
- Prometheus (за потреби)
- Docker (опціонально для контейнеризованого запуску)

## Структура репозиторію

```
Grafana/
│── dashboards/      # JSON-файли дашбордів
│── config/          # Файли конфігурації Grafana
│── datasources/     # Джерела даних
│── provisioning/    # Автоматичне налаштування
│── docker-compose.yml # Запуск через Docker
```

## Використання

1. Клонувати репозиторій:
   ```sh
   git clone https://github.com/sevii-ia/Grafana.git
   cd Grafana
   ```

2. Якщо використовується Docker, запустити:
   ```sh
   docker-compose up -d
   ```

3. Увійти в Grafana через браузер за адресою:
   ```
   http://localhost:3000
   ```
   За замовчуванням логін: `admin`, пароль: `admin` (рекомендується змінити після першого входу).

4. Імпортувати дашборди з папки `dashboards/` через веб-інтерфейс Grafana.
