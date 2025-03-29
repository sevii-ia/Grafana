# Grafana Setup & Configuration

Цей репозиторій містить конфігурацію та налаштування для Grafana.

## Вимоги

Перед початком роботи переконайтеся, що у вас встановлено:
- Docker
- Docker Compose
- Grafana (якщо ви не використовуєте Docker)

## Інсталяція

1. Клонуйте цей репозиторій:
   ```sh
   git clone https://github.com/sevii-ia/Grafana.git
   cd Grafana
   ```
2. Запустіть Grafana за допомогою Docker Compose:
   ```sh
   docker-compose up -d
   ```
3. Grafana буде доступна за адресою `http://localhost:3000`.

## Налаштування

- Дані про підключення до бази даних зберігаються у файлі `grafana.ini` або у змінних середовища.
- Dashboards знаходяться в папці `dashboards/`.
- Додаткові джерела даних можна налаштувати через `provisioning/datasources/`.

## Використання

1. Увійдіть у Grafana за замовчуванням (логін: `admin`, пароль: `admin`).
2. Налаштуйте підключення до бази даних.
3. Імпортуйте або створіть нові дашборди.
