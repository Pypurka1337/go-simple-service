FROM golang:1.26-alpine

WORKDIR /app

# Установка зависимостей и инструментов
RUN go mod download

# Копируем остальной код
COPY . .

RUN go install github.com/air-verse/air@latest

CMD ["air", "-c", ".air.toml"]