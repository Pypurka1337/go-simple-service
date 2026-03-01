FROM golang:1.26-alpine

WORKDIR /app

# Копируем только файлы модулей (для кэширования зависимостей)
COPY go.mod go.sum ./

# Установка зависимостей и инструментов
RUN go mod download

# Копируем остальной код
COPY . .

# Устанавливаем air (инструмент для live-reload при разработке)
RUN go install github.com/air-verse/air@latest

CMD ["air", "-c", ".air.toml"]