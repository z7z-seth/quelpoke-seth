FROM golang:1.22
WORKDIR /app
COPY main.go main.go
COPY go.mod go.mod
COPY index.tmpl.html index.tmpl.html

RUN go build -o goseth
ENTRYPOINT ["./goseth"]

EXPOSE 80
