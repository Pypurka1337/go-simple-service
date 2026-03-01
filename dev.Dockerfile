FROM my-go-dev-base:latest
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
CMD ["air", "-c", ".air.toml"]