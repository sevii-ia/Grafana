# Конфігурація Grafana

Цей репозиторій містить конфігурації та налаштування для моніторингу за допомогою **Grafana**.

## Вимоги

- Grafana >= 9.x
- Prometheus (якщо потрібно)
- Docker (за бажанням для контейнерного налаштування)

## Структура репозиторію

```
Grafana/
│── dashboards/      # Файли JSON для панелей
│── config/          # Конфігураційні файли Grafana
│── datasources/     # Джерела даних
│── provisioning/    # Автоматичне налаштування
│── docker-compose.yml # Docker налаштування
```

## Використання

1. Клонуйте репозиторій:

   ```bash
   git clone https://github.com/sevii-ia/Grafana.git
   cd Grafana
   ```

2. Якщо використовуєте Docker, запустіть:

   ```bash
   docker-compose up -d
   ```

3. Доступ до Grafana через браузер:

   ```text
   http://localhost:3000
   ```

   За замовчуванням: логін: `admin`, пароль: `admin` (рекомендується змінити після першого входу).

4. Імпортуйте панелі з папки `dashboards/` через веб-інтерфейс Grafana.
