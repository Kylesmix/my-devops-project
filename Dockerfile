# Базовый образ с bash
FROM ubuntu:24.04

# Обновим пакеты и установим bash (на всякий случай)
RUN apt-get update && apt-get install -y bash

# Копируем скрипты внутрь контейнера
COPY app.sh /app/app.sh
COPY test.sh /app/test.sh

# Делаем исполняемыми
RUN chmod +x /app/*.sh

# Указываем рабочую директорию
WORKDIR /app

# Что выполняется при запуске контейнера
CMD ["./app.sh"]
