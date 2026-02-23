FROM golang:1.26-alpine

WORKDIR /app

# Копируем модули и загружаем зависимости
#COPY go.mod go.sum ./
#RUN go mod download

# Копируем остальной код
COPY . .

RUN go install github.com/air-verse/air@latest

CMD ["air", "-c", ".air.toml"]